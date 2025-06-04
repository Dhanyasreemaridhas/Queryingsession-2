SELECT
  gender,
  count(*) AS total_users
FROM
  user
WHERE
  gender IN('M', 'F')
  AND premium_membership = 1
GROUP BY
  gender;
SELECT
  count(premium_membership) AS premium_users_count
FROM
  user
WHERE
  premium_membership = 1;
