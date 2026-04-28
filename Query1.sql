USE cs2;

CREATE TABLE knives (
	knife_id INT NOT NULL,
	knife_name VARCHAR(255) NOT NULL,
	PRIMARY KEY (knife_id)
);

CREATE TABLE skins (
	skin_id INT NOT NULL,
	skin_name VARCHAR(255) NOT NULL,
    knife_id INT NOT NULL,
	PRIMARY KEY (skin_id)
);
ALTER TABLE skins
ADD CONSTRAINT fk_knife_connection
FOREIGN KEY (knife_id) REFERENCES knives(knife_id);


select * from skins;
CREATE TABLE users (
	user_id INT NOT NULL,
	username VARCHAR(255) NOT NULL,
	PRIMARY KEY (user_id)
);

CREATE TABLE patterns (
    pattern_id INT NOT NULL,
    skin_id INT NOT NULL,
    knife_id INT NOT NULL,
    PRIMARY KEY (pattern_id, skin_id)
);

CREATE TABLE inventory (
    user_id INT NOT NULL,
    pattern_id INT NOT NULL,
    instance_id INT NOT NULL,

    PRIMARY KEY (user_id, pattern_id, instance_id),

    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (pattern_id) REFERENCES patterns(pattern_id)
);

select * from inventory;


