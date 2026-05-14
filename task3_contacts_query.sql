SELECT 
    CONCAT(c.first_name, ' ', c.last_name) AS full_name,
    c.email AS email_address,
    n.note_text AS most_recent_note
FROM contacts c
JOIN notes n ON c.id = n.contact_id
WHERE c.first_name LIKE 'A%'
  AND n.created_at >= CURRENT_DATE - INTERVAL '7 days'
  AND n.created_at = (
      SELECT MAX(n2.created_at)
      FROM notes n2
      WHERE n2.contact_id = c.id
  );
