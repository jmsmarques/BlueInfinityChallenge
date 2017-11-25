CREATE OR REPLACE PROCEDURE grab_post_it
(p_author IN VARCHAR2, p_solver IN VARCHAR2)
IS
BEGIN
    UPDATE post_its
    SET solver = p_solver
    WHERE author = p_author;
END;
/
CREATE OR REPLACE PROCEDURE close_challenge
(challenge_name IN VARCHAR2, person_name IN VARCHAR2)
IS
BEGIN
    UPDATE persons_challenges
    SET success = 'Y'
    WHERE challenges_name = challenge_name AND persons_name = person_name;
    
    UPDATE scores
    SET points = points + 10
    WHERE persons_name = person_name;
END;
/
CREATE OR REPLACE PROCEDURE close_post_its
(p_author IN VARCHAR2)
IS
BEGIN 
    UPDATE post_its
    SET solved = 'Y'
    WHERE author = p_author;
END;
/
CREATE OR REPLACE PROCEDURE solve_post_its
(p_author IN VARCHAR2, p_solver IN VARCHAR2)
IS
BEGIN 
    UPDATE post_its
    SET solved = 'Y'
    WHERE author = p_author;
    
    UPDATE scores
    SET points = points + 10
    WHERE persons_name = p_solver;
END;
/
