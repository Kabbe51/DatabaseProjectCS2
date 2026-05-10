USE cs2;

SELECT * FROM users;

SELECT * FROM knives;

SELECT * FROM skins;

SELECT * FROM patterns;



SELECT
    u.username, -- retrieves username
    k.knife_name, -- retrieves knife_name
    s.skin_name, -- retrieves skin_name
    p.pattern_name, -- retrieves pattern_name
    i.count -- retrieves count
FROM inventory i -- sets inventory as the starting point for the data
INNER JOIN users u ON i.user_id = u.user_id -- looks up the user_id from the inventory in the users table to find who owns the item
INNER JOIN patterns p ON i.pattern_id = p.pattern_id -- looks up pattern_id to identify which specific pattern is in the inventory
INNER JOIN skins s ON p.skinknife_id = s.skinknife_id --
INNER JOIN knives k ON s.knife_id = k.knife_id;
-- This "select join" is used to show exactly what username has which exact knife, and what the knifes name is,
-- what skin the knife has and what pattern it has and how many of it the user has.

call add_skin_to_user(1, 1);

SELECT
    u.username,
    SUM(i.count) AS total_items,
    MAX(i.count) AS largest_stack
FROM inventory i
INNER JOIN users u ON i.user_id = u.user_id
GROUP BY u.username;
-- This is a grouping used to check exactly how many items a user has and what the largest stack of the same item is.

select * from inventory;