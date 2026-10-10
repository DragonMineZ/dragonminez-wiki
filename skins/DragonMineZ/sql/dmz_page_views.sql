CREATE TABLE /*_*/dmz_page_views (
  dpv_page INTEGER NOT NULL PRIMARY KEY,
  dpv_views INTEGER NOT NULL DEFAULT 0
) /*$wgDBTableOptions*/;

CREATE INDEX /*i*/dpv_views ON /*_*/dmz_page_views (dpv_views);

