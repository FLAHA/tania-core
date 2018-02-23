CREATE TABLE IF NOT EXISTS "FARM_EVENT" (
    "ID" INTEGER PRIMARY KEY,
    "FARM_UID" BLOB,
    "VERSION" INTEGER,
    "EVENTS" JSON
);

CREATE INDEX IF NOT EXISTS "FARM_EVENT_FARM_UID_INDEX" ON "FARM_EVENT" ("FARM_UID");

CREATE TABLE IF NOT EXISTS "FARM_READ" (
    "UID" BLOB PRIMARY KEY,
    "NAME" TEXT,
    "LATITUDE" TEXT,
    "LONGITUDE" TEXT,
    "TYPE" TEXT,
    "COUNTRY_CODE" TEXT,
    "CITY_CODE" TEXT,
    "IS_ACTIVE" INTEGER,
    "CREATED_DATE" TEXT
);

CREATE UNIQUE INDEX IF NOT EXISTS "FARM_READ_UID_UNIQUE_INDEX" ON "FARM_READ" ("UID")