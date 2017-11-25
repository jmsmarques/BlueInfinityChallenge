DROP TABLE SCORES;
DROP TABLE MONTHS;
DROP TABLE POST_ITS;
DROP TABLE PERSONS_CHALLENGES;
DROP TABLE TAGS_PERSONS;
DROP TABLE PERSONS;
DROP TABLE CHALLENGES;
DROP TABLE TAGS;


CREATE TABLE tags(
	name VARCHAR2(5),

	PRIMARY KEY(name)
);

CREATE TABLE scores(
	points	 CHAR DEFAULT 'N' NOT NULL,
	persons_name VARCHAR2(1024) NOT NULL,
	months_name	 VARCHAR2(30) NOT NULL,
    months_year NUMBER NOT NULL,
    
    PRIMARY KEY(persons_name, months_name, months_year)
);

CREATE TABLE months(
	name	 VARCHAR2(30),
	month_year NUMBER(8,2) NOT NULL,

	PRIMARY KEY(name, month_year)
);

CREATE TABLE post_its(
	author	 VARCHAR2(1) NOT NULL,
	description VARCHAR2(1024) NOT NULL,
	solver	 VARCHAR2(1024),
	tags_name	 VARCHAR2(5) NOT NULL,
    solved  CHAR DEFAULT 'N' NOT NULL,

	PRIMARY KEY(author)
);

CREATE TABLE persons(
	name		 VARCHAR2(1024),
	password	 VARCHAR2(1024) NOT NULL,
	favorite_sport VARCHAR2(1),
	favorite_team	 VARCHAR2(1),
	hometown	 VARCHAR2(1024) NOT NULL,
	birthday	 DATE NOT NULL,
	highschool	 VARCHAR2(1) NOT NULL,
	university	 VARCHAR2(1024),
	favorite_food	 VARCHAR2(5) NOT NULL,

	PRIMARY KEY(name)
);

CREATE TABLE challenges(
	name	 VARCHAR2(5),
	description VARCHAR2(1024) NOT NULL,

	PRIMARY KEY(name)
);

CREATE TABLE persons_challenges(
	success	 CHAR DEFAULT 'N' NOT NULL,
	start_date	 DATE DEFAULT CURRENT_TIMESTAMP NOT NULL,
	challenges_name VARCHAR2(5),
	persons_name	 VARCHAR2(1024),

	PRIMARY KEY(challenges_name,persons_name)
);

CREATE TABLE tags_persons(
	tags_name	 VARCHAR2(5),
	persons_name VARCHAR2(1024),

	PRIMARY KEY(tags_name,persons_name)
);

ALTER TABLE scores ADD CONSTRAINT scores_fk1 FOREIGN KEY (persons_name) REFERENCES persons(name);
ALTER TABLE scores ADD CONSTRAINT scores_fk2 FOREIGN KEY (months_name, months_year) REFERENCES months(name, month_year);
ALTER TABLE post_its ADD CONSTRAINT post_its_fk1 FOREIGN KEY (tags_name) REFERENCES tags(name);
ALTER TABLE post_its ADD CONSTRAINT post_its_fk2 FOREIGN KEY (author) REFERENCES persons(name);
ALTER TABLE post_its ADD CONSTRAINT post_its_fk3 FOREIGN KEY (solver) REFERENCES persons(name);
ALTER TABLE persons_challenges ADD CONSTRAINT persons_challenges_fk1 FOREIGN KEY (challenges_name) REFERENCES challenges(name);
ALTER TABLE persons_challenges ADD CONSTRAINT persons_challenges_fk2 FOREIGN KEY (persons_name) REFERENCES persons(name);
ALTER TABLE tags_persons ADD CONSTRAINT tags_persons_fk1 FOREIGN KEY (tags_name) REFERENCES tags(name);
ALTER TABLE tags_persons ADD CONSTRAINT tags_persons_fk2 FOREIGN KEY (persons_name) REFERENCES persons(name);

