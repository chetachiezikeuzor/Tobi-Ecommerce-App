-- -----------------------------------------------------
-- Schema tobi-ecommerce
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `tobi-ecommerce`;

CREATE SCHEMA `tobi-ecommerce`;
USE `tobi-ecommerce` ;

-- -----------------------------------------------------
-- Table `tobi-ecommerce`.`product_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tobi-ecommerce`.`product_categories` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(255) NULL DEFAULT NULL,
  `category_image_url` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `tobi-ecommerce`.`products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tobi-ecommerce`.`products` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `sku` VARCHAR(255) DEFAULT NULL,
  `name` VARCHAR(255) DEFAULT NULL,
  `description` VARCHAR(655) DEFAULT NULL,
  `unit_price` DECIMAL(13,2) DEFAULT NULL,
  `image_url` VARCHAR(255) DEFAULT NULL,
  `image_alt_url` VARCHAR(255) DEFAULT NULL,
  `active` BIT DEFAULT 1,
  `featured` BIT DEFAULT 1,
  `units_in_stock` INT(11) DEFAULT NULL,
  `date_created` DATETIME(6) DEFAULT NULL,
  `last_updated` DATETIME(6) DEFAULT NULL,
  `category_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Add sample data
-- -----------------------------------------------------

INSERT INTO product_categories(category_name, category_image_url) VALUES ('Large & Extra Large', 'assets/images/categories/skyler-smith-unsplash.jpg');
INSERT INTO product_categories(category_name, category_image_url) VALUES ('Animal Friendly', 'assets/images/categories/vadim-kaipov-unsplash.jpg');
INSERT INTO product_categories(category_name, category_image_url) VALUES ('Home & Indoor', 'assets/images/categories/ceyda-ciftci-unsplash.jpg');
INSERT INTO product_categories(category_name, category_image_url) VALUES ('Flowers & Botanicals', 'assets/images/site/renee-fisher-unsplash.jpg');

-- -----------------------------------------------------
-- Large & Extra Large
-- -----------------------------------------------------

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('LARGE-AND-EXTRA-LARGE-1000', 'Bamboo Palm', 
'With dense foliage and lush fronds, the Bamboo Palm makes a statement. An air-purifying plant adaptable to low light, this palm can reach heights of up to 8 feet tall in the right conditions.', 
'assets/images/products/large_and_extra_large/bamboo-palm_base.jpg', 'assets/images/products/large_and_extra_large/bamboo-palm_detail.jpg', 
1,0,120,199.99,1, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('LARGE-AND-EXTRA-LARGE-1001', 'Burgany Rubber Tree', 
'Robust and dramatic, with large, glossy leaves. This striking plant is low-maintenance and durable.', 
'assets/images/products/large_and_extra_large/burgany-rubber-tree_base.jpg', 'assets/images/products/large_and_extra_large/burgany-rubber-tree_detail.jpg', 
1,0,125,129.99,1, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('LARGE-AND-EXTRA-LARGE-1002', 'Chinese Fan Palm', 
'This tropical palm is full and compact, showcasing large, dramatic fronds that resemble a folded paper fan. A slow-growing houseplant that does not require special care, the Chinese Fan Palm makes a statement. Non-toxic for the whole family — including pets — this potted palm is sure to add a tropical feel to your home.', 
'assets/images/products/large_and_extra_large/chinese-fan-palm-v2_xl_base.jpg', 'assets/images/products/large_and_extra_large/burgany-rubber-tree_detail.jpg', 
1,1,118,124.99,1, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('LARGE-AND-EXTRA-LARGE-1003', 'Dracaena Gold Star', 
'Whimsical and low-maintenance, with long, dark green and chartreuse striped leaves atop sturdy canes.', 
'assets/images/products/large_and_extra_large/dracaena-gold-lemon-lime_base.jpg', 'assets/images/products/large_and_extra_large/dracaena-gold-lemon-lime_detail.jpg', 
1,0,124,199.99,1, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('LARGE-AND-EXTRA-LARGE-1004', 'Dracaena Warneckii', 
'Whimsical and low-maintenance, with long, dark green and white striped leaves atop sturdy canes.', 
'assets/images/products/large_and_extra_large/dracaena-ulyses_base.jpg', 'assets/images/products/large_and_extra_large/dracaena-ulyses_detail.jpg', 
1,0,108,184.99,1, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('LARGE-AND-EXTRA-LARGE-1005', 'Staggered Dracaena Marginata', 
'The Staggered Dracaena Marginata is a great fuss-free plant that adds a dramatic touch to any tall space. Slow-growing and unique in appearance, this plant will be happy in low or indirect bright light and prefers to dry out between waterings. It appreciates pruning on occasion as brown tips appear.', 
'assets/images/products/large_and_extra_large/draceana-marginata-staggered_xl_base.jpg', 'assets/images/products/large_and_extra_large/draceana-marginata-staggered_xl_detail.jpg', 
1,0,120,199.99,1, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('LARGE-AND-EXTRA-LARGE-1006', 'Ficus Audrey', 
'Lively and structural Ficus with velvety soft emerald leaves atop a tall trunk.', 
'assets/images/products/large_and_extra_large/ficus-audrey_base.jpg', 'assets/images/products/large_and_extra_large/ficus-audrey_detail.jpg', 
1,0,125,249.99,1, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('LARGE-AND-EXTRA-LARGE-1007', 'Ficus Danielle', 
'The Ficus Danielle provides a classic touch of beauty in any home. Keep this plant happy with indirect bright light, as it will not tolerate low light. Let the soil dry some between waterings and dust the foilage regularly to keep the gorgeous round leaves dust and pest free.', 
'assets/images/products/large_and_extra_large/ficus-danielle_large_base.jpg', 'assets/images/products/large_and_extra_large/ficus-danielle_large_detail.jpg', 
1,0,118,169.99,1, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('LARGE-AND-EXTRA-LARGE-1008', 'Fiddle Leaf Fig', 
'Tall, sculptural, and dramatic. This plant will flourish in the right conditions.', 
'assets/images/products/large_and_extra_large/fiddle-leaf-fig_base.jpg', 'assets/images/products/large_and_extra_large/fiddle-leaf-fig_detail.jpg', 
1,0,124,229.99,1, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('LARGE-AND-EXTRA-LARGE-1009', 'Dracaena Green Jewel', 
'The Dracaena Green Jewel is known for its compact, emerald green leaves atop sturdy canes. This distinctive Dracaena in low maintenance and can tolerate a wide range of lighting, making it the perfect plant for virtually any spot in your home. Allow the soil to dry between waterings and place in low to indirect bright light to keep this plant happy. Dust the leaves regularly to keep the shiny leaves brilliant and deter pests.', 
'assets/images/products/large_and_extra_large/green-jewel_xl_base.jpg', 'assets/images/products/large_and_extra_large/green-jewel_xl_detail.jpg', 
1,0,108,199.99,1, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('LARGE-AND-EXTRA-LARGE-1010', 'Money Tree', 
'Popular for its use in Feng Shui, the Money Tree is a pet-friendly and air-purifying plant with large star-shaped leaves and a braided trunk to give your home a tropical feel.', 
'assets/images/products/large_and_extra_large/money-tree_base.jpg', 'assets/images/products/large_and_extra_large/money-tree_detail.jpg', 
1,0,120,169.99,1, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('LARGE-AND-EXTRA-LARGE-1011', 'Ponytail Palm Tree', 
'A spirited desert-dweller popular for its low-maintenance care, the Ponytail Palm Tree is a larger, more full version of our beloved Ponytail Palm.
With its bulb-like trunk and lively, thin leaves that spiral outwards, the Ponytail Palm Tree is a hardy succulent that adds exceptional character to any space.', 
'assets/images/products/large_and_extra_large/ponytail-palm_large_base.jpg', 'assets/images/products/large_and_extra_large/ponytail-palm_large_detail.jpg', 
1,0,125,149.99,1, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('LARGE-AND-EXTRA-LARGE-1012', 'Sansevieria', 
'Architectural and sturdy, this plant is easy to care for and highly adaptable. Also known as a Snake Plant and Mother-in-Law’s Tongue.', 
'assets/images/products/large_and_extra_large/sansevieria_base.jpg', 'assets/images/products/large_and_extra_large/sansevieria_detail.jpg', 
1,0,118,149.99,1, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('LARGE-AND-EXTRA-LARGE-1013', 'Schefflera Arboricola', 
'With dramatic, umbrella-shaped leaf formations and braided trunk, the Schefflera Arboricola is a no-fuss tree that’s nearly 4 feet tall. Perfect for cozy reading nooks and small spaces where it can receive bright, indirect light.', 
'assets/images/products/large_and_extra_large/schefflera-arboricola_base.jpg', 'assets/images/products/large_and_extra_large/schefflera-arboricola_detail.jpg', 
1,0,124,249.99,1, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('LARGE-AND-EXTRA-LARGE-1014', 'ZZ Plant', 
'With graceful layered leaves, the hardy ZZ Plant is a statement plant that can reach up to 2.5 feet tall. This drought-tolerant plant is tough, beautiful, and nearly indestructible.', 
'assets/images/products/large_and_extra_large/zz-plant_base.jpg', 'assets/images/products/large_and_extra_large/zz-plant_detail.jpg', 
1,0,108,149.99,1, NOW());

-- -----------------------------------------------------
-- Animal Friendly
-- -----------------------------------------------------

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('ANIMAL-FRIENDLY-1000', 'Parlor Palm', 
'The Parlor Palm is a favorite easy-care palm with tropical fronds known for its air purifying qualities.', 
'assets/images/products/animal_friendly/parlor-palm_base.jpg', 'assets/images/products/animal_friendly/parlor-palm_detail.jpg', 
1,0,120,69.99,2, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('ANIMAL-FRIENDLY-1001', 'Preserved Artisan Moss', 
'All the beauty of live foliage with none of the upkeep. This wooden planter with naturally preserved moss and ferns can bring life to any space, even a windowless one. Each piece is handcrafted and unique. There might be a slight odor upon unpacking, but it will subside in about 3 weeks.', 
'assets/images/products/animal_friendly/artisan-moss_base.jpg', 'assets/images/products/animal_friendly/artisan-moss_detail.jpg', 
1,0,125,135.99,2, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('ANIMAL-FRIENDLY-1002', 'Bromeliad Antonio Pink', 
'The “pink” in Bromeliad Antonio Pink describes the fuchsia bracts found in this cultivar, which sometimes produce short-blooming purple flowers. Its vibrant bract also gives it its nickname, the Pink Quill Plant. This plant is pet-friendly!', 
'assets/images/products/animal_friendly/bromeliad-pink-antonio_base.jpg', 'assets/images/products/animal_friendly/bromeliad-pink-antonio_detail.jpg', 
1,0,118,55.99,2, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('ANIMAL-FRIENDLY-1003', 'Bromeliad Vriesea Vogue', 
'The Bromeliad Vriesea Vogue is one of the most beautiful and distinctive pet-friendly plants, with a cone-like red and yellow spike that sometimes produces flowers. The colorful bract has earned this bromeliad the nickname Flaming Sword Plant.', 
'assets/images/products/animal_friendly/bromeliad-vriesea-vogue_base.jpg', 'assets/images/products/animal_friendly/bromeliad-vriesea-vogue_detail.jpg', 
1,0,124,55.99,2, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('ANIMAL-FRIENDLY-1004', 'Large Fan Palm', 
'The Fan Palm, Livistona chinensis, is a statement-making plant that takes very little effort to care for; it will be happy in a variety of indoor and outdoor spaces. It is partial to less frequent waterings and bright light, as these will help it retain its foliage. Sized to ship best, our large Fan Palm arrives with room to grow as it adapts to your home’s conditions. This plant is pet-friendly!', 
'assets/images/products/animal_friendly/fan-palm_base.jpg', 'assets/images/products/animal_friendly/fan-palm_detail.jpg', 
1,0,108,74.99,2, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('ANIMAL-FRIENDLY-1005', 'Monstera Leaves Trio', 
'Take a more sustainable approach to always fresh florals with our trio of artificial Monstera fronds measuring at 33" each. Pair them with your favorite vase for a more polished look—no water required. Leaves are made from a bendable wire so you can adjust the shape and height for easier styling to fit the vessel of your choice.', 
'assets/images/products/animal_friendly/faux-monstera-leaves_base.jpg', 'assets/images/products/animal_friendly/faux-monstera-leaves_detail.jpg', 
1,0,120,44.99,2, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('ANIMAL-FRIENDLY-1006', 'Pothos Plant', 
'Gift the look of a healthy trailing houseplant without the chore of pruning with our artificial Pothos Plant—you have enough on your plate. Available with or without a ceramic planter. ', 
'assets/images/products/animal_friendly/faux-pothos_base.jpg', 'assets/images/products/animal_friendly/faux-pothos_detail.jpg', 
1,0,125,89.99,2, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('ANIMAL-FRIENDLY-1007', 'Watermelon Peperomia', 
'No green thumb required to keep our artificial Watermelon Peperomia plant looking lively and lush. Available with or without a planter. ', 
'assets/images/products/animal_friendly/faux-watermelon-peperomia_base.jpg', 'assets/images/products/animal_friendly/faux-watermelon-peperomia_detail.jpg', 
1,0,118,22.49,2, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('ANIMAL-FRIENDLY-1008', 'Preserved Fern Kokedama', 
'A traditional Japanese art form, the word Kokedama translates to ’moss ball’. There is no upkeep necessary with this preserved fern kokedama – simply hang and enjoy, or sit on a flat surface. This is a real kokedama that has been naturally preserved. ', 
'assets/images/products/animal_friendly/kokedama-plant_base.jpg', 'assets/images/products/animal_friendly/kokedama-plant_detail.jpg', 
1,0,124,99.99,2, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('ANIMAL-FRIENDLY-1009', 'Large Majesty Palm', 
'The Majesty Palm is a popular tropical palm known for its graceful, long green fronds. It is a slow growing plant, but when well cared for can reach up to 10 feet in height, giving your space instant jungle vibes. Sized to ship best, our large Majesty Palm arrives with room to grow as it adapts to your home’s conditions.', 
'assets/images/products/animal_friendly/majesty-palm_base.jpg', 'assets/images/products/animal_friendly/majesty-palm_detail.jpg', 
1,0,108,79.99,2, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('ANIMAL-FRIENDLY-1010', 'Snake Zeylanica', 
'Finally, a Sansevieria you’ll never overwater. Skip the guesswork altogether with thisbeautiful Zeylanica Snake Plant. Drop its base into an 8" diameter planter or basket, and enjoy for many years to come.', 
'assets/images/products/animal_friendly/snake-zeylanica_base.jpg', 'assets/images/products/animal_friendly/snake-zeylanica_detail.jpg', 
1,0,120,49.99,2, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('ANIMAL-FRIENDLY-1011', 'Ric Rac Cactus', 
'The Ric Rac Cactus will win over any plant parent: Not only is it pet-friendly and easy to care for, but it offers ric rac- or fishbone-shaped trailing stems and the occasional night-blooming flower. It is considered non-toxic, safe to keep around curious cats and dogs.', 
'assets/images/products/animal_friendly/ric-rac-cactus_base.jpg', 'assets/images/products/animal_friendly/ric-rac-cactus_detail.jpg', 
1,0,125,68.49,2, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('ANIMAL-FRIENDLY-1012', 'Xerographica Air Plant', 
'Air Plants grow without being rooted in soil. This Xerographica is characterized by its silvery grey leaves that form a rosette shape. It measures approximately 5-6" in diameter. They require bright, indirect light and water weekly. All air plants are pet-friendly.', 
'assets/images/products/animal_friendly/xerographica-airplant_base.jpg', 'assets/images/products/animal_friendly/xerographica-airplant_detail.jpg', 
1,0,118,43.99,2, NOW());

-- -----------------------------------------------------
-- Home & Indoor
-- -----------------------------------------------------

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('HOME-AND-INDOOR-1000', 'Bromeliad Summer', 
'A colorful and low-maintenance air plant, the Bromeliad Summer is a striking houseplant that adds warmth to your home. With a bright and cheery magenta flower, this bromeliad is pet-friendly and makes for a great gift for any plant lover or beginner plant parent.', 
'assets/images/products/home_and_indoor/bromeliad-summer_base.jpg', 'assets/images/products/home_and_indoor/bromeliad-summer_detail.jpg', 
1,0,120,49.99,3, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('HOME-AND-INDOOR-1001', 'Hoya Krohniana', 
'The Hoya Krohniana stands out with its unique silver coloring, small compact leaves, and delicate vines. Place in indirect bright light to help it grow and flower, but know it can be maintained in lower lighting. Water only when dry, but water thoroughly. This is also an easy plant to propagate; keep the cutting to grow your collection or gift it to another plant lover.', 
'assets/images/products/home_and_indoor/hoya-eskimo_base.jpg', 'assets/images/products/home_and_indoor/hoya-eskimo_detail.jpg', 
1,0,125,49.99,3, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('HOME-AND-INDOOR-1002', 'Hoya Heart', 
'Give the gift of love or keep it all to yourself with the darling Hoya Heart. We’re sweet for this vining Hoya with its easy-going nature and ability to produce white and pink flowers. Unlike the common single-leafed Hoya Hearts, our Hoya Heart has the ability to produce new leaves and vines. Like all true love, the Hoya Heart takes time to produce its large heart-shaped leaves, but you’ll find it’s well worth the wait.', 
'assets/images/products/home_and_indoor/hoya-kerii_xs_basalt_base.jpg', 'assets/images/products/home_and_indoor/hoya-kerii_xs_basalt_detail.jpg', 
1,0,118,49.99,3, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('HOME-AND-INDOOR-1003', 'English Ivy', 
'The English Ivy ‘Glacier’ is a gorgeous trailing plant for any space. The colors range from icy greens and blues to a creamy leaf edge. This plant will grow quickly in indirect bright light but can also handle low light. This ivy will mature beautifully in a hanging pot, and appreciates a little extra humidity, so mist often.', 
'assets/images/products/home_and_indoor/ivy-glacier_base.jpg', 'assets/images/products/home_and_indoor/ivy-glacier_detail.jpg', 
1,0,124,39.99,3, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('HOME-AND-INDOOR-1004', 'Kangaroo Fern', 
'This lively and pet-friendly fern has unique deep green fronds. The Kangaroo Fern grows long fuzzy roots known as rhizomes; when in its natural habitat, this plant uses these roots to spread across the forest floor. Mist your fern often to mimic its natural humid environment.', 
'assets/images/products/home_and_indoor/kangaroo-fern_base.jpg', 'assets/images/products/home_and_indoor/kangaroo-fern_detail.jpg', 
1,0,108,69.99,3, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('HOME-AND-INDOOR-1005', 'Kimberly Queen Fern', 
'Graceful and timeless, this pet-friendly fern adds a touch of the tropics to any space. With sword-shaped fronds that multiply over time, the Kimberly Queen Fern is incredibly easy to care for.', 
'assets/images/products/home_and_indoor/kimberly-queen-fern_base.jpg', 'assets/images/products/home_and_indoor/kimberly-queen-fern_detail.jpg', 
1,0,120,69.99,3, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('HOME-AND-INDOOR-1006', 'Mini Money Tree', 
'A lively, pet-friendly plant topped with palmate leaves upon a stout trunk. A mini-version of the beloved braided Money Tree.', 
'assets/images/products/home_and_indoor/mini-money-tree_base.jpg', 'assets/images/products/home_and_indoor/mini-money-tree_detail.jpg', 
1,0,125,49.99,3, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('HOME-AND-INDOOR-1007', 'Monstera', 
'Lively and wild with large, tropical leaves. Also known as the Swiss Cheese Plant.', 
'assets/images/products/home_and_indoor/monstera_base.jpg', 'assets/images/products/home_and_indoor/monstera_detail.jpg', 
1,0,118,169.99,3, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('HOME-AND-INDOOR-1008', 'Neon Prayer Plant', 
'Vibrant and bright with patterned, neon green leaves.', 
'assets/images/products/home_and_indoor/neon-prayer-plant_base.jpg', 'assets/images/products/home_and_indoor/neon-prayer-plant_detail.jpg', 
1,0,124,69.99,3, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('HOME-AND-INDOOR-1009', 'Parlor Palm', 
'Easy and graceful, with lush dark green fronds.', 
'assets/images/products/home_and_indoor/parlor-palm_base.jpg', 'assets/images/products/home_and_indoor/parlor-palm_detail.jpg', 
1,0,108,69.99,3, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('HOME-AND-INDOOR-1010', 'Philodendron Heartleaf', 
'Trailing plant with whimsical heart-shaped leaves.', 
'assets/images/products/home_and_indoor/philodendron-heartleaf_base.jpg', 'assets/images/products/home_and_indoor/philodendron-heartleaf_detail.jpg', 
1,0,120,39.99,3, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('HOME-AND-INDOOR-1011', 'Red Prayer Plant', 
'Colorful and bold with hints of red on two-toned leaves.', 
'assets/images/products/home_and_indoor/red-prayer-plant_base.jpg', 'assets/images/products/home_and_indoor/red-prayer-plant_detail.jpg', 
1,0,125,149.99,3, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('HOME-AND-INDOOR-1012', 'Rhapis Palm', 
'A lively, architectural palm with fanlike fronds, the Rhapis Palm is a no-fuss tabletop plant ideal for end tables, bookcases, or shelves. Enjoying low to bright indirect sunlight, this pet-friendly palm makes for a nice leafy addition to any home.', 
'assets/images/products/home_and_indoor/rhaphis-palm_base.jpg', 'assets/images/products/home_and_indoor/rhaphis-palm_detail.jpg', 
1,0,118,79.99,3, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('HOME-AND-INDOOR-1013', 'Sansevieria Cylindrica', 
'With its tall spear-like blades, the Sansevieria Cylindrica stands out for those looking for a unique sculptural plant. It does well in indirect bright light, but can maintain in low light. Keep the blades dust-free by wiping them down monthly.', 
'assets/images/products/home_and_indoor/sansevieria_cylindrica_base.jpg', 'assets/images/products/home_and_indoor/sansevieria_cylindrica_detail.jpg', 
1,0,124,39.99,3, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('HOME-AND-INDOOR-1014', 'Sansevieria Moonshine', 
'A rare and stunning statement plant with stunning blue-silver leaves.', 
'assets/images/products/home_and_indoor/sansevieria-moonshine_base.jpg', 'assets/images/products/home_and_indoor/sansevieria-moonshine_detail.jpg', 
1,0,108,69.99,3, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('HOME-AND-INDOOR-1015', 'Tradescantia Nanouk', 
'This easy to care for Tradescantia Nanouk boasts delicate creamy green, purple, pink, and white leaves and is the perfect gift for any plant lover. This plant will tolerate lower light, although indirect light will help keep its colors vibrant. This vining plant is perfect for hanging pots and is easily propagated to share with a loved one.', 
'assets/images/products/home_and_indoor/tradescantia-nanouk_base.jpg', 'assets/images/products/home_and_indoor/tradescantia-nanouk_detail.jpg', 
1,0,124,79.99,3, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('HOME-AND-INDOOR-1016', 'Tradescantia Zebrina', 
'This eye-catching plant is easy to grow and thrives in almost any environment with low light to bright direct light. Boasting attractive, vining purple and green leaves with silver stripes, the Tradescantia Zebrina is ideal for hanging baskets and plant hangers.', 
'assets/images/products/home_and_indoor/tradescantia-zebrina_base.jpg', 'assets/images/products/home_and_indoor/tradescantia-zebrina_detail.jpg', 
1,0,108,39.99,3, NOW());

-- -----------------------------------------------------
-- Flowers & Botanicals
-- -----------------------------------------------------

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('FLOWERS-AND-BOTANICALS-1000', 'The Davallia & Protea Bouquet', 
'Bring excitement and energy into your space with shades of red. This bouquet is named after the vibrant Protea flowers and graceful Davallia leaves that sit amongst other tropical foliage. It comes pre-arranged with the option to include a glass vase. It can thrive for up to 3 weeks with fresh water and regular trims.', 
'assets/images/products/flowers_and_botanicals/fruit-davallia_protea-bouquet_base.jpg', 'assets/images/products/flowers_and_botanicals/fruit-davallia_protea-bouquet_detail.jpg', 
1,0,120,89.99,4, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('FLOWERS-AND-BOTANICALS-1001', 'Petite Orange Orchid', 
'Add a pop of orange to your tablescape with this popular Phalaenopsis orchid. One of the easiest varieties to grow as a houseplant, it is affectionately called the beginner orchid. You may notice a small amount of blooms on your orchid upon delivery. These blooms will open quicker in a warm indoor setting. It will typically bloom about once a year, for up to three months. After a blooming cycle, the flowers will wilt and fall off. This is the orchid’s way to store up energy to re-bloom again next season.', 
'assets/images/products/flowers_and_botanicals/orchids_petite-orange_base.jpg', 'assets/images/products/flowers_and_botanicals/orchids_petite-orange_detail.jpg', 
1,0,125,74.99,4, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('FLOWERS-AND-BOTANICALS-1002', 'Petite Pink Orchid', 
'Add a pop of pink to your tablescape with this popular Phalaenopsis orchid. One of the easiest varieties to grow as a houseplant, it is affectionately called the beginner orchid. You may notice a small amount of blooms on your orchid upon delivery. These blooms will open quicker in a warm indoor setting. It will typically bloom about once a year, for up to three months. After a blooming cycle, the flowers will wilt and fall off. This is the orchid’s way to store up energy to re-bloom again next season.', 
'assets/images/products/flowers_and_botanicals/petite-pink-orchid_base.jpg', 'assets/images/products/flowers_and_botanicals/petite-pink-orchid_detail.jpg', 
1,0,118,74.99,4, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('FLOWERS-AND-BOTANICALS-1003', 'Pink Anthurium', 
'This bright pink Anthurium lives up to its nickname, the flamingo flower. Rarely without their showy blooms, Anthuriums are know as the world’s longest blooming houseplant  Each bloom can last up to eight weeks, and new ones will pop up often. These aren’t actual flowers, but modified waxy leaves. Anthuriums flourish and bloom best in bright indirect light.', 
'assets/images/products/flowers_and_botanicals/pink-anthurium_base.jpg', 'assets/images/products/flowers_and_botanicals/pink-anthurium_detail.jpg', 
1,0,124,67.99,4, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('FLOWERS-AND-BOTANICALS-1004', 'Pink Orchid', 
'Dramatic in color but not in care, the Phalaenopsis orchid—or beginner orchid—is one of the easiest varieties to grow as a houseplant. You may notice a small amount of blooms on your orchid upon delivery. These blooms will open quicker in a warm indoor setting. It will typically bloom about once a year, for up to three months. After a blooming cycle, the flowers will wilt and fall off. This is the orchid’s way to store up energy to re-bloom again next season.', 
'assets/images/products/flowers_and_botanicals/pink-orchid_base.jpg', 'assets/images/products/flowers_and_botanicals/pink-orchid_detail.jpg', 
1,0,108,97.99,4, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('FLOWERS-AND-BOTANICALS-1005', 'Red Anthurium', 
'Also known as the flamingo flower, the Anthurium is the world’s longest blooming houseplant. It is rarely without its showy blooms. These aren’t actual flowers, but modified waxy leaves that circle the pointed spadix, home to the plant\'s real, and very tiny, flowers. Each can last up to eight weeks—bringing a fun pop of color to your space year round.', 
'assets/images/products/flowers_and_botanicals/red-anthurium_base.jpg', 'assets/images/products/flowers_and_botanicals/red-anthurium_detail.jpg', 
1,0,120,67.99,4, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('FLOWERS-AND-BOTANICALS-1006', 'Spotted Orchid', 
'Meet the Spotted Orchid—a beginner friendly Phalaenopsis orchid with a little extra flair. You may notice a small amount of blooms on your orchid upon delivery. These blooms will open quicker in a warm indoor setting. It will typically bloom about once a year, for up to three months. After a blooming cycle, the flowers will wilt and fall off. This is the orchid’s way to store up energy to re-bloom again next season.', 
'assets/images/products/flowers_and_botanicals/spotted-orchid_base.jpg', 'assets/images/products/flowers_and_botanicals/spotted-orchid_detail.jpg', 
1,0,125,97.99,4, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('FLOWERS-AND-BOTANICALS-1007', 'The Greens & Anthuriums Bouquet', 
'The ultimate centerpiece. Our botanical bouquets are inspired by biophilia—the hypothesis that humans have a natural affinity for life and other living things. Including natural elements in your physical spaces, like adding greens to your home decor, can help actively nurture the biophilic bond which has a direct positive effect on your well-being. This low-maintenance bouquet can thrive for up to 3 weeks with fresh water and occasional trims.', 
'assets/images/products/flowers_and_botanicals/the-greens-anthurium-bouquet_base.jpg', 'assets/images/products/flowers_and_botanicals/the-greens-anthurium-bouquet_detail.jpg', 
1,0,118,89.99,4, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('FLOWERS-AND-BOTANICALS-1008', 'Watercolor Blue Orchid', 
'Watercolor orchids are Phalaenopsis orchids dyed using a safe and natural method. You may notice a small amount of blooms on your orchid upon delivery. These blooms will open quicker in a warm indoor setting. Phalaenopsis orchids typically bloom about once a year, for up to three months. After a blooming cycle, the flowers will wilt and fall off. This is the orchid’s way to store up energy to re-bloom again next season. When they re-bloom, their flowers will be their natural color.', 
'assets/images/products/flowers_and_botanicals/watercolor-blue-orchid_base.jpg', 'assets/images/products/flowers_and_botanicals/watercolor-blue-orchid_detail.jpg', 
1,0,124,98.99,4, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('FLOWERS-AND-BOTANICALS-1009', 'Watercolor Pink Orchid', 
'Watercolor orchids are Phalaenopsis orchids dyed using a safe and natural method. You may notice a small amount of blooms on your orchid upon delivery. These blooms will open quicker in a warm indoor setting. Phalaenopsis orchids typically bloom about once a year, for up to three months. After a blooming cycle, the flowers will wilt and fall off. This is the orchid’s way to store up energy to re-bloom again next season. When they re-bloom, their flowers will be their natural color.', 
'assets/images/products/flowers_and_botanicals/watercolor-pink-orchid_base.jpg', 'assets/images/products/flowers_and_botanicals/watercolor-pink-orchid_detail.jpg', 
1,0,108,97.99,4, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('FLOWERS-AND-BOTANICALS-1010', 'Watercolor Purple Orchid', 
'Watercolor orchids are Phalaenopsis orchids dyed using a safe and natural method. You may notice a small amount of blooms on your orchid upon delivery. These blooms will open quicker in a warm indoor setting. Phalaenopsis orchids typically bloom about once a year, for up to three months. After a blooming cycle, the flowers will wilt and fall off. This is the orchid’s way to store up energy to re-bloom again next season. When they re-bloom, their flowers will be their natural color.', 
'assets/images/products/flowers_and_botanicals/watercolor-purple-orchid_base.jpg', 'assets/images/products/flowers_and_botanicals/watercolor-purple-orchid_detail.jpg', 
1,0,120,97.99,4, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('FLOWERS-AND-BOTANICALS-1011', 'White Orchid', 
'With its elegant stems and vibrant white flowers, this Phalaenopsis orchid makes any space feel more chic. You may notice a small amount of blooms on your orchid upon delivery. These blooms will open quicker in a warm indoor setting. The Phalaenopsis will typically bloom about once a year, for up to three months. After a blooming cycle, the flowers will wilt and fall off. This is the orchid’s way to store up energy to re-bloom again next season.', 
'assets/images/products/flowers_and_botanicals/white-orchid_base.jpg', 'assets/images/products/flowers_and_botanicals/white-orchid_detail.jpg', 
1,0,125,149.99,4, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('FLOWERS-AND-BOTANICALS-1012', 'Petite White Orchid', 
'Affectionately nicknamed the beginner orchid, the popular Phalaenopsis orchid is one of the easiest varieties of orchids to grow as a houseplant. This orchid will typically bloom once a year for up to three months. Upon delivery, you may notice a small amount of blooms on your orchid – these blooms will open quicker in a warm, indoor setting. After a blooming cycle, the flowers will wilt and fall off and the orchid will store up energy to re-bloom again next season.', 
'assets/images/products/flowers_and_botanicals/white-orchid_petite_base.jpg', 'assets/images/products/flowers_and_botanicals/white-orchid_petite_detail.jpg', 
1,0,118,74.99,4, NOW());

INSERT INTO products (sku, name, description, image_url, image_alt_url, active, featured, units_in_stock,
unit_price, category_id, date_created) VALUES ('FLOWERS-AND-BOTANICALS-1013', 'The Yellow Heliconia & Protea Bouquet', 
'Transport to the tropics. This bouquet is named after the vibrant Heliconia and Protea flowers that sit amongst other tropical greens. It comes pre-arranged with the option to include a glass vase. It can thrive for up to 3 weeks with fresh water and regular trims.', 
'assets/images/products/flowers_and_botanicals/yellow-heliconia-and-protea-bouquet_base.jpg', 'assets/images/products/flowers_and_botanicals/yellow-heliconia-and-protea-bouquet_detail.jpg', 
1,0,118,79.99,4, NOW());
