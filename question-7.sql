-- Find tracks (id, name, and composer) that have never been purchased (that is, they aren't part of a line item in an invoice).
SELECT DISTINCT tracks.TrackId, tracks.Name, tracks.Composer FROM tracks LEFT OUTER JOIN invoice_items on tracks.TrackId = invoice_items.TrackId WHERE invoice_items.TrackId IS NULL;