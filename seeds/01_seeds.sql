INSERT INTO users (id, name, email, password) VALUES (1, 'John Lennon', 'hey_jude@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u');
INSERT INTO users (id, name, email, password) VALUES (2, 'Paul McCartney', 'let_it_be@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u');
INSERT INTO users (id, name, email, password) VALUES (3, 'George Harrison', 'help@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u');
INSERT INTO users (id, name, email, password) VALUES (4, 'Ringo Starr', 'yellow_submarine@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u');

INSERT INTO properties (id, owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active) 
VALUES (1, 1,'Speed lamp', 'description ', 'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg', 85234, 6, 6, 7, 'Canada', '651 Nami Road', 'Bohbatev', 'Alberta', '83680', true);
INSERT INTO properties (id, owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active) 
VALUES (2, 2, 'Blank corner', 'description ', 'https://images.pexels.com/photos/2080018/pexels-photo-2080018.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/2080018/pexels-photo-2080018.jpeg', 46058, 0, 5, 6, 'Canada', '1650 Hejto Center', 'Genwezuj', 'Newfoundland And Labrador', '44583', true);
INSERT INTO properties (id, owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active) 
VALUES (3, 3, 'Habit mix', 'description ', 'https://images.pexels.com/photos/1029599/pexels-photo-1029599.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/1029599/pexels-photo-1029599.jpeg', 82640, 0, 5, 5, 'Canada', '513 Powov Grove', 'Jaebvap', 'Ontario', '38051', true);
INSERT INTO properties (id, owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active) 
VALUES (4, 4, 'Headed know', 'description ', 'https://images.pexels.com/photos/1475938/pexels-photo-1475938.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/1475938/pexels-photo-1475938.jpeg', 2358, 2, 8, 0, 'Canada', '1392 Gaza Junction', 'Upetafpuv', 'Nova Scotia', '81059', true);

INSERT INTO reservations (id, guest_id, property_id, start_date, end_date) VALUES (1, 3, 3, '2018-09-11', '2018-09-26');
INSERT INTO reservations (id, guest_id, property_id, start_date, end_date) VALUES (2, 2, 2, '2019-01-04', '2019-02-01');
INSERT INTO reservations (id, guest_id, property_id, start_date, end_date) VALUES (3, 1, 4, '2021-10-01', '2021-10-14');
INSERT INTO reservations (id, guest_id, property_id, start_date, end_date) VALUES (4, 4, 1, '2014-10-21', '2014-10-23');

INSERT INTO property_reviews (id, guest_id, property_id, reservation_id, rating, message) VALUES (1, 2, 1, 3, 3, 'messages');
INSERT INTO property_reviews (id, guest_id, property_id, reservation_id, rating, message) VALUES (2, 1, 4, 1, 4, 'messages');
INSERT INTO property_reviews (id, guest_id, property_id, reservation_id, rating, message) VALUES (3, 4, 2, 2, 4, 'messages');
INSERT INTO property_reviews (id, guest_id, property_id, reservation_id, rating, message) VALUES (4, 3, 3, 4, 5, 'messages');