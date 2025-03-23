-- Create the Database
CREATE DATABASE EFO_Donations;

-- Use the Database
USE EFO_Donations;

-- Create Donation_Data Table
CREATE TABLE Donation_Data (
    id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(50),
    gender VARCHAR(50),
    job_field VARCHAR(50),
    donation INT,
    state VARCHAR(50),
    shirt_size VARCHAR(50)
);

-- Create Donor_Data2 Table
CREATE TABLE Donor_Data2 (
    id INT PRIMARY KEY,
    donation_frequency VARCHAR(50),
    university VARCHAR(50),
    car VARCHAR(50),
    second_language VARCHAR(50),
    favourite_colour VARCHAR(50),
    movie_genre VARCHAR(100)
);
-- View Donation_Data Table
SELECT * FROM Donation_Data 

-- View Donor_Data2 Table
SELECT * FROM Donor_Data2

-- Inserting 20 rows into Donation_Data
INSERT INTO Donation_Data (id, first_name, last_name, email, gender, job_field, donation, state, shirt_size)
VALUES 
(1, 'John', 'Doe', 'johndoe1@example.com', 'Male', 'Engineering', 150, 'California', 'M'),
(2, 'Jane', 'Smith', 'janesmith2@example.com', 'Female', 'Marketing', 75, 'Texas', 'S'),
(3, 'Robert', 'Brown', 'robertbrown3@example.com', 'Male', 'Finance', 200, 'New York', 'L'),
(4, 'Emily', 'Davis', 'emilydavis4@example.com', 'Female', 'Healthcare', 120, 'Florida', 'M'),
(5, 'Michael', 'Wilson', 'michaelwilson5@example.com', 'Male', 'Education', 60, 'Illinois', 'XL'),
(6, 'Sarah', 'Johnson', 'sarahjohnson6@example.com', 'Female', 'Engineering', 180, 'Ohio', 'M'),
(7, 'Daniel', 'Lee', 'daniellee7@example.com', 'Male', 'IT', 140, 'Georgia', 'L'),
(8, 'Laura', 'Clark', 'lauraclark8@example.com', 'Female', 'Sales', 50, 'North Carolina', 'S'),
(9, 'David', 'Lopez', 'davidlopez9@example.com', 'Male', 'Design', 90, 'Arizona', 'M'),
(10, 'Megan', 'Green', 'megangreen10@example.com', 'Female', 'Marketing', 65, 'Michigan', 'M'),
(11, 'Chris', 'Taylor', 'christaylor11@example.com', 'Male', 'Law', 130, 'Virginia', 'L'),
(12, 'Amanda', 'Adams', 'amandaadams12@example.com', 'Female', 'Education', 70, 'Washington', 'M'),
(13, 'Brian', 'Perez', 'brianperez13@example.com', 'Male', 'IT', 155, 'Nevada', 'L'),
(14, 'Rebecca', 'Walker', 'rebeccawalker14@example.com', 'Female', 'Healthcare', 125, 'Colorado', 'S'),
(15, 'Andrew', 'Scott', 'andrewscott15@example.com', 'Male', 'Sales', 50, 'Oregon', 'M'),
(16, 'Jessica', 'Mitchell', 'jessicamitchell16@example.com', 'Female', 'Finance', 180, 'New Jersey', 'L'),
(17, 'Steven', 'White', 'stevenwhite17@example.com', 'Male', 'Design', 110, 'Massachusetts', 'M'),
(18, 'Karen', 'Harris', 'karenharris18@example.com', 'Female', 'Engineering', 200, 'Minnesota', 'S'),
(19, 'Matthew', 'Martin', 'matthewmartin19@example.com', 'Male', 'IT', 90, 'Missouri', 'XL'),
(20, 'Emily', 'Jackson', 'emilyjackson20@example.com', 'Female', 'Marketing', 75, 'New York', 'M');

-- Inserting 50 rows into Donor_Data2
INSERT INTO Donor_Data2 (id, donation_frequency, university, car, second_language, favourite_colour, movie_genre)
VALUES 
(1, 'Monthly', 'Harvard University', 'Tesla', 'Spanish', 'Blue', 'Action|Adventure'),
(2, 'Weekly', 'MIT', 'BMW', 'French', 'Red', 'Comedy|Drama'),
(3, 'Annually', 'Stanford University', 'Audi', 'German', 'Green', 'Sci-Fi|Fantasy'),
(4, 'Monthly', 'UC Berkeley', 'Ford', 'Chinese', 'Yellow', 'Documentary|Biography'),
(5, 'Quarterly', 'Columbia University', 'Honda', 'Japanese', 'Black', 'Horror|Thriller'),
(6, 'Weekly', 'Yale University', 'Toyota', 'Italian', 'Purple', 'Romance|Drama'),
(7, 'Annually', 'Princeton University', 'Mercedes', 'Korean', 'Orange', 'Action|Crime'),
(8, 'Monthly', 'Oxford University', 'Lexus', 'Arabic', 'Pink', 'Animation|Family'),
(9, 'Weekly', 'Cambridge University', 'Chevrolet', 'Russian', 'Grey', 'War|History'),
(10, 'Quarterly', 'University of Toronto', 'Jeep', 'Portuguese', 'Teal', 'Comedy|Musical'),
(11, 'Monthly', 'UCLA', 'Subaru', 'Hindi', 'Brown', 'Drama|Mystery'),
(12, 'Weekly', 'NYU', 'Nissan', 'Swedish', 'White', 'Adventure|Fantasy'),
(13, 'Annually', 'Brown University', 'Mazda', 'Greek', 'Cyan', 'Crime|Thriller'),
(14, 'Monthly', 'Duke University', 'Volkswagen', 'Turkish', 'Navy', 'Sci-Fi|Horror'),
(15, 'Quarterly', 'Cornell University', 'Kia', 'Danish', 'Olive', 'Mystery|Suspense'),
(16, 'Weekly', 'University of Chicago', 'Hyundai', 'Hebrew', 'Maroon', 'Romantic Comedy'),
(17, 'Annually', 'Northwestern University', 'Jaguar', 'Czech', 'Silver', 'Drama|Biography'),
(18, 'Monthly', 'Carnegie Mellon University', 'Buick', 'Polish', 'Gold', 'Crime|Documentary'),
(19, 'Quarterly', 'University of Michigan', 'Volvo', 'Finnish', 'Lavender', 'Western|History'),
(20, 'Weekly', 'Penn State', 'Land Rover', 'Norwegian', 'Indigo', 'Sci-Fi|Adventure');

