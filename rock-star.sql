CREATE TABLE rock_stars (
    RockStarId INTEGER PRIMARY KEY AUTOINCREMENT,
    StageName VARCHAR(50) NOT NULL UNIQUE CHECK(length(StageName) > 2 AND length(StageName) < 51), 
    BandName TEXT,
    YearsActive INTEGER CHECK(YearsActive > 0 AND YearsActive < 71) DEFAULT 1,
    GuitarBrandPreference varchar(50) CHECK(GuitarBrandPreference in (
        'Fender', 'Gibson', 'Ibanez', 'PRS',
        'Gretsch', 'ESP', 'Jackson', 'Other')),
    MonthlyRoyalties DECIMAL(8, 2) CHECK(MonthlyRoyalties >=0) DEFAULT 0.0,
    CareerStartDate DATE DEFAULT 'now',
    ArtistId INTEGER NOT NULL,
    GenreId INTEGER NOT NULL,
    FOREIGN KEY (ArtistId) 
        REFERENCES artists (ArtistId),
    FOREIGN KEY (GenreId) 
        REFERENCES genres (GenreId)
);