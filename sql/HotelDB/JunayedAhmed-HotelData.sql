USE Hotel;

-- Inserting data into all tables
INSERT INTO Guest (FirstName,LastName,Address,City,State,ZipCode,Phone) 
VALUES
	('Junayed','Ahmed','77 Some Street','Some City','NY','10001','0123456789'),
    ('Mack','Simmer','379 Old Shore Street','Council Bluffs','IA','51501',	'2915530508'),
    ('Bettyann','Seery','750 Wintergreen Dr.','Wasilla','AK','99654','4782779632'),
	('Duane','Cullison','9662 Foxrun Lane','Harlingen','TX','78552','3084940198'),
	('Karie','Yang','9378 W. Augusta Ave.','West Deptford','NJ','08096','2147300298'),
	('Aurore','Lipton','762 Wild Rose Street','Saginaw','MI','48601','3775070974'),
    ('Zachery','Luechtefeld', '7 Poplar Dr.', 'Arvada', 'CO', '80003', '8144852615'),
    ('Jeremiah','Pendergrass', '70 Oakwood St.', 'Zion', 'IL', '60099', '2794910960'),
    ('Walter','Holaway', '7556 Arrowhead St.', 'Cumberland', 'RI', '02864', '4463966785'),
    ('Wilfred','Vise', '77 West Surrey Street', 'Oswego', 'NY', '13126', '8347271001'),
    ('Maritza','Tilton', '939 Linda Rd.', 'Burke', 'VA', '22015', '4463516860'),
    ('Joleen','Tison', '87 Queen St.', 'Drexel Hill', 'PA', '19026', '2318932755');

INSERT INTO Reservation (Adults,Children,StartDate,EndDate,RoomTotal)
VALUES
    ('1 ', '0 ', '2023/2/2', '2023/2/4', '299.98'),
    ('2 ', '1 ', '2023/2/5', '2023/2/10', '999.95'),
    ('2 ', '0 ', '2023/2/22', '2023/2/24', '349.98'),
    ('2 ', '2 ', '2023/3/6', '2023/3/7', '199.99'),
    ('1 ', '1 ', '2023/3/17', '2023/3/20', '524.97'),
    ('3 ', '0 ', '2023/3/18', '2023/3/23', '924.95'),
    ('2 ', '2 ', '2023/3/29', '2023/3/31', '349.98'),
    ('2 ', '0 ', '2023/3/31', '2023/4/5', '874.95'),
    ('1 ', '0 ', '2023/4/9', '2023/4/13', '799.96'),
    ('1 ', '1 ', '2023/4/23', '2023/4/24', '174.99'),
    ('2 ', '4 ', '2023/5/30', '2023/6/2', '1199.97'),
    ('2 ', '0 ', '2023/6/10', '2023/6/14', '599.96'),
    ('1 ', '0 ', '2023/6/10', '2023/6/14', '599.96'),
    ('3 ', '0 ', '2023/6/17', '2023/6/18', '184.99'),
    ('2 ', '0 ', '2023/6/28', '2023/7/2', '699.96'),
    ('3 ', '1 ', '2023/7/13', '2023/7/14', '184.99'),
    ('4 ', '2 ', '2023/7/18', '2023/7/21', '1259.97'),
    ('2 ', '1 ', '2023/7/28', '2023/7/29', '199.99'),
    ('1 ', '0 ', '2023/8/30', '2023/9/1', '349.98'),
    ('2 ', '0 ', '2023/9/16', '2023/9/17', '149.99'),
    ('2 ', '2 ', '2023/9/13', '2023/9/15', '399.98'),
    ('2 ', '2 ', '2023/11/22', '2023/11/25', '1199.97'),
    ('2 ', '0 ', '2023/11/22', '2023/11/25', '449.97'),
    ('2 ', '2 ', '2023/11/22', '2023/11/25', '599.97'),
    ('2 ', '0 ', '2023/12/24', '2023/12/28', '699.96');

INSERT INTO Amenity	(AmenityDesc)
VALUES
	('Microwave'),
    ('Refrigerator'),
    ('Oven'),
    ('Jacuzzi');

INSERT INTO RoomType (RoomTypeDesc)
VALUES
	('Single'),
    ('Double'),
    ('Suite');

