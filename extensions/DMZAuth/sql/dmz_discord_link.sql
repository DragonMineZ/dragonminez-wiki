CREATE TABLE /*_*/dmz_discord_link (
  dl_user INTEGER NOT NULL PRIMARY KEY,
  dl_clerk VARCHAR(64) NOT NULL,
  dl_discord VARCHAR(32) NOT NULL
);

CREATE UNIQUE INDEX /*i*/dl_clerk ON /*_*/dmz_discord_link (dl_clerk);
