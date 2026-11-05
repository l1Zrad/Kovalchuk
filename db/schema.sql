CREATE TABLE IF NOT EXISTS readings (
    n INTEGER,
    t_s REAL,
    sensor TEXT,
    value REAL
);

CREATE TABLE IF NOT EXISTS events (
    n INTEGER,
    t_s REAL,
    type TEXT,
    message TEXT
);