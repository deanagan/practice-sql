-- This Exercise uses sqlite

-- Create invitations for a party
SELECT FirstName, LastName, Email FROM Customers
ORDER BY LastName;

-- -- Create a table to store information
CREATE TABLE AnniversaryAttendees (
    "CustomerID" INT PRIMARY KEY NOT NULL,
    "PartySize" INT NOT NULL
);

SELECT Name, Price, Type FROM Dishes ORDER BY Price;

SELECT Name, Type FROM Dishes
WHERE Type = "Beverage" OR Type = "Appetizer"
ORDER BY Type;

SELECT Name, Type FROM Dishes
WHERE Type <> "Beverage"
ORDER BY Type;

-- Get total price of all beverages
SELECT Name, Price FROM Dishes WHERE Type = "Beverage";
SELECT SUM(Price) FROM Dishes
GROUP BY Type
HAVING Type = "Beverage";