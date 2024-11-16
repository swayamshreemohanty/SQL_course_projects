DROP TABLE IF EXISTS projects_employees;
DROP TABLE IF EXISTS projects;
DROP TABLE IF EXISTS intranet_accounts;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS teams;
DROP TABLE IF EXISTS company_buildings;


CREATE TABLE projects (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    deadline DATE
);

CREATE TABLE company_buildings (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);


CREATE TABLE teams (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    building_id INT REFERENCES company_buildings(id) ON DELETE SET NULL -- Assign NULL if the building is deleted
);



CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    birthdate DATE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    team_id INT REFERENCES teams(id) ON DELETE SET NULL -- Assign NULL if the team is deleted
);

CREATE TABLE intranet_accounts (
    id SERIAL PRIMARY KEY,
    email VARCHAR(255) REFERENCES employees(email) ON DELETE CASCADE,
    "password" VARCHAR(255) NOT NULL
);


CREATE TABLE projects_employees (
    id Serial  PRIMARY KEY,
    project_id INT REFERENCES projects(id) ON DELETE CASCADE,
    employee_id INT REFERENCES employees(id) ON DELETE CASCADE
);