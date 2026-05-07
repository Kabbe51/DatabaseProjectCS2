USE cs2;



DELIMITER //

CREATE PROCEDURE add_skin_to_user(
    IN target_user_id INT,
    IN target_pattern_id INT
)
BEGIN
        -- Add new record or increment count if the item already exists.
    INSERT INTO inventory (user_id, pattern_id, count)
    VALUES (target_user_id, target_pattern_id, 1)
    ON DUPLICATE KEY UPDATE count = count + 1; -- Increment count if the item already exists.

    -- Return the updated row to the backend.
    SELECT * FROM inventory
    WHERE user_id = target_user_id
      AND pattern_id = target_pattern_id;
END //

DELIMITER ;

CALL ADD_SKIN_TO_USER(1, 81);
select * from users
SELECT * FROM inventory
WHERE user_id = 1 AND pattern_id = 81;
#Call add_skin_to_user(1, 81); Gives a M9-Bayonet full fade to user with "user_id 1".


select * from inventory;

DELIMITER //

CREATE PROCEDURE decrease (
    IN target_user_id INT,
    IN target_pattern_id INT
)
BEGIN
    UPDATE inventory
    SET count = count - 1
    WHERE user_id = target_user_id AND pattern_id = target_pattern_id;

    DELETE FROM inventory
        WHERE user_id = target_user_id
            AND pattern_id = target_pattern_id
            AND count <= 0;
END //

DELIMITER ;

CALL decrease(1, 81);



SELECT * FROM users;

ALTER TABLE users ADD COLUMN latest_change VARCHAR(255);


DELIMITER //

CREATE TRIGGER track_inventory_update
AFTER UPDATE ON inventory
FOR EACH ROW
BEGIN
    DECLARE difference INT;
    DECLARE message VARCHAR(255);

    SET difference = NEW.count - OLD.count;

    IF difference > 0 THEN
        SET message = CONCAT('Added ', difference, ' nr of item #', NEW.pattern_id);
    ELSEIF difference < 0 THEN
        SET message = CONCAT('Removed ', ABS(difference), ' nr of item #', NEW.pattern_id);
    ELSE
        SET message = 'No change in inventory';
    END IF;

    -- Updates the column latest_change in the user table
    UPDATE users
    SET latest_change = message
    WHERE user_id = NEW.user_id;
END;
//

DELIMITER ;




select * from users;

