USE cs2;

SELECT * FROM users;

SELECT * FROM knives;

SELECT * FROM skins;

SELECT * FROM patterns;

ALTER TABLE patterns ADD CONSTRAINT fk_skin_id FOREIGN KEY (skin_id) REFERENCES skins(skin_id);

