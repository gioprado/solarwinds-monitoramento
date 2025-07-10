# Alertas nodes alarmando + de 1 dia

  

SELECT
COUNT(*) AS TotalCount
FROM
(
SELECT
ac.category,
CONCAT(
DayDiff(ao.LastTriggeredDateTime, GETUTCDATE()), ' Days ',
HourDiff(ao.LastTriggeredDateTime, GETUTCDATE()) % 24, ' Hours ',
MinuteDiff(ao.LastTriggeredDateTime, GETUTCDATE()) % 60, ' Minutes'
) AS Duration,
ADDDATE('HOUR', -3, aa.triggereddatetime) AS [Alert Date],
ADDDATE('HOUR', -3, aa.AcknowledgedDateTime) AS [AcknowledgedDateTime]
FROM
Orion.AlertActive aa
INNER JOIN Orion.AlertObjects ao ON ao.alertobjectid = aa.alertobjectid
INNER JOIN Orion.Nodes n ON n.nodeid = ao.relatednodeid
INNER JOIN Orion.AlertConfigurations ac ON ao.alertid = ac.alertid
WHERE DayDiff(ao.LastTriggeredDateTime, GETUTCDATE()) > 1
) AS FilteredData;
