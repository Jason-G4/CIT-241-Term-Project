use Planets;

--Create role
CREATE ROLE planet_reader;

--Grant SELECT privileges to the role
GRANT SELECT ON planets.* TO planet_reader;

--Create users and assign the role
CREATE USER 'jason'@'localhost' IDENTIFIED BY 'password1';
CREATE USER 'ben'@'localhost' IDENTIFIED BY 'password2';

GRANT planet_reader TO 'jason'@'localhost';
GRANT planet_reader TO 'ben'@'localhost';

/*
For the security setup, I created a role called planet_reader 
to manage access control. This role was granted only SELECT privileges, 
ensuring users can view data but cannot modify, insert, delete, or create any database objects.

I then created several users (jason and ben) and assigned them the planet_reader role.
*/