USE cs2;


ALTER TABLE inventory
ADD PRIMARY KEY (user_id, pattern_id);

ALTER TABLE inventory
ADD CONSTRAINT fk_inventory_user
FOREIGN KEY (user_id) REFERENCES users(user_id)
ON DELETE CASCADE;

ALTER TABLE inventory
ADD CONSTRAINT fk_inventory_pattern
FOREIGN KEY (pattern_id) REFERENCES patterns(pattern_id)
ON DELETE CASCADE;

SELECT * FROM inventory;

ALTER TABLE inventory
ADD COLUMN onsale INT DEFAULT 0,
ADD COLUMN sold INT DEFAULT 0;
