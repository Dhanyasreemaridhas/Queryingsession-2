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
  video_id,
  name,
  duration_in_secs,
  no_of_views
FROM
  video
WHERE
  channel_id = 353
  AND no_of_views > 50000
ORDER BY
  no_of_views DESC,
  name ASC;
SELECT
  name,
  channel_id,
  no_of_views
FROM
  video
ORDER BY
  no_of_views DESC,
  published_datetime DESC
LIMIT
  10;
SELECT
  DISTINCT(name),
  channel_id,
  no_of_views,
  published_datetime
FROM
  video
WHERE
  name LIKE '%trailer%'
  AND no_of_views > 100000
ORDER BY
  no_of_views DESC,
  published_datetime DESC;
SELECT
  video_id,
  name,
  duration_in_secs,
  no_of_views
FROM
  video
WHERE
  cast(strftime("%Y", published_datetime) AS integer) = 2018
ORDER BY
  published_datetime DESC,
  name ASC;
SELECT
  DISTINCT(name),
  published_datetime,
  no_of_views
FROM
  video
WHERE
  name LIKE '%esport%'
  AND cast(strftime('%Y', published_datetime) AS integer) BETWEEN 2018
  AND 2020
  AND no_of_views > 100000
ORDER BY
  no_of_views DESC,
  published_datetime DESC;
SELECT
  max(no_of_views) AS highest_number_of_views,
  min(no_of_views) AS least_number_of_views
FROM
  video;
SELECT
  avg(no_of_views) AS avg_views
FROM
  video
WHERE
  channel_id = 373;
