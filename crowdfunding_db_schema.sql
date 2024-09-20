CREATE TABLE "category" (
    "category_id" varchar(4)   NOT NULL,
    "category" varchar(50)   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "contacts" (
    "contact_id" int   NOT NULL,
    "first_name" varchar(20)   NOT NULL,
    "last_name" varchar(20)   NOT NULL,
    "email" varchar(100)   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "campaign" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" varchar(100)   NOT NULL,
    "description" varchar(200)   NOT NULL,
    "goal" numeric(12,2)   NOT NULL,
    "pledged" numeric(12,2)   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar(2)   NOT NULL,
    "currency" varchar(3)   NOT NULL,
    "launch_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" varchar(4)   NOT NULL,
    "subcategory_id" varchar(20)   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "subcategory" (
    "subcategory_id" varchar(50)   NOT NULL,
    "subcategory" varchar(50)   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");


---Upload csv files

COPY campaign(cf_id, contact_id, company_name, description, goal, pledged, 
	backers_count, country, currency, launch_date, end_date, category_id, subcategory_id
)
FROM 'C:\data\campaign.csv'
DELIMITER ','
CSV HEADER;


COPY category(category_id, category
)
FROM 'C:\data\category.csv'
DELIMITER ','
CSV HEADER;


COPY contacts(contact_id, first_name, last_name, email
)
FROM 'C:\data\contacts.csv'
DELIMITER ','
CSV HEADER;

COPY subcategory(subcategory_id, subcategory
)
FROM 'C:\data\subcategory.csv'
DELIMITER ','
CSV HEADER;


