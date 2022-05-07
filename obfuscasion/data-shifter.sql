TRUNCATE TABLE duane.user_H$;
EXEC dbms_random.seed(79693);
UPDATE duane.user user_one SET last_name =
(SELECT MAX(last_name) KEEP (DENSE_RANK FIRST ORDER BY dbms_random.value)
FROM duane.user user_two
WHERE user_two.id <> user_one.id);

UPDATE duane.user user_one SET first_name =
(SELECT MAX(first_name) KEEP (DENSE_RANK FIRST ORDER BY dbms_random.value)
FROM duane.user user_two
WHERE user_two.id <> user_one.id AND user_one.first_name <> user_two.first_name);

UPDATE duane.user user_one SET birth_date =
(SELECT MAX(birth_date) KEEP (DENSE_RANK FIRST ORDER BY dbms_random.value)
FROM duane.user user_two
WHERE user_two.id <> user_one.id AND user_one.birth_date <> user_two.birth_date);

UPDATE duane.user user_one SET phone =
(SELECT MAX(phone) KEEP (DENSE_RANK FIRST ORDER BY dbms_random.value)
FROM duane.user user_two
WHERE user_two.id <> user_one.id AND user_one.phone <> user_two.phone);
COMMIT;
