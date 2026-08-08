CREATE DATABASE music_streaming_app;
USE music_streaming_app;
CREATE TABLE playlist (
playlist_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
created_by VARCHAR(50) NOT NULL);



INSERT INTO playlist (playlist_id,name,created_by) 
VALUES ( NULL ,'Bollywood Hits','jaydeep'),
(NULL,'Chill Vibes','kuldeep'),
(NULL, 'Workout Mix','rajdeep' );

SELECT name , created_by FROM playlist WHERE created_by = 'jaydeep';