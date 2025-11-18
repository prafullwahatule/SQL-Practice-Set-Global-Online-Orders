-- =====================================================================
-- Table: customers
-- Purpose: Stores all customer details for Global Online Orders database
-- Columns:
--   CustomerID    -> Unique ID for each customer
--   CustomerName  -> Company or customer name
--   ContactName   -> Person to contact
--   Address       -> Street address
--   City          -> City name
--   PostalCode    -> Postal / ZIP code
--   Country       -> Country name
-- =====================================================================

CREATE TABLE customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerName VARCHAR(150),
    ContactName VARCHAR(150),
    Address VARCHAR(255),
    City VARCHAR(100),
    PostalCode VARCHAR(20),
    Country VARCHAR(100)
);


-- ===========================================================
-- Insert initial customer data
-- ===========================================================



INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) VALUES
(1, 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany'),
(2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México D.F.', '5021', 'Mexico'),
(3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', '5023', 'Mexico'),
(4, 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK'),
(5, 'Berglunds snabbköp', 'Christina Berglund', 'Berguvsvägen 8', 'Luleå', 'S-958 22', 'Sweden'),
(6, 'Blauer See Delikatessen', 'Hanna Moos', 'Forsterstr. 57', 'Mannheim', '68306', 'Germany'),
(7, 'Blondel père et fils', 'Frédérique Citeaux', '24 place Kléber', 'Strasbourg', '67000', 'France'),
(8, 'Bólido Comidas preparadas', 'Martín Sommer', 'C/ Araquil 67', 'Madrid', '28023', 'Spain'),
(9, 'Bon app', 'Laurence Lebihans', '12 rue des Bouchers', 'Marseille', '13008', 'France'),
(10, 'Bottom-Dollar Marketse', 'Elizabeth Lincoln', '23 Tsawassen Blvd.', 'Tsawassen', 'T2F 8M4', 'Canada'),
(11, 'Bs Beverages', 'Victoria Ashworth', 'Fauntleroy Circus', 'London', 'EC2 5NT', 'UK'),
(12, 'Cactus Comidas para llevar', 'Patricio Simpson', 'Cerrito 333', 'Buenos Aires', '1010', 'Argentina'),
(13, 'Centro comercial Moctezuma', 'Francisco Chang', 'Sierras de Granada 9993', 'México D.F.', '5022', 'Mexico'),
(14, 'Chop-suey Chinese', 'Yang Wang', 'Hauptstr. 29', 'Bern', '3012', 'Switzerland'),
(15, 'Comércio Mineiro', 'Pedro Afonso', 'Av. dos Lusíadas 23', 'São Paulo', '05432-043', 'Brazil'),
(16, 'Consolidated Holdings', 'Elizabeth Brown', 'Berkeley Gardens 12 Brewery', 'London', 'WX1 6LT', 'UK'),
(17, 'Drachenblut Delikatessend', 'Sven Ottlieb', 'Walserweg 21', 'Aachen', '52066', 'Germany'),
(18, 'Du monde entier', 'Janine Labrune', '67 rue des Cinquante Otages', 'Nantes', '44000', 'France'),
(19, 'Eastern Connection', 'Ann Devon', '35 King George', 'London', 'WX3 6FW', 'UK'),
(20, 'Ernst Handel', 'Roland Mendel', 'Kirchgasse 6', 'Graz', '8010', 'Austria'),
(21, 'Familia Arquibaldo', 'Aria Cruz', 'Rua Orós 92', 'São Paulo', '05442-030', 'Brazil'),
(22, 'FISSA Fabrica Inter. Salchichas S.A.', 'Diego Roel', 'C/ Moralzarzal 86', 'Madrid', '28034', 'Spain'),
(23, 'Folies gourmandes', 'Martine Rancé', '184 chaussée de Tournai', 'Lille', '59000', 'France'),
(24, 'Folk och fä HB', 'Maria Larsson', 'Åkergatan 24', 'Bräcke', 'S-844 67', 'Sweden'),
(25, 'Frankenversand', 'Peter Franken', 'Berliner Platz 43', 'München', '80805', 'Germany'),
(26, 'France restauration', 'Carine Schmitt', '54 rue Royale', 'Nantes', '44000', 'France'),
(27, 'Franchi S.p.A.', 'Paolo Accorti', 'Via Monte Bianco 34', 'Torino', '10100', 'Italy'),
(28, 'Furia Bacalhau e Frutos do Mar', 'Lino Rodriguez', 'Jardim das rosas n. 32', 'Lisboa', '1675', 'Portugal'),
(29, 'Galería del gastrónomo', 'Eduardo Saavedra', 'Rambla de Cataluña 23', 'Barcelona', '8022', 'Spain'),
(30, 'Godos Cocina Típica', 'José Pedro Freyre', 'C/ Romero 33', 'Sevilla', '41101', 'Spain'),
(31, 'Gourmet Lanchonetes', 'André Fonseca', 'Av. Brasil 442', 'Campinas', '04876-786', 'Brazil'),
(32, 'Great Lakes Food Market', 'Howard Snyder', '2732 Baker Blvd.', 'Eugene', '97403', 'USA'),
(33, 'GROSELLA-Restaurante', 'Manuel Pereira', '5ª Ave. Los Palos Grandes', 'Caracas', '1081', 'Venezuela'),
(34, 'Hanari Carnes', 'Mario Pontes', 'Rua do Paço 67', 'Rio de Janeiro', '05454-876', 'Brazil'),
(35, 'HILARIÓN-Abastos', 'Carlos Hernández', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', '5022', 'Venezuela'),
(36, 'Hungry Coyote Import Store', 'Yoshi Latimer', 'City Center Plaza 516 Main St.', 'Elgin', '97827', 'USA'),
(37, 'Hungry Owl All-Night Grocers', 'Patricia McKenna', '8 Johnstown Road', 'Cork', '', 'Ireland'),
(38, 'Island Trading', 'Helen Bennett', 'Garden House Crowther Way', 'Cowes', 'PO31 7PJ', 'UK'),
(39, 'Königlich Essen', 'Philip Cramer', 'Maubelstr. 90', 'Brandenburg', '14776', 'Germany'),
(40, 'La corne dabondance', 'Daniel Tonini', '67 avenue de l Europe', 'Versailles', '78000', 'France'),
(41, 'La maison dAsie', 'Annette Roulet', '1 rue Alsace-Lorraine', 'Toulouse', '31000', 'France'),
(42, 'Laughing Bacchus Wine Cellars', 'Yoshi Tannamuri', '1900 Oak St.', 'Vancouver', 'V3F 2K1', 'Canada'),
(43, 'Lazy K Kountry Store', 'John Steel', '12 Orchestra Terrace', 'Walla Walla', '99362', 'USA'),
(44, 'Lehmanns Marktstand', 'Renate Messner', 'Magazinweg 7', 'Frankfurt a.M.', '60528', 'Germany'),
(45, 'Lets Stop N Shop', 'Jaime Yorres', '87 Polk St. Suite 5', 'San Francisco', '94117', 'USA'),
(46, 'LILA-Supermercado', 'Carlos González', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', '3508', 'Venezuela'),
(47, 'LINO-Delicateses', 'Felipe Izquierdo', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', '4980', 'Venezuela'),
(48, 'Lonesome Pine Restaurant', 'Fran Wilson', '89 Chiaroscuro Rd.', 'Portland', '97219', 'USA'),
(49, 'Magazzini Alimentari Riuniti', 'Giovanni Rovelli', 'Via Ludovico il Moro 22', 'Bergamo', '24100', 'Italy'),
(50, 'Maison Dewey', 'Catherine Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', 'B-1180', 'Belgium'),
(51, 'Mère Paillarde', 'Jean Fresnière', '43 rue St. Laurent', 'Montréal', 'H1J 1C3', 'Canada'),
(52, 'Morgenstern Gesundkost', 'Alexander Feuer', 'Heerstr. 22', 'Leipzig', '4179', 'Germany'),
(53, 'North/South', 'Simon Crowther', 'South House 300 Queensbridge', 'London', 'SW7 1RZ', 'UK'),
(54, 'Océano Atlántico Ltda.', 'Yvonne Moncada', 'Ing. Gustavo Moncada 8585 Piso 20-A', 'Buenos Aires', '1010', 'Argentina'),
(55, 'Old World Delicatessen', 'Rene Phillips', '2743 Bering St.', 'Anchorage', '99508', 'USA'),
(56, 'Ottilies Käseladen', 'Henriette Pfalzheim', 'Mehrheimerstr. 369', 'Köln', '50739', 'Germany'),
(57, 'Paris spécialités', 'Marie Bertrand', '265 boulevard Charonne', 'Paris', '75012', 'France'),
(58, 'Pericles Comidas clásicas', 'Guillermo Fernández', 'Calle Dr. Jorge Cash 321', 'México D.F.', '5033', 'Mexico'),
(59, 'Piccolo und mehr', 'Georg Pipps', 'Geislweg 14', 'Salzburg', '5020', 'Austria'),
(60, 'Princesa Isabel Vinhoss', 'Isabel de Castro', 'Estrada da saúde n. 58', 'Lisboa', '1756', 'Portugal'),
(61, 'Blue Ocean Foods', 'Michael Brown', '12 Harbor Street', 'Sydney', '2000', 'Australia'),
(62, 'Sunrise Traders', 'Arjun Mehra', '88 Link Road', 'Mumbai', '400001', 'India'),
(63, 'Nordic Supply Co.', 'Emma Olsen', '45 Fjord Avenue', 'Oslo', '0150', 'Norway'),
(64, 'La Parisienne Market', 'Jean Morel', '22 Rue Lafayette', 'Paris', '75009', 'France'),
(65, 'Royal Spice Traders', 'Ayesha Khan', '19 Clifton Road', 'Karachi', '75500', 'Pakistan'),
(66, 'Desert Dunes Store', 'Omar Al-Sayed', '5 Palm Street', 'Dubai', '00000', 'UAE'),
(67, 'Tokyo Fresh Mart', 'Hiroshi Tanaka', '3-12 Shibuya', 'Tokyo', '150-0002', 'Japan'),
(68, 'Canadian Maple Foods', 'Sarah Wilson', '54 Queen Street', 'Toronto', 'M5H 2N2', 'Canada'),
(69, 'Brazilian Coffee Hub', 'Carlos Silva', '101 Rio Avenue', 'Rio de Janeiro', '20031', 'Brazil'),
(70, 'Berlin Grocery Point', 'Anna Schmidt', '9 Brandenburg Gate', 'Berlin', '10117', 'Germany'),
(71, 'London Food House', 'Oliver Smith', '33 Baker Street', 'London', 'W1U 6RT', 'UK'),
(72, 'New York Daily Mart', 'Sophia Davis', '89 Broadway', 'New York', '10007', 'USA'),
(73, 'Seoul Organic Shop', 'Minji Park', '16 Han River Road', 'Seoul', '04524', 'South Korea'),
(74, 'Mexico City Market', 'Juan Martinez', '71 Reforma Street', 'Mexico City', '06500', 'Mexico'),
(75, 'Cape Town Fresh Store', 'Liam Johnson', '44 Green Point', 'Cape Town', '8001', 'South Africa'),
(76, 'Bangkok Super Mart', 'Niran Chai', '25 Siam Road', 'Bangkok', '10330', 'Thailand'),
(77, 'Rome Essentials', 'Marco Rossi', '10 Colosseum Lane', 'Rome', '00184', 'Italy'),
(78, 'Madrid Gourmet Hub', 'Lucia Gomez', '18 Gran Via', 'Madrid', '28013', 'Spain'),
(79, 'Singapore Global Mart', 'Daniel Lee', '5 Marina Bay Street', 'Singapore', '018980', 'Singapore'),
(80, 'Zurich Alpine Foods', 'Nina Keller', '7 Bahnhofstrasse', 'Zurich', '8001', 'Switzerland'),
(81, 'Vienna Food Corner', 'Stefan Bauer', '21 Ringstraße', 'Vienna', '1010', 'Austria'),
(82, 'Stockholm Nordic Market', 'Elsa Berg', '12 Gamla Stan', 'Stockholm', '111 28', 'Sweden'),
(83, 'Jakarta Freshline', 'Rizky Putra', '66 Sunset Road', 'Jakarta', '10270', 'Indonesia'),
(84, 'Buenos Aires Supply', 'Martina Lopez', '39 Palermo Avenue', 'Buenos Aires', '1414', 'Argentina'),
(85, 'Helsinki Food Box', 'Vilma Heinonen', '3 Market Square', 'Helsinki', '00170', 'Finland'),
(86, 'Istanbul Bazaar Shop', 'Yusuf Demir', '59 Sultanahmet', 'Istanbul', '34122', 'Turkey'),
(87, 'Wellington Kiwi Store', 'James Stewart', '91 Lambton Quay', 'Wellington', '6011', 'New Zealand'),
(88, 'Cairo Spice Center', 'Ahmed Hassan', '7 Nile Street', 'Cairo', '11511', 'Egypt'),
(89, 'Lisbon Food Traders', 'Maria Silva', '14 Avenida Liberdade', 'Lisbon', '1250-140', 'Portugal'),
(90, 'Doha Global Supplies', 'Saad Al-Mansoor', '8 Pearl Road', 'Doha', '00000', 'Qatar'),
(91, 'Kuala Lumpur Food Hub', 'Aiman Rahman', '20 Petronas Avenue', 'Kuala Lumpur', '50050', 'Malaysia');