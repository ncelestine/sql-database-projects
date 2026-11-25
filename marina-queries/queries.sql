-- Queries against the marina database (marina.sql)

-- 1. List every boat owner's number and name
SELECT OWNER_NUM, LAST_NAME, FIRST_NAME FROM `owner`;

-- 2. Owners who live in Bowton
SELECT LAST_NAME, FIRST_NAME FROM `owner` WHERE CITY = 'Bowton';

-- 3. Owners who do NOT live in Bowton
SELECT LAST_NAME, FIRST_NAME FROM `owner` WHERE CITY != 'Bowton';

-- 4. All marinas and their addresses
SELECT MARINA_NUM, NAME, ADDRESS, CITY, STATE, ZIP FROM `marina`;

-- 5. Slips shorter than 30 feet
SELECT MARINA_NUM_fk, SLIP_NUM FROM `marina_slip` WHERE LENGTH < 30;

-- 6. Slips holding a Dolphin 28
SELECT MARINA_NUM_fk, SLIP_NUM FROM `marina_slip` WHERE BOAT_TYPE = 'Dolphin 28';

-- 7. Slips between 25 and 30 feet long (inclusive)
SELECT SLIP_NUM FROM `marina_slip` WHERE LENGTH BETWEEN 25 AND 30;

-- 8. Slips with an annual rental fee under 3,000
SELECT SLIP_NUM FROM `marina_slip` WHERE RENTAL_FEE < 3000;

-- 9. Slips holding a Sprite 4000, Sprite 3000 or Ray 4025
SELECT MARINA_NUM_fk, SLIP_NUM FROM `marina_slip`
WHERE BOAT_TYPE = 'Sprite 4000' OR BOAT_TYPE = 'Sprite 3000' OR BOAT_TYPE = 'Ray 4025';

-- 10. All boats sorted by name
SELECT MARINA_NUM_fk, SLIP_NUM, BOAT_NAME FROM `marina_slip` ORDER BY BOAT_NAME;

-- 11. How many Dolphin 28 boats are docked
SELECT COUNT(*) FROM `marina_slip` WHERE BOAT_TYPE = 'Dolphin 28';

-- 12. Total rental fees across all slips
SELECT SUM(RENTAL_FEE) FROM `marina_slip`;
