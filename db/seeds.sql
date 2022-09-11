INSERT INTO department (id, name)
VALUES (001, "Engineering and Technology"),
        (002, "Sales, Service, and Support"),
        (003, "Marketing and Communications"),
        (004, "Design"),
        (005, "Business Strategy"),
        (006, "Finance");
       
INSERT INTO role (id, title, salary, department_id)
VALUES (001, "Engineering and Technology Manager", 105000, 001),
        (002, "Software Engineer", 85000, 001),
        (003, "Google Cloud Engineer", 85000, 001),

        (004, "Sales, Service, and Support Manager", 100000, 002),
        (005, "Strategy and Operations", 80000, 002),
        (006, "Creative Business Partner", 65000, 002),

        (007, "Marketing and Communications Manager", 120000, 003),
        (008, "Consumer Analytics Analyst", 80000, 003),
        (009, "Product Marketing", 65000, 003),

        (010, "Design Manager", 120000, 004),
        (011, "Motion Designer", 100000, 004),
        (012, "Interaction Designer", 100000, 004),

        (013, "Business Strategy Manager", 150000, 005),
        (014, "Senior Sales Representative", 100000, 005),
        (015, "Junior Sales Representative", 75000, 005),

        (016, "Finances Manager", 150000, 006),
        (017, "Revanue and Margin Analyst", 100000, 006),
        (018, "Competition Economist", 100000, 006),
;

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (001, "John", "Smith", 001),
        (002, "Cade", "Archer", 002, 001),
        (003, "Bonita", "Gutierrez", 003, 001),

        (004, "Blythe", "Stellars", 004),
        (005, "Colby", "McBride", 005, 004),
        (006, "Laibah", "Bull", 006, 004),

        (007, "Kate", "Burgess", 007),
        (008, "Mariya", "Watkins", 008, 007),
        (009, "Maggie", "Mcgee", 009, 007),

        (010, "Miranda", "Campbell", 010),
        (011, "Kathy", "Salgado", 011, 010),
        (012, "Drake", "Diaz", 012, 010),

        (013, "August", "Grimes", 013),
        (014, "Jed", "Armstrong", 014, 013),
        (015, "Rahim", "Taylor", 015, 013),

        (016, "Karter", "Wilkes", 016),
        (017, "Kristi", "Davi", 017, 016),
        (018, "Henna", "Barnard", 018, 016),
;