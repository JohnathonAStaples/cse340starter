-- Insert new record to the account table
INSERT INTO account
 ( account_firstname, account_lastname, account_email, account_password)
VALUES
( 'Tony', 'Stark', 'tony@starkent.com', 'Iam1ronM@n');

-- Modify account_type to Admin
UPDATE
	account
SET 
	account_type = 'Admin'
WHERE 
	account_id = 1

-- Delete Tony Starks account 
DELETE 
FROM 
    account
WHERE
    account_id = 1

-- Modify the GM Hummer
UPDATE
	inventory
SET
	inv_description = REPLACE(inv_description, 'small interiors', 'a huge interior')
WHERE
	inv_model = 'Hummer'

-- Inner join to selct the make and model fields from the inventory table and the classification name field from the classification table 
SELECT 
	inv_make, inv_model, classification_name
FROM	
	inventory
INNER JOIN 
	classification
	ON  inventory.classification_id = classification.classification_id
	WHERE classification_name = 'Sport'

--
UPDATE 
	inventory
SET
	inv_image = REPLACE (
		inv_image,
	'/images',
	'/images/vehicles'),
	inv_thumbnail = REPLACE (
		inv_thumbnail,
	'/images',
	'/images/vehicles')
