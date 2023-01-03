/* IN, HAVING, CASE, Subqueries */

CREATE TABLE exercise_logs
    (id INTEGER PRIMARY KEY AUTO_INCREMENT,
    type TEXT,
    minutes INTEGER, 
    calories INTEGER,
    heart_rate INTEGER);
    
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("biking", 30, 100, 110);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("biking", 10, 30, 105);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("dancing", 15, 200, 120);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("tree climbing", 30, 70, 90);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("tree climbing", 25, 72, 80);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("rowing", 30, 70, 90);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("hiking", 60, 80, 85);

/* IN */
SELECT 
    *
FROM
    exercise_logs
WHERE
    type IN ('biking' , 'hiking', 'tree climbing', 'rowing');
    
CREATE TABLE drs_favorites
    (id INTEGER PRIMARY KEY AUTO_INCREMENT,
    type TEXT,
    reason TEXT);
    
INSERT INTO drs_favorites(type, reason) VALUES ("biking", "Improves endurance and flexibility.");
INSERT INTO drs_favorites(type, reason) VALUES ("hiking", "Increases cardiovascular health.");

/* subqueries usin IN */
SELECT * FROM exercise_logs WHERE type IN (
    SELECT type FROM drs_favorites);
    
SELECT * FROM exercise_logs WHERE type IN (
    SELECT type FROM drs_favorites WHERE reason = "Increases cardiovascular health.");

SELECT * FROM exercise_logs WHERE type IN (
    SELECT type FROM drs_favorites WHERE reason = "Increases cardiovascular health.");
    

SELECT type, SUM(calories) AS total_calories FROM exercise_logs GROUP BY type;

/*
SELECT type, SUM(calories) AS total_calories FROM exercise_logs
    WHERE calories > 150
only filters out individual rows where cal > 150 vs filtering the TOTAL calories
*/

/*use HAVING for agg functions*/
SELECT type, SUM(calories) AS total_calories FROM exercise_logs
    GROUP BY type
    HAVING total_calories > 100;
    
SELECT type, SUM(calories) AS total_calories FROM exercise_logs
    GROUP BY type
    HAVING total_calories > 150;



/* target heart rate 50-90% of max (220 - age) */
SELECT 
    COUNT(*)
FROM
    exercise_logs
WHERE
    heart_rate >= round(.5 * (220 - 25))
        AND heart_rate <= round(.9 * (220 - 25));
        
/* CASE */
SELECT 
    type,
    heart_rate,
    CASE
        WHEN heart_rate > 220 - 25 THEN 'above max'
        WHEN heart_rate > ROUND(.9 * (220 - 25)) THEN 'above target'
        WHEN heart_rate >= ROUND(.5 * (220 - 25)) THEN 'within target'
        ELSE 'below target'
    END AS 'hr_zone'
FROM
    exercise_logs;
    
SELECT 
    COUNT(*),
    CASE
        WHEN heart_rate > 220 - 25 THEN 'above max'
        WHEN heart_rate > ROUND(.9 * (220 - 25)) THEN 'above target'
        WHEN heart_rate >= ROUND(.5 * (220 - 25)) THEN 'within target'
        ELSE 'below target'
    END AS 'hr_zone'
FROM
    exercise_logs
GROUP BY hr_zone;


