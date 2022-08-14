BEGIN;

CREATE SCHEMA IF NOT EXISTS dsp AUTHORIZATION test_dev;

GRANT USAGE ON SCHEMA dsp TO test_dev;
GRANT CREATE ON SCHEMA dsp TO test_dev;
GRANT ALL ON ALL TABLES IN SCHEMA dsp TO test_dev;

CREATE SCHEMA IF NOT EXISTS ssp AUTHORIZATION test_dev;

GRANT USAGE ON SCHEMA ssp TO test_dev;
GRANT CREATE ON SCHEMA ssp TO test_dev;
GRANT ALL ON ALL TABLES IN SCHEMA ssp TO test_dev;

SET search_path to dsp, ssp, public;

ALTER ROLE test_dev SET search_path TO dsp;
ALTER ROLE test_dev SET search_path TO ssp;

COMMIT;