INSERT INTO Room (RoomID,RoomTypeID,ADAAcc,StandOcc,MaxOcc,BasePrice,ExtraPerson)
VALUES
	('201', '2', false, '2', '4', '199.99', '10'),
    ('202', '2', true, '2', '4', '174.99', '10'),
    ('203', '2', false, '2', '4', '199.99', '10'),
    ('204', '2', true, '2', '4', '174.99', '10'),
    ('205', '1', false, '2', '2', '174.99', NULL),
    ('206', '1', true, '2', '2', '149.99', NULL),
    ('207', '1', false, '2', '2', '174.99', NULL),
    ('208', '1', true, '2', '2', '149.99', NULL),
    ('301', '2', false, '2', '4', '199.99', '10'),
    ('302', '2', true, '2', '4', '174.99', '10'),
    ('303', '2', false, '2', '4', '199.99', '10'),
    ('304', '2', true, '2', '4', '174.99', '10'),
    ('305', '1', false, '2', '2', '174.99', NULL),
    ('306', '1', true, '2', '2', '149.99', NULL),
    ('307', '1', false, '2', '2', '174.99', NULL),
    ('308', '1', true, '2', '2', '149.99', NULL),
    ('401', '3', true, '3', '8', '399.99', '20'),
    ('402', '3', true, '3', '8', '399.99', '20');

INSERT INTO ResGuest (ReservationID,GuestID)
VALUES
	('1','2'),
    ('2','3'),
    ('3','4'),
    ('4','5'),
    ('5','1'),
    ('6','6'),
    ('7','7'),
    ('8','8'),
    ('9','9'),
    ('10','10'),
    ('11','11'),
    ('12','12'),
    ('13','12'),
    ('14','6'),
    ('15','1'),
    ('16','9'),
    ('17','10'),
    ('18','3'),
    ('19','3'),
    ('20','2'),
    ('21','5'),
    ('22','4'),
    ('23','2'),
    ('24','2'),
    ('25','11');

INSERT INTO ResRoom (ReservationID,RoomID)
VALUES
	('1','308'),
    ('2','203'),
    ('3','305'),
    ('4','201'),
    ('5','307'),
    ('6','302'),
    ('7','202'),
    ('8','304'),
    ('9','301'),
    ('10','207'),
    ('11','401'),
    ('12','206'),
    ('13','208'),
    ('14','304'),
    ('15','205'),
    ('16','204'),
    ('17','401'),
    ('18','303'),
    ('19','305'),
    ('20','208'),
    ('21','203'),
    ('22','401'),
    ('23','206'),
    ('24','301'),
    ('25','302');

INSERT INTO RoomAmenity (RoomID,AmenityID)
VALUES
	('201','1'),
    ('201','4'),
    ('202','2'),
    ('203','1'),
    ('203','4'),
    ('204','2'),
    ('205','1'),
    ('205','2'),
    ('205','4'),
    ('206','1'),
    ('206','2'),
    ('207','1'),
    ('207','2'),
    ('207','4'),
    ('208','1'),
    ('208','2'),
	('301','1'),
    ('301','4'),
    ('302','2'),
    ('303','1'),
    ('303','4'),
    ('304','2'),
    ('305','1'),
    ('305','2'),
    ('305','4'),
    ('306','1'),
    ('306','2'),
    ('307','1'),
    ('307','2'),
    ('307','4'),
    ('308','1'),
    ('308','2'),
    ('401','1'),
    ('401','2'),
    ('401','3'),
	('402','1'),
    ('402','2'),
    ('402','3');


-- Deleting Jeremiah Pendergrass and his reservations from the database

-- Finding records to be deleted
SELECT *
FROM guest g
INNER JOIN resguest rg ON g.GuestID = rg.GuestID
INNER JOIN reservation r ON rg.ReservationID = r.ReservationID
WHERE g.FirstName = 'Jeremiah'
AND g.LastName= 'Pendergrass';

-- Deleting from ResGuest table
DELETE FROM ResGuest rg
WHERE rg.GuestID = '8';

-- Deleting from ResRoom table
DELETE FROM ResRoom rr
WHERE rr.ReservationID = '8';

-- Deleting from Reservation table
DELETE FROM reservation r
WHERE r.ReservationID = '8';

-- Deleting from Guest table
DELETE FROM Guest g
WHERE g.GuestID = '8';

SELECT * from ResGuest;
SELECT * from ResRoom;
SELECT * from Reservation;
SELECT * from Guest;	
    
    


	