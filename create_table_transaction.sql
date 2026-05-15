CREATE EXTENSION IF NOT EXISTS vector;

CREATE TABLE IF NOT EXISTS transactions (
    id               SERIAL          PRIMARY KEY,
    sender           VARCHAR(100)    NOT NULL,
    receiver         VARCHAR(100)    NOT NULL,
    amount           NUMERIC(10,2)   NOT NULL,
    timestamp        TIMESTAMP       NOT NULL,
    device_sender    VARCHAR(100),
    device_receiver  VARCHAR(100),
    title            TEXT,
    title_embedding  vector(384)     -- all-MiniLM-L6-v2 = 384 wymiary
);