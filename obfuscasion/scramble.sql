TRUNCATE TABLE user_H$;
EXEC dbms_random.seed(79693);
UPDATE user user_one SET last_name =
(SELECT MAX(last_name) KEEP (DENSE_RANK FIRST ORDER BY dbms_random.value)
FROM user user_two
WHERE user_two.id <> user_one.id);

UPDATE user user_one SET first_name =
(SELECT MAX(first_name) KEEP (DENSE_RANK FIRST ORDER BY dbms_random.value)
FROM user user_two
WHERE user_two.id <> user_one.id AND user_one.first_name <> user_two.first_name);

UPDATE user user_one SET birth_date =
(SELECT MAX(birth_date) KEEP (DENSE_RANK FIRST ORDER BY dbms_random.value)
FROM user user_two
WHERE user_two.id <> user_one.id AND user_one.birth_date <> user_two.birth_date);

UPDATE user user_one SET phone =
(SELECT MAX(phone) KEEP (DENSE_RANK FIRST ORDER BY dbms_random.value)
FROM user user_two
WHERE user_two.id <> user_one.id AND user_one.phone <> user_two.phone);


MERGE INTO user user_one
  USING (
    WITH
         helper ( id, rn, rand_rn ) AS (
           SELECT id,
                  row_number() OVER (ORDER BY id),
                  row_number() OVER (ORDER BY dbms_random.value())
           FROM   user
         )
    SELECT ot.address1, ot.longitude, ot.latitude, h2.id
    FROM  user ot INNER JOIN helper h1 ON ot.id = h1.id
    INNER JOIN helper h2 ON h1.rand_rn = h2.rn) user_two
ON (user_one.id = user_two.id)
WHEN MATCHED THEN UPDATE SET user_one.address1 = user_two.address1, user_one.longitude = user_two.longitude, user_one.latitude = user_two.latitude;
COMMIT;