-- Check Donation_Data Table
SELECT COUNT(*) FROM Donation_Data;

-- Check Donor_Data2 Table
SELECT COUNT(*) FROM Donor_Data2;

-- Combining both tables using INNER JOIN
SELECT *
FROM Donation_Data d
INNER JOIN Donor_Data2 d2
ON d.id = d2.id

--Insight 1: Highest Donors by Amount
SELECT d.first_name, d.last_name, d.donation
FROM Donation_Data d
ORDER BY d.donation DESC

--Insight 2: Average Donation by Job 
SELECT d.job_field, AVG(d.donation) AS average_donation
FROM Donation_Data d
GROUP BY d.job_field
ORDER BY average_donation DESC;

-- Insight 3: Most Popular Donation Frequency
SELECT d2.donation_frequency, 
COUNT(d2.donation_frequency) AS frequency_count
FROM Donor_Data2 d2
GROUP BY d2.donation_frequency
ORDER BY frequency_count DESC;

--Insight 4: Donations by University
SELECT d2.university, SUM(d.donation) AS total_donation
FROM Donation_Data d
JOIN Donor_Data2 d2
ON d.id = d2.id
GROUP BY d2.university
ORDER BY total_donation DESC;

--Insight 5: Donation Amount vs. Car Type
SELECT d2.car, AVG(d.donation) AS average_donation
FROM Donation_Data d
JOIN Donor_Data2 d2
ON d.id = d2.id
GROUP BY d2.car
ORDER BY average_donation DESC;

-- Insight 6: Languages Spoken by Donors
SELECT d2.second_language, 
COUNT(d2.second_language) AS language_count
FROM Donor_Data2 d2
GROUP BY d2.second_language
ORDER BY language_count DESC;

--Insight 7: Movie Genre Preferences
SELECT d2.movie_genre, 
COUNT(d2.movie_genre) AS genre_count
FROM Donor_Data2 d2
GROUP BY d2.movie_genre
ORDER BY genre_count DESC;

--Insight 8: High Donors by University & Job Field
SELECT d2.university, d.job_field, 
SUM(d.donation) AS total_donation
FROM Donation_Data d
JOIN Donor_Data2 d2
ON d.id = d2.id
GROUP BY d2.university, d.job_field
ORDER BY total_donation DESC;

--Insight 9: Preferred Donation Frequency by Job Field
SELECT d.job_field, d2.donation_frequency, COUNT(d2.donation_frequency) AS frequency_count
FROM Donation_Data d
JOIN Donor_Data2 d2
ON d.id = d2.id
GROUP BY d.job_field, d2.donation_frequency
ORDER BY frequency_count DESC;

--Insight 10: Top Languages Spoken by Highest Donors
SELECT d2.second_language, 
SUM(d.donation) AS total_donation
FROM Donation_Data d
JOIN Donor_Data2 d2
ON d.id = d2.id
GROUP BY d2.second_language
ORDER BY total_donation DESC;

-- Insight 11: Donation Frequency by Gender
SELECT 
    d.gender,
    d2.donation_frequency,
    COUNT(*) AS Frequency_Count
FROM Donation_Data d
JOIN Donor_Data2 d2
ON d.id = d2.id
GROUP BY d.gender, d2.donation_frequency
ORDER BY Frequency_Count DESC;

-- Insight 12: Average Donation by Movie Genre
SELECT 
    d2.movie_genre,
    AVG(d.donation) AS Average_Donation
FROM Donation_Data d
JOIN Donor_Data2 d2
ON d.id = d2.id
GROUP BY d2.movie_genre
ORDER BY Average_Donation DESC;

--Insight 13: Most Common Job Fields Among High Donors
SELECT 
    d.job_field, 
    COUNT(d.id) AS Donor_Count,
    AVG(d.donation) AS Average_Donation
FROM Donation_Data d
WHERE d.donation > 500  -- Change 500 to another value if you prefer
GROUP BY d.job_field
ORDER BY Average_Donation DESC;

--Insight 14: Car Ownership Influence on Donation
SELECT 
    d2.car, 
    AVG(d.donation) AS Average_Donation,
    COUNT(d.id) AS Donor_Count
FROM Donation_Data d
JOIN Donor_Data2 d2
ON d.id = d2.id
GROUP BY d2.car
ORDER BY Average_Donation DESC;



