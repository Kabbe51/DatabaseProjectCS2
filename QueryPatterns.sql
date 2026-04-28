USE cs7;

SELECT * FROM patterns;

alter table patterns add constraint fk_skin_id foreign key (skinknife_id) references skins(skinknife_id);

INSERT INTO patterns (pattern_id, skinknife_id, pattern_name) VALUES (76, 16, 'baseVK');
INSERT INTO patterns (pattern_id, skinknife_id, pattern_name) VALUES (77, 16, 'baseVK7');
INSERT INTO patterns (pattern_id, skinknife_id, pattern_name) VALUES (78, 16, 'baseVK8');
INSERT INTO patterns (pattern_id, skinknife_id, pattern_name) VALUES (79, 16, 'baseVK9');
INSERT INTO patterns (pattern_id, skinknife_id, pattern_name) VALUES (80, 16, 'baseVK10');

INSERT INTO patterns (pattern_id, skinknife_id, pattern_name) VALUES (81, 17, 'fadeFull');
INSERT INTO patterns (pattern_id, skinknife_id, pattern_name) VALUES (82, 17, 'fade9060');
INSERT INTO patterns (pattern_id, skinknife_id, pattern_name) VALUES (83, 17, 'fade901010');
INSERT INTO patterns (pattern_id, skinknife_id, pattern_name) VALUES (84, 17, 'fade910');
INSERT INTO patterns (pattern_id, skinknife_id, pattern_name) VALUES (85, 17, 'fade99');

INSERT INTO patterns (pattern_id, skinknife_id, pattern_name) VALUES (86, 18, 'Sapphire');
INSERT INTO patterns (pattern_id, skinknife_id, pattern_name) VALUES (87, 18, 'Ruby');
INSERT INTO patterns (pattern_id, skinknife_id, pattern_name) VALUES (88, 18, 'Pink Galaxy');
INSERT INTO patterns (pattern_id, skinknife_id, pattern_name) VALUES (89, 18, 'Black Pearl');
INSERT INTO patterns (pattern_id, skinknife_id, pattern_name) VALUES (90, 18, 'Diamond');

INSERT INTO patterns (pattern_id, skinknife_id, pattern_name) VALUES (91, 19, 'FullWeb');
INSERT INTO patterns (pattern_id, skinknife_id, pattern_name) VALUES (92, 19, 'HalfWeb');
INSERT INTO patterns (pattern_id, skinknife_id, pattern_name) VALUES (93, 19, 'CenteredWeb');
INSERT INTO patterns (pattern_id, skinknife_id, pattern_name) VALUES (94, 19, 'TopWeb');
INSERT INTO patterns (pattern_id, skinknife_id, pattern_name) VALUES (95, 19, 'BottomWeb');

INSERT INTO patterns (pattern_id, skinknife_id, pattern_name) VALUES (96, 20, 'Blue Gem');
INSERT INTO patterns (pattern_id, skinknife_id, pattern_name) VALUES (97, 20, 'Gold Gem');
INSERT INTO patterns (pattern_id, skinknife_id, pattern_name) VALUES (98, 20, 'Backside Blue Gem');
INSERT INTO patterns (pattern_id, skinknife_id, pattern_name) VALUES (99, 20, 'Backside Gold Gem');
INSERT INTO patterns (pattern_id, skinknife_id, pattern_name) VALUES (100, 20, 'Frontside Blue Gem');


(101, 21, 'baseVK'), (102, 21, 'baseVK7'), (103, 21, 'baseVK8'), (104, 21, 'baseVK9'), (105, 21, 'baseVK10'),
(106, 22, 'fadeFull'), (107, 22, 'fade9060'), (108, 22, 'fade901010'), (109, 22, 'fade910'), (110, 22, 'fade99'),
(111, 23, 'Sapphire'), (112, 23, 'Ruby'), (113, 23, 'Pink Galaxy'), (114, 23, 'Black Pearl'), (115, 23, 'Diamond'),
(116, 24, 'FullWeb'), (117, 24, 'HalfWeb'), (118, 24, 'CenteredWeb'), (119, 24, 'TopWeb'), (120, 24, 'BottomWeb'),
(121, 25, 'Blue Gem'), (122, 25, 'Gold Gem'), (123, 25, 'Backside Blue Gem'), (124, 25, 'Backside Gold Gem'), (125, 25, 'Frontside Blue Gem'),
(126, 26, 'baseVK'), (127, 26, 'baseVK7'), (128, 26, 'baseVK8'), (129, 26, 'baseVK9'), (130, 26, 'baseVK10'),
(131, 27, 'fadeFull'), (132, 27, 'fade9060'), (133, 27, 'fade901010'), (134, 27, 'fade910'), (135, 27, 'fade99'),
(136, 28, 'Sapphire'), (137, 28, 'Ruby'), (138, 28, 'Pink Galaxy'), (139, 28, 'Black Pearl'), (140, 28, 'Diamond'),
(141, 29, 'FullWeb'), (142, 29, 'HalfWeb'), (143, 29, 'CenteredWeb'), (144, 29, 'TopWeb'), (145, 29, 'BottomWeb'),
(146, 30, 'Blue Gem'), (147, 30, 'Gold Gem'), (148, 30, 'Backside Blue Gem'), (149, 30, 'Backside Gold Gem'), (150, 30, 'Frontside Blue Gem');

-- Skinknife_id 31 till 50
INSERT INTO patterns (pattern_id, skinknife_id, pattern_name) VALUES
(151, 31, 'baseVK'), (152, 31, 'baseVK7'), (153, 31, 'baseVK8'), (154, 31, 'baseVK9'), (155, 31, 'baseVK10'),
(156, 32, 'fadeFull'), (157, 32, 'fade9060'), (158, 32, 'fade901010'), (159, 32, 'fade910'), (160, 32, 'fade99'),
(161, 33, 'Sapphire'), (162, 33, 'Ruby'), (163, 33, 'Pink Galaxy'), (164, 33, 'Black Pearl'), (165, 33, 'Diamond'),
(166, 34, 'FullWeb'), (167, 34, 'HalfWeb'), (168, 34, 'CenteredWeb'), (169, 34, 'TopWeb'), (170, 34, 'BottomWeb'),
(171, 35, 'Blue Gem'), (172, 35, 'Gold Gem'), (173, 35, 'Backside Blue Gem'), (174, 35, 'Backside Gold Gem'), (175, 35, 'Frontside Blue Gem'),
(176, 36, 'baseVK'), (177, 36, 'baseVK7'), (178, 36, 'baseVK8'), (179, 36, 'baseVK9'), (180, 36, 'baseVK10'),
(181, 37, 'fadeFull'), (182, 37, 'fade9060'), (183, 37, 'fade901010'), (184, 37, 'fade910'), (185, 37, 'fade99'),
(186, 38, 'Sapphire'), (187, 38, 'Ruby'), (188, 38, 'Pink Galaxy'), (189, 38, 'Black Pearl'), (190, 38, 'Diamond'),
(191, 39, 'FullWeb'), (192, 39, 'HalfWeb'), (193, 39, 'CenteredWeb'), (194, 39, 'TopWeb'), (195, 39, 'BottomWeb'),
(196, 40, 'Blue Gem'), (197, 40, 'Gold Gem'), (198, 40, 'Backside Blue Gem'), (199, 40, 'Backside Gold Gem'), (200, 40, 'Frontside Blue Gem'),
(201, 41, 'baseVK'), (202, 41, 'baseVK7'), (203, 41, 'baseVK8'), (204, 41, 'baseVK9'), (205, 41, 'baseVK10'),
(206, 42, 'fadeFull'), (207, 42, 'fade9060'), (208, 42, 'fade901010'), (209, 42, 'fade910'), (210, 42, 'fade99'),
(211, 43, 'Sapphire'), (212, 43, 'Ruby'), (213, 43, 'Pink Galaxy'), (214, 43, 'Black Pearl'), (215, 43, 'Diamond'),
(216, 44, 'FullWeb'), (217, 44, 'HalfWeb'), (218, 44, 'CenteredWeb'), (219, 44, 'TopWeb'), (220, 44, 'BottomWeb'),
(221, 45, 'Blue Gem'), (222, 45, 'Gold Gem'), (223, 45, 'Backside Blue Gem'), (224, 45, 'Backside Gold Gem'), (225, 45, 'Frontside Blue Gem'),
(226, 46, 'baseVK'), (227, 46, 'baseVK7'), (228, 46, 'baseVK8'), (229, 46, 'baseVK9'), (230, 46, 'baseVK10'),
(231, 47, 'fadeFull'), (232, 47, 'fade9060'), (233, 47, 'fade901010'), (234, 47, 'fade910'), (235, 47, 'fade99'),
(236, 48, 'Sapphire'), (237, 48, 'Ruby'), (238, 48, 'Pink Galaxy'), (239, 48, 'Black Pearl'), (240, 48, 'Diamond'),
(241, 49, 'FullWeb'), (242, 49, 'HalfWeb'), (243, 49, 'CenteredWeb'), (244, 49, 'TopWeb'), (245, 49, 'BottomWeb'),
(246, 50, 'Blue Gem'), (247, 50, 'Gold Gem'), (248, 50, 'Backside Blue Gem'), (249, 50, 'Backside Gold Gem'), (250, 50, 'Frontside Blue Gem');

select * from patterns;

UPDATE patterns
SET pattern_name = 'fade9055'
WHERE pattern_name = 'fade9060';
