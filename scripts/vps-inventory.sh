#!/usr/bin/env bash
set -u

section() { printf '\n===== %s\n' "$1"; }
have() { command -v "$1" >/dev/null 2>&1; }

section "System"
. /etc/os-release 2>/dev/null && echo "$PRETTY_NAME"
uname -r
nproc
uptime

section "Memory"
free -m
swapon --show 2>/dev/null || true

section "Disk"
df -h -x tmpfs -x devtmpfs -x overlay 2>/dev/null

section "Top memory processes"
ps -eo pid,user,rss,comm --sort=-rss | head -n 15 | awk 'NR==1 {print; next} {printf "%-7s %-12s %6d MB  %s\n", $1, $2, $3/1024, $4}'

section "Listening TCP ports"
if have ss; then ss -tlnp 2>/dev/null | awk '{print $4, $6}' | sort -u; fi

section "Docker"
if have docker; then
	docker version --format 'server {{.Server.Version}}' 2>/dev/null || echo "docker installed but not reachable (run with sudo?)"
	docker compose version 2>/dev/null || echo "docker compose plugin missing"
	docker ps --format 'table {{.Names}}\t{{.Image}}\t{{.Status}}\t{{.Ports}}' 2>/dev/null
	docker stats --no-stream --format 'table {{.Name}}\t{{.MemUsage}}\t{{.CPUPerc}}' 2>/dev/null
else
	echo "docker not installed"
fi

section "Reverse proxies"
for svc in nginx caddy traefik apache2 httpd; do
	if systemctl list-unit-files 2>/dev/null | grep -q "^${svc}\.service"; then
		echo "$svc: $(systemctl is-active "$svc" 2>/dev/null)"
	fi
done

section "cloudflared"
if have cloudflared || systemctl list-unit-files 2>/dev/null | grep -q '^cloudflared'; then
	systemctl list-units --all 'cloudflared*' --no-legend 2>/dev/null
	unit_exec="$(systemctl cat cloudflared 2>/dev/null | grep -E '^ExecStart=' | head -n 1)"
	if echo "$unit_exec" | grep -q -- '--token'; then
		echo "mode: remotely managed (token). Public hostnames are edited in the Cloudflare Zero Trust dashboard."
	else
		echo "mode: locally managed (config file)"
	fi
	for cfg in /etc/cloudflared/config.yml /etc/cloudflared/config.yaml "$HOME/.cloudflared/config.yml"; do
		if [ -r "$cfg" ]; then
			echo "config: $cfg"
			grep -E '^\s*-?\s*(hostname|service):' "$cfg" | sed 's/^/  /'
		fi
	done
else
	echo "cloudflared not found"
fi

section "PostgreSQL"
systemctl is-active postgresql 2>/dev/null || echo "postgresql service not found"

section "Bot and web units"
systemctl list-units --all --no-legend 2>/dev/null | grep -Ei 'dragonminez|dmz|bulma' || echo "none matched"

section "Firewall"
if have ufw; then ufw status 2>/dev/null | head -n 20; fi

echo
echo "Done. Paste this output in the chat; it contains no secrets."
