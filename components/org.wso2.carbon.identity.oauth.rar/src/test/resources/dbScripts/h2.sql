CREATE TABLE IF NOT EXISTS IDN_OAUTH2_AUTHORIZATION_DETAILS_TYPES(
    ID INTEGER NOT NULL AUTO_INCREMENT,
    TYPE VARCHAR(255) NOT NULL,
    CURSOR_KEY INTEGER DEFAULT 1,
    NAME VARCHAR(255),
    DESCRIPTION VARCHAR (255),
    JSON_SCHEMA JSON NOT NULL,
    TENANT_ID INTEGER DEFAULT -1
);

CREATE TABLE IF NOT EXISTS IDN_OAUTH2_USER_CONSENTED_AUTHORIZATION_DETAILS (
    ID INTEGER NOT NULL AUTO_INCREMENT,
    CONSENT_ID VARCHAR(255) NOT NULL,
    TYPE_ID INTEGER NOT NULL,
    AUTHORIZATION_DETAILS JSON NOT NULL,
    CONSENT BOOLEAN NOT NULL DEFAULT 1,
    TENANT_ID INTEGER NOT NULL DEFAULT -1
);

CREATE TABLE IF NOT EXISTS IDN_OAUTH2_ACCESS_TOKEN_AUTHORIZATION_DETAILS (
    ID INTEGER NOT NULL AUTO_INCREMENT,
    TYPE_ID INTEGER NOT NULL,
    AUTHORIZATION_DETAILS JSON NOT NULL,
    TOKEN_ID VARCHAR (255),
    TENANT_ID INTEGER DEFAULT -1
);

INSERT INTO IDN_OAUTH2_AUTHORIZATION_DETAILS_TYPES (TYPE, NAME, DESCRIPTION, JSON_SCHEMA, TENANT_ID)
VALUES ('test_type_v1', 'Test Type', 'Test Type V1', '{}', 1234);
