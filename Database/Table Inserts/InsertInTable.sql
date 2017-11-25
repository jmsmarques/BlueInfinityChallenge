CREATE OR REPLACE PROCEDURE Insert_In_Tags 
(p_name IN VARCHAR2) 
IS
BEGIN
    INSERT INTO tags
    VALUES
    (p_name);
END;
/
CREATE OR REPLACE PROCEDURE Insert_In_Persons
(p_name IN VARCHAR2, p_password IN VARCHAR2, p_favorite_sport IN VARCHAR2,
p_favorite_team IN VARCHAR2, p_hometown IN VARCHAR2, p_birthday IN VARCHAR2,
p_highschool IN VARCHAR2, p_university IN VARCHAR2, p_favorite_food IN VARCHAR2)
IS
BEGIN
    INSERT INTO persons
    VALUES
    (p_name, p_password, p_favorite_sport, p_favorite_team, p_hometown,
    p_birthday, p_highschool, p_university, p_favorite_food);
END;
/
CREATE OR REPLACE PROCEDURE Insert_In_Months
(p_name IN VARCHAR2, p_month_year IN NUMBER)
IS
BEGIN
    INSERT INTO months
    VALUES
    (p_name, p_month_year);
END;
/
CREATE OR REPLACE PROCEDURE Insert_In_Challenges
(p_name IN VARCHAR2, p_description IN VARCHAR2)
IS
BEGIN
    INSERT INTO challenges
    VALUES
    (p_name, p_description);
END;
/
CREATE OR REPLACE PROCEDURE Insert_In_Post_Its
(p_author IN VARCHAR2, 
p_description IN VARCHAR2, p_tags_name IN VARCHAR2)
IS
BEGIN
    INSERT INTO post_its
    (author, description, tags_name)
    VALUES
    (p_author, p_description, p_tags_name);
END;
/
CREATE OR REPLACE PROCEDURE Insert_In_Scores
(p_name IN VARCHAR2, p_month IN VARCHAR2, p_months_year IN NUMBER)
IS
BEGIN
    INSERT INTO scores
    (persons_name, months_name, months_year)
    VALUES
    (p_name, p_month, p_months_year);
END;
/
CREATE OR REPLACE PROCEDURE Insert_In_Person_Challenges
(p_challenges_name IN VARCHAR2, p_persons_name IN VARCHAR2)
IS
BEGIN
    INSERT INTO persons_challenges
    (challenges_name, persons_name)
    VALUES
    (p_challenges_name, p_persons_name);
END;
/
CREATE OR REPLACE PROCEDURE Insert_In_Tags_Persons
(p_persons_name IN VARCHAR2, p_tags_name IN VARCHAR2)
IS
BEGIN
    INSERT INTO tags_persons
    VALUES
    (p_persons_name, p_tags_name);
END;
