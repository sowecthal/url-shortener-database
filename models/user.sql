CREATE TYPE role_type AS ENUM (
    'USER',
    'ADMIN'
);

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    login VARCHAR(32) NOT NULL UNIQUE,
    pass_hash VARCHAR(32) NOT NULL,
    role role_type DEFAULT 'USER',
    reg_date TIMESTAMPTZ DEFAULT NOW()
);