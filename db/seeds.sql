INSERT INTO department (department_name)
VALUES ("Engineering and Technology"),
        ("Sales, Service, and Support"),
        ("Marketing and Communications"),
        ("Design"),
        ("Business Strategy"),
        ("Finance");
       
INSERT INTO roles (title, salary, department_id)
VALUES ("Engineering and Technology Manager", 105000, 001),
        ("Software Engineer", 85000, 001),
        ("Google Cloud Engineer", 85000, 001),
        ("Sales, Service, and Support Manager", 100000, 002),
        ("Strategy and Operations", 80000, 002),
        ("Creative Business Partner", 65000, 002),
        ("Marketing and Communications Manager", 120000, 003),
        ("Consumer Analytics Analyst", 80000, 003),
        ("Product Marketing", 65000, 003),
        ("Design Manager", 120000, 004),
        ("Motion Designer", 100000, 004),
        ("Interaction Designer", 100000, 004),
        ("Business Strategy Manager", 150000, 005),
        ("Senior Sales Representative", 100000, 005),
        ("Junior Sales Representative", 75000, 005),
        ("Finances Manager", 150000, 006),
        ("Revanue and Margin Analyst", 100000, 006),
        ("Competition Economist", 100000, 006)
;



INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("John", "Smith", 001, null),
        ("Cade", "Archer", 002, 001),
        ("Bonita", "Gutierrez", 003, 001),
        ("Blythe", "Stellars", 004, null),
        ("Colby", "McBride", 005, 004),
        ("Laibah", "Bull", 006, 004),
        ("Kate", "Burgess", 007, null),
        ("Mariya", "Watkins", 008, 007),
        ("Maggie", "Mcgee", 009, 007),
        ("Miranda", "Campbell", 010, null),
        ("Kathy", "Salgado", 011, 010),
        ("Drake", "Diaz", 012, 010),
        ("August", "Grimes", 013, null),
        ("Jed", "Armstrong", 014, 013),
        ("Rahim", "Taylor", 015, 013),
        ("Karter", "Wilkes", 016, null),
        ("Kristi", "Davi", 017, 016),
        ("Henna", "Barnard", 018, 016)
;