UPDATE Product
SET name = COALESCE($2, name),
    origin = COALESCE($3, origin),
    hometown = COALESCE($4, hometown),
    imageUrl = COALESCE($5, imageUrl)
WHERE id = $1
RETURNING *;
/*If you want to return the updated value*/
