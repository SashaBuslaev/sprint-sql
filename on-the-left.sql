SELECT ar.ArtistId, ar.Name FROM artists ar
LEFT JOIN albums al ON ar.ArtistId = al.ArtistId
WHERE al.ArtistId is null;