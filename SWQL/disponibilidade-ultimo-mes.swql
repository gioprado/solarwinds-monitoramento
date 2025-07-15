#Disponibilidade ultimo mes

SELECT ROUND(SUM(Availability*Weight)/SUM(Weight),2) as disponibilidade, N.Caption, Ip_Address, '/Orion/NetPerfMon/NodeDetails.aspx?NetObject=N:' + TOSTRING(N.NodeID)  as URL
FROM Orion.ResponseTime R
INNER JOIN Orion.Nodes N on R.NodeID = N.NodeID
WHERE ObservationTimestamp >= DATETRUNC('month', AddDate('month', -1, GETDATE())) AND ObservationTimestamp <= DATETRUNC('month', GETDATE())
GROUP BY N.Caption, N.Ip_Address, N.nodeID
