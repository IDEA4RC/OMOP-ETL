CREATE TABLE care_site (
    care_site_name VARCHAR(255)
);


CREATE TABLE visit_occurrence (
    visit_start_date DATE
);

CREATE USER postgres2 WITH
    PASSWORD 'mysecretpassword';


GRANT ALL PRIVILEGES ON DATABASE omopdb TO postgres;

