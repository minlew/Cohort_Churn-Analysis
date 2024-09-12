WITH
  CTE1 AS(
  SELECT
    DATE_TRUNC(subscription_start, WEEK) AS Week_Joined,
    DATE_DIFF(DATE_TRUNC(subscription_end, WEEK),DATE_TRUNC(subscription_start, WEEK), WEEK) AS Weeks_to_Cancel,
    CASE
      WHEN subscription_end IS NOT NULL THEN 1
      ELSE 0
  END
    AS Churned,
    COUNT(user_pseudo_id) AS Customers
  FROM
    `turing_data_analytics.subscriptions`
  GROUP BY
    ALL
  ORDER BY
    1,
    2),

  CTE2 AS(
  SELECT
    Week_Joined,
    Weeks_to_Cancel,
    SUM(CASE
        WHEN Churned = 1 THEN Customers
        ELSE 0
    END
      ) OVER (PARTITION BY Week_Joined ORDER BY Weeks_to_Cancel) AS Churns,
    SUM(Customers) OVER (PARTITION BY Week_Joined) AS Subs_this_Week
  FROM
    CTE1
  ORDER BY
    1,
    2)


SELECT
  CTE2.Week_Joined,
  Subs_this_Week
FROM
  CTE2
WHERE
  Weeks_to_Cancel >= 0
  AND Weeks_to_Cancel <= 6
GROUP BY ALL
ORDER BY 1