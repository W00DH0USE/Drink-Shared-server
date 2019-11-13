BEGIN;

TRUNCATE
  sociare_comments,
  sociare_articles,
  sociare_users
  RESTART IDENTITY CASCADE;

INSERT INTO sociare_users (user_name, full_name, password)
VALUES
  ('test', 'Test User', '$2a$12$KeBFRU46k2FoRRafkzNbiOMK2FvDKhc6ZxsaIID6wliaMiEwLDuQq'),
  ('dunder', 'Dunder Mifflin', '$2a$12$lHK6LVpc15/ZROZcKU00QeiD.RyYq5dVlV/9m4kKYbGibkRc5l4Ne'),
  ('b.deboop', 'Bodeep Deboop', '$2a$12$VQ5HgWm34QQK2rJyLc0lmu59cy2jcZiV6U1.bE8rBBnC9VxDf/YQO'),
  ('c.bloggs', 'Charlie Bloggs', '$2a$12$2fv9OPgM07xGnhDbyL6xsuAeQjAYpZx/3V2dnu0XNIR27gTeiK2gK'),
  ('s.smith', 'Sam Smith', '$2a$12$/4P5/ylaB7qur/McgrEKwuCy.3JZ6W.cRtqxiJsYCdhr89V4Z3rp.'),
  ('lexlor', 'Alex Taylor', '$2a$12$Hq9pfcWWvnzZ8x8HqJotveRHLD13ceS7DDbrs18LpK6rfj4iftNw.'),
  ('wippy', 'Ping Won In', '$2a$12$ntGOlTLG5nEXYgDVqk4bPejBoJP65HfH2JEMc1JBpXaVjXo5RsTUu'),
  ('Demo_User', 'Demo User', '$2a$12$z0JfoVsHbStvoGKLhUe6u.HPyK/LEweXFfDAhnn7YeFrBocl40sbi');

INSERT INTO sociare_articles (title, style, author_id, ingredients, Directions)
VALUES
  ('Moscow Mule', 
    'Cocktail', 
    1,
    '4 cups ginger beer, 
    2/3 cup lime juice, 
    1-1/4 cups vodka, 
    Ice cubes, 
    Lime slices (optional)', 
    'Combine the ginger beer, lime juice and vodka in a pitcher. Serve over ice. If desired, serve with lime slices.'),
  ('Bloody Mary', 
    'Cocktail', 
    2,
    '1/4 teaspoon plus 1/8 teaspoon celery salt, 
    1-1/2 to 2 cups ice cubes, 
    2 ounces vodka, 
    1 cup tomato juice, 
    1 tablespoon lemon juice, 
    1-1/2 teaspoons lime juice, 
    3/4 teaspoon Worcestershire sauce, 
    1/2 teaspoon prepared horseradish, 
    1/8 teaspoon pepper, 
    1/8 teaspoon hot pepper sauce', 
    'Using water, moisten rim of a highball glass. Sprinkle 1/4 teaspoon celery salt on a small plate; dip rim into salt. Discard remaining celery salt from plate. Fill a shaker three-fourths full with ice. Place remaining ice in prepared glass. Add vodka, juices, Worcestershire sauce, horseradish if desired, pepper, remaining celery salt and pepper sauce to shaker; cover and shake until condensation forms on exterior, 10-15 seconds. Strain into prepared glass. Garnish as desired.'),
  ('Pineapple Rum Punch', 
    'Cocktail', 
    3,
    '3-1/2 cups unsweetened pineapple juice,
    1-1/2 cups orange juice,
    1 cup coconut water,
    1 cup coconut rum,
    1 cup orange peach mango juice,
    1 cup dark rum,
    1/4 cup Key lime juice,
    3 tablespoons Campari liqueur or grenadine syrup', 
    'In a pitcher, combine all ingredients. Serve over ice.'),
  ('Brandy Old-Fashioned Sweet', 
    'Liqueurs', 
    4,
    '1 orange slice,
    1 maraschino cherry,
    1-1/2 ounces maraschino cherry juice,
    1 teaspoon bitters,
    1/4 to 1/3 cup ice cubes,
    1-1/2 ounces brandy,
    2 teaspoons water,
    1 teaspoon orange juice,
    3 ounces lemon-lime soda', 
    'In a rocks glass, muddle orange slice, cherry, cherry juice and bitters. Add ice. Pour in the brandy, water, orange juice and soda.'),
  ('Martini', 
    'Cocktail', 
    5,
    'Ice cubes
    3 ounces gin or vodka
    1/2 ounce dry vermouth
    Pimiento-stuffed olives', 
    'Fill a shaker three-fourths full with ice. Add gin and vermouth; cover and shake until condensation forms on outside of shaker. Strain into a chilled cocktail glass. Garnish with olives.'),
  ('Gin and Tonic', 
    'Cocktail', 
    6,
    '3 oz. gin, 4 oz. tonic water, 1 tablespoon lime juice, ice', 
    'Pour 3 oz. gin, 4 oz. tonic water and 1 tablespoon lime juice over ice in a chilled glass. Stir well.');

INSERT INTO sociare_comments (
  text,
  article_id,
  user_id
) VALUES
  (
    'This Recipe is amazing',
    1,
    2
  ),
  (
    'Yeh I agree it''s amazing',
    1,
    3
  ),
  (
    'I would go so far as to say it''s double amazing',
    1,
    4
  ),
  (
    'A-mazing!',
    1,
    5
  ),
  (
    'That''s some interesting lorems you raise',
    2,
    6
  ),
  (
    'Yeh totally I''d never thought I''d like this drink',
    2,
    1
  ),
  (
    'These were really good. Will make again.',
    2,
    3
  ),
  (
    'A blast from the past. Gin is definitely better (according to my taste buds, anyway). Shake until your had feels frozen. So refreshing and elegant! YUM!',
    6,
    6
  ),
  (
    'Didn''t enjoy this one unfortunately',
    4,
    4
  ),
  (
    'Ten ten ten ten ten ten ten!',
    3,
    3
  ),
  (
    'Perfect!!!',
    3,
    5
  ),
  (
    'Just a lonely comment',
    5,
    6
  ),
  (
    'Really? Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris??!',
    6,
    5
  ),
  (
    'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris for sure!!',
    6,
    1
  ),
  (
    'WOAH!!!!!',
    3,
    2
  ),
  (
    '°º¤ø,¸¸,ø¤º°`°º¤ø,¸,ø¤°º¤ø,¸¸,ø¤º°`°º¤ø,¸',
    3,
    4
  );

COMMIT;
