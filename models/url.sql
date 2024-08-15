CREATE TABLE url (
    id SERIAL PRIMARY KEY,
    original_url TEXT NOT NULL,
    shortened_value TEXT NOT NULL UNIQUE,
    clicks INTEGER DEFAULT 0,
    reg_date TIMESTAMPTZ DEFAULT NOW(),
    user_id INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

CREATE INDEX ON url(shortened_value);