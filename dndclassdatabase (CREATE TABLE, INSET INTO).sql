/** D&D 5e classes: 
Artificer (8) Intelligence
Barbarian (12) Strength
Bard (8) Charisma
Cleric (8) Wisdom
Druid (8) Wisdom
Fighter (10) Strength or Dexterity
Monk (8) Dexterity & Wisdom
Paladin (10) Strength & Charisma
Ranger (10) Dexterity & Wisdom
Rogue (8) Dexterity
Sorcerer (6) Charisma
Warlock (8) Charisma
Wizard (6) Intelligence
**/

CREATE TABLE classes (id INTEGER PRIMARY KEY, class TEXT, hit_die INTEGER, primary_ability TEXT);

INSERT INTO classes VALUES (1, "Artificer", 8, "Intelligence");
INSERT INTO classes VALUES (2, "Barbarian", 12, "Strength");
INSERT INTO classes VALUES (3, "Bard", 8, "Charisma");
INSERT INTO classes VALUES (4, "Cleric", 8, "Wisdom");
INSERT INTO classes VALUES (5, "Druid", 8, "Wisdom");
INSERT INTO classes VALUES (6, "Fighter", 10, "Strength or Dexterity");
INSERT INTO classes VALUES (7, "Monk", 8, "Dexterity & Wisdom");
INSERT INTO classes VALUES (8, "Paladin", 10, "Strength & Charisma");
INSERT INTO classes VALUES (9, "Ranger", 10, "Dexterity & Wisdom");
INSERT INTO classes VALUES (10, "Rogue", 8, "Dexterity");
INSERT INTO classes VALUES (11, "Sorcerer", 6, "Charisma");
INSERT INTO classes VALUES (12, "Warlock", 8, "Charisma");
INSERT INTO classes VALUES (13, "Wizard", 6, "Intelligence");


/** an alternate way to insert values **/

INSERT INTO classes (id, class, hit_die, primary_ability)
VALUES
  (1, "Artificer", 8, "Intelligence"),
  (2, "Barbarian", 12, "Strength"),
  (3, "Bard", 8, "Charisma"),
  (4, "Cleric", 8, "Wisdom"),
  (5, "Druid", 8, "Wisdom"),
  (6, "Fighter", 10, "Strength or Dexterity"),
  (7, "Monk", 8, "Dexterity & Wisdom"),
  (8, "Paladin", 10, "Strength & Charisma"),
  (9, "Ranger", 10, "Dexterity & Wisdom"),
  (10, "Rogue", 8, "Dexterity"),
  (11, "Sorcerer", 6, "Charisma"),
  (12, "Warlock", 8, "Charisma"),
  (13, "Wizard", 6, "Intelligence");
  
Select 
  * 
From 
  classes
WHERE 
  hit_die>6
ORDER BY 
  class;
  
