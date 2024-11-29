CREATE TABLE rock_stars (
    RockStarId INTEGER PRIMARY KEY AUTOINCREMENT,
    StageName VARCHAR(50) NOT NULL UNIQUE CHECK(length(StageName) > 2 AND length(StageName) < 51), 
    BandName TEXT,
    YearsActive INT CHECK(YearsActive > 0 AND YearsActive < 71) DEFAULT 1,
    GuitarBrandPreference varchar(10) CHECK(GuitarBrandPreference in (
        'Fender', 'Gibson', 'Ibanez', 'PRS',
        'Gretsch', 'ESP', 'Jackson', 'Other')),
    MonthlyRoyalties DECIMAL(8, 2) CHECK(MonthlyRoyalties >=0) DEFAULT 0.0,
    CareerStartDate DATE DEFAULT 'now',
    ArtistId INT NOT NULL,
    GenreId INT NOT NULL,
    FOREIGN KEY (ArtistId) 
        REFERENCES artists (ArtistId),
    FOREIGN KEY (GenreId) 
        REFERENCES genres (GenreId)
);