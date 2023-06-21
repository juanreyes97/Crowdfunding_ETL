CREATE TABLE category(
    category_id CHAR(4) PRIMARY KEY NOT NULL,
    category VARCHAR(50)
);

CREATE TABLE subcategory(
    subcategory_id CHAR(10) PRIMARY KEY NOT NULL,
    subcategory VARCHAR(50)
);

CREATE TABLE contacts(
    contact_id CHAR(4) PRIMARY KEY NOT NULL,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50)
);

CREATE TABLE campaign(
    cf_id CHAR(4),
	contact_id CHAR(4) PRIMARY KEY NOT NULL,
	company_name VARCHAR(100),
	description VARCHAR(100),
	goal FLOAT,
	pledged FLOAT,
	outcome VARCHAR(20),
	backers_count INTEGER,
	country VARCHAR(5),
	currency VARCHAR(5),
	launched_date DATE,
	end_date DATE,
	category_id CHAR(4),
	subcategory_id CHAR(20),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id)
);


