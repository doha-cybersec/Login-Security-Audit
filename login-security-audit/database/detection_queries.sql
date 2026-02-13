SELECT username, COUNT(*) AS failed_attempts
FROM login_logs
WHERE success = 0
GROUP BY username
HAVING COUNT(*) >= 3;

SELECT ip_address, COUNT(DISTINCT username) AS users_targeted
FROM login_logs
GROUP BY ip_address
HAVING COUNT(DISTINCT username) > 1;