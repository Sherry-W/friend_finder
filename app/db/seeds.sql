INSERT INTO questions (id, question) VALUES 
    (1, "In your experience, are the people that you have met on the internet are trustworthy?"), 
    (2, "The friendships you've started online better than the ones you've started in 'the real world'?"), 
    (3, "How likely do your friendships start online?"), 
    (4, "How likely do you think you will find someone as a long-term friendship with you?"), 
    (5, "How likely do you meet people who just want to have fun without being in a serious relationship?"),
    (6, "How likely do you go out with someone you met through online site (or app)?"), 
    (7, "How likely do you think that everyone’s views should be respected regardless of whether they are supported by facts or not?"),
    (8, "How likely do you feel more energetic after spending time with a group of people?"), 
    (9, "How likely do you like to spend time by yourself once in awhile?"), 
    (10, "How likely do you eat by yourself in a restaurant?");

INSERT INTO choices (id, choice) VALUES 
    (1, "Very Unlikely"), 
    (2, "Not Likely"), 
    (3, "Neutral"), 
    (4, "Likely"), 
    (5, "Very Likely");

-- INSERT INTO users (id, username, email, gender, answers) VALUES 
--     (1, "John Smith", "john@gmail.com", "Male", "[5, 5, 5, 5, 5, 5, 5, 5, 5, 5]"), 
--     (2, "John Joe", "johndoe@gmail.com", "Male", "[4, 4, 4, 4, 4, 4, 4, 4, 4, 4]"), 
--     (3, "Kelly Doe", "kelly@gmail.com", "Female", "[4, 4, 4, 4, 4, 4, 4, 4, 4, 4]"), 
--     (4, "Lilo", "lilo@gmail.com", "Female", "[5, 5, 5, 5, 5, 5, 5, 5, 5, 5]"), 
--     (5, "Kayla Taylor", "kaytaylor@gmail.com", "Female", "[3, 3, 3, 3, 3, 3, 3, 3, 3, 3]");
    
INSERT INTO users (id, username, email, gender, q1, q2, q3, q4, q5, q6, q7, q8, q9, q10) VALUES 
    (1, "John Smith", "john@gmail.com", "Male", 5, 5, 5, 5, 5, 5, 5, 5, 5, 5), 
    (2, "John Joe", "johndoe@gmail.com", "Male", 5, 5, 5, 5, 5, 5, 5, 5, 5, 5), 
    (3, "Kelly Doe", "kelly@gmail.com", "Female", 4, 4, 4, 4, 4, 4, 4, 4, 4, 4), 
    (4, "Lilo", "lilo@gmail.com", "Female", 5, 5, 5, 5, 5, 5, 5, 5, 5, 5), 
    (5, "Kayla Taylor", "kaytaylor@gmail.com", "Female", 3, 3, 3, 3, 3, 3, 3, 3, 3, 3);

-- INSERT INTO user_answers (id, users_id, q1, q2, q3, q4, q5, q6, q7, q8, q9, q10) VALUES 
--     (1, 1, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5), 
--     (2, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5), 
--     (3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4), 
--     (4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5), 
--     (5, 5, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3);