USE cs2;

INSERT INTO knives (knife_id, knife_name)VALUES (1, 'Karambit');
INSERT INTO knives (knife_id, knife_name)VALUES (2, 'Talon');
INSERT INTO knives (knife_id, knife_name)VALUES (3, 'Bayonet');
INSERT INTO knives (knife_id, knife_name)VALUES (4, 'M9-Bayonet');
INSERT INTO knives (knife_id, knife_name)VALUES (5, 'Flip-Knife');
INSERT INTO knives (knife_id, knife_name)VALUES (6, 'Butterfly-Knife');
INSERT INTO knives (knife_id, knife_name)VALUES (7, 'Skeleton-knife');
INSERT INTO knives (knife_id, knife_name)VALUES (8, 'Stiletto-Knife');
INSERT INTO knives (knife_id, knife_name)VALUES (9, 'Classic-Knife');
INSERT INTO knives (knife_id, knife_name)VALUES (10, 'Kukri-Knife');


select * from skins;


INSERT INTO users (user_id, username) VALUES (1, 'happygirl29');
INSERT INTO users (user_id, username) VALUES (2, 'boringman26');


INSERT INTO skins (skinknife_id, skin_name, knife_id, skin_id) VALUES (46, 'Vanilla', 10);
INSERT INTO skins (skinknife_id, skin_name, knife_id, skin_id) VALUES (47, 'Fade', 10);
INSERT INTO skins (skinknife_id, skin_name, knife_id, skin_id) VALUES (48, 'Doppler', 10);
INSERT INTO skins (skinknife_id, skin_name, knife_id, skin_id) VALUES (49, 'Crimson Web', 10);
INSERT INTO skins (skinknife_id, skin_name, knife_id, skin_id) VALUES (50, 'Blue Steel', 10);

ALTER TABLE patterns DROP FOREIGN KEY fk_skin_id;

UPDATE skins SET skin_id = 1 WHERE skin_name = 'Vanilla';
UPDATE skins SET skin_id = 2 WHERE skin_name = 'Fade';
UPDATE skins SET skin_id = 3 WHERE skin_name = 'Doppler';
UPDATE skins SET skin_id = 4 WHERE skin_name = 'Crimson Web';

UPDATE skins SET skin_name = 'Case Hardened' WHERE skin_name = 'Blue Steel';

select * from skins;