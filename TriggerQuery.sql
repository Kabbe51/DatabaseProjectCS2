USE cs2;



DELIMITER //

CREATE TRIGGER after_inventory_delete
AFTER DELETE ON inventory FOR EACH ROW
BEGIN
    -- Used to correct instance_id when deleting an item from a user's inventory.
    UPDATE  inventory
    SET instance_id = instance_id - 1
    WHERE user_id = OLD.user_id
      AND pattern_id = OLD.pattern_id
      AND instance_id > OLD.instance_id;
END;
//
DELIMITER ;

DELIMITER //

CREATE PROCEDURE add_skin_to_user(
    IN target_user_id INT,
    IN target_pattern_id INT
)
BEGIN
    DECLARE next_instance INT;

    -- Find current instance_id for this user and pattern
    -- If the users don't have any, then it is set to 1 via COALESCE
    SELECT COALESCE(MAX(instance_id), 0) + 1
    INTO next_instance
    FROM inventory
    WHERE user_id = target_user_id
      AND pattern_id = target_pattern_id;

    -- Add into inventory.
    INSERT INTO inventory (user_id, pattern_id, instance_id)
    VALUES (target_user_id, target_pattern_id, next_instance);

    -- Return the new row so the backend now knows exactly what was created.
    SELECT * FROM inventory
    WHERE user_id = target_user_id
      AND pattern_id = target_pattern_id
      AND instance_id = next_instance;
END //

DELIMITER ;

CALL ADD_SKIN_TO_USER(1, 81);

SELECT * FROM inventory
WHERE user_id = 1 AND pattern_id = 81;
#Call add_skin_to_user(1, 81); Gives a M9-Bayonet full fade to user with "user_id 1".

