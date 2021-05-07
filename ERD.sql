-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/3UetDi
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "shoes" (
    "id" VARCHAR(10)   NOT NULL,
    "name" VARCHAR(255)   NOT NULL,
    "price" FLOAT   NOT NULL,
    "date" VARCHAR(50)   NOT NULL,
    "brand_id" VARCHAR(10)   NOT NULL,
    "color_id" VARCHAR(10)   NOT NULL,
    "gender_id" VARCHAR(10)   NOT NULL,
    CONSTRAINT "pk_shoes" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "brand" (
    "brand_id" VARCHAR(10)   NOT NULL,
    "brand_name" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_brand" PRIMARY KEY (
        "brand_id"
     )
);

CREATE TABLE "colors" (
    "color_id" VARCHAR(10)   NOT NULL,
    "color" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_colors" PRIMARY KEY (
        "color_id"
     )
);

CREATE TABLE "gender" (
    "gender_id" VARCHAR(10)   NOT NULL,
    "gender" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_gender" PRIMARY KEY (
        "gender_id"
     )
);

ALTER TABLE "shoes" ADD CONSTRAINT "fk_shoes_brand_id" FOREIGN KEY("brand_id")
REFERENCES "brand" ("brand_id");

ALTER TABLE "shoes" ADD CONSTRAINT "fk_shoes_color_id" FOREIGN KEY("color_id")
REFERENCES "colors" ("color_id");

ALTER TABLE "shoes" ADD CONSTRAINT "fk_shoes_gender_id" FOREIGN KEY("gender_id")
REFERENCES "gender" ("gender_id");

