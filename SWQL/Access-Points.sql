# Quantidade Access Point

SELECT Count(DisplayName) as total
FROM Orion.Wireless.AccessPoints.Thin
WHERE ControllerID = 10 
