USE Hotel;

-- Write a query that returns a list of reservations that end in July 2023, including the name of the guest, the room number(s), and the reservation dates
SELECT
    g.FirstName,
    g.LastName,
    rr.RoomID,
    res.StartDate,
    res.EndDate
FROM Reservation res
INNER JOIN resguest rg ON res.ReservationID = rg.ReservationID
INNER JOIN Guest g ON rg.GuestID = g.GuestID
INNER JOIN ResRoom rr ON res.ReservationID = rr.ReservationID
WHERE res.EndDate LIKE '2023-07%';

-- Write a query that returns a list of all reservations for rooms with a jacuzzi, displaying the guest's name, the room number, and the dates of the reservation.
SELECT
    concat(g.FirstName,' ',g.LastName) GuestName,
    rr.RoomID,
    res.StartDate,
    res.EndDate
FROM Reservation res
INNER JOIN resguest rg ON res.ReservationID = rg.ReservationID
INNER JOIN Guest g ON rg.GuestID = g.GuestID
INNER JOIN ResRoom rr ON res.ReservationID = rr.ReservationID
INNER JOIN RoomAmenity ra on rr.RoomID = ra.RoomID
WHERE ra.AmenityID = '4'
ORDER BY res.StartDate;

-- Write a query that returns all the rooms reserved for a specific guest, including the guest's name, the room(s) reserved, the starting date of the reservation, and how many people were included in the reservation. (Choose a guest's name from the existing data.)
-- Using Duane Cullision
SELECT
    rr.RoomID,
    concat(g.FirstName,' ',g.LastName) GuestName,
    res.StartDate,
    res.EndDate,
	(res.Adults + res.Children) as `TotalGuests`
FROM Reservation res
INNER JOIN resguest rg ON res.ReservationID = rg.ReservationID
INNER JOIN Guest g ON rg.GuestID = g.GuestID
INNER JOIN ResRoom rr ON res.ReservationID = rr.ReservationID
WHERE g.FirstName = 'Duane'
AND g.LastName = 'Cullison';

-- Write a query that returns a list of rooms, reservation ID, and per-room cost for each reservation. The results should include all rooms, whether or not there is a reservation associated with the room.
SELECT
	r.RoomID,
    IFNULL(rr.ReservationID, '[No reservations]') ReservationID,
    IFNULL(res.RoomTotal, '[N/A]') RoomTotal
FROM Room r
LEFT OUTER JOIN ResRoom rr ON r.RoomID = rr.RoomID
LEFT OUTER JOIN Reservation res ON rr.ReservationID = res.ReservationID;

-- Write a query that returns all the rooms accommodating at least three guests and that are reserved on any date in April 2023.
SELECT 
    r.RoomID,
    rr.ReservationID,
    (res.Adults + res.Children) as `TotalGuests`,
    res.StartDate,
    res.EndDate
FROM Room r 
INNER JOIN ResRoom rr on r.RoomID = rr.RoomID
INNER JOIN Reservation res on rr.ReservationID = res.ReservationID
WHERE (res.Adults + res.Children) >= 3
AND ((res.StartDate <= 2023-05-31) AND ( res.EndDate>=2023-03-01))
ORDER BY res.StartDate;

-- No records found

-- Write a query that returns a list of all guest names and the number of reservations per guest, sorted starting with the guest with the most reservations and then by the guest's last name.
SELECT
    concat(g.FirstName,' ',g.LastName) GuestName,
    IFNUll(count(rg.GuestID),'[None]') ReservationCount
FROM Guest g
LEFT OUTER JOIN ResGuest rg ON g.GuestID = rg.GuestID
GROUP BY GuestName
ORDER BY ReservationCount DESC, g.LastName;


-- Write a query that displays the name, address, and phone number of a guest based on their phone number. (Choose a phone number from the existing data.)
SELECT
    concat(g.FirstName,' ',g.LastName) GuestName,
    g.Address,
    g.Phone as 'Phone Number'
FROM guest g
WHERE g.Phone = '8347271001';

    
