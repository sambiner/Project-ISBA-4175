CREATE DATABASE ISBA_4715_Project;

SELECT tool_id, tool_name 
FROM Tools
WHERE tool_id = 'VG9vbC0yMTM1';

SELECT company_id, tool_id,
	COUNT(company_id)
FROM Company_Tool ct
GROUP BY company_id
ORDER BY company_id DESC;

# Delete an instance of Webtrends, Underscore.js, jQuery, ASP.net, Amazon Web Serivces, Modernizr, MS SharePoint, Bootstrap, and Font Awesome
# from the Tools table (I accidentally clicked the add thing in my Python script twice for Valero's Tech Stack)

#DONE: DONT RUN AGAIN
/*DELETE FROM Tools 
WHERE tool_id IN (
    SELECT tool_id
    FROM (
        SELECT tool_id
        FROM Tools
        WHERE tool_id = 'VG9vbC05MDk=' AND tool_name = 'Webtrends'
        LIMIT 1
    ) AS subquery
LIMIT 1
);*/

#INSERT INTO Tools (tool_id, tool_name) VALUES ('VG9vbC05MDk=', 'Webtrends');

#Done: DONT RUN AGAIN
/*DELETE FROM Tools 
WHERE tool_id IN (
    SELECT tool_id
    FROM (
        SELECT tool_id
        FROM Tools
        WHERE tool_id = 'VG9vbC04NTk=' AND tool_name = 'Underscore.js'
        LIMIT 1
    ) AS subquery
)
LIMIT 1;*/

/*DELETE FROM Tools 
WHERE tool_id IN (
    SELECT tool_id
    FROM (
        SELECT tool_id
        FROM Tools
        WHERE tool_id = 'VG9vbC05OTU=' AND tool_name = 'jQuery'
    ) AS subquery
)
LIMIT 1;*/

/*DELETE FROM Tools 
WHERE tool_id IN (
    SELECT tool_id
    FROM (
        SELECT tool_id
        FROM Tools
        WHERE tool_id = 'VG9vbC01MDY=' AND tool_name = 'ASP.NET'
    ) AS subquery
)
LIMIT 1;*/

/*DELETE FROM Tools 
WHERE tool_id IN (
    SELECT tool_id
    FROM (
        SELECT tool_id
        FROM Tools
        WHERE tool_id = 'VG9vbC00Nw==' AND tool_name = 'Amazon Web Services'
    ) AS subquery
)
LIMIT 1;*/

/*DELETE FROM Tools 
WHERE tool_id IN (
    SELECT tool_id
    FROM (
        SELECT tool_id
        FROM Tools
        WHERE tool_id = 'VG9vbC01MjY=' AND tool_name = 'Modernizr'
    ) AS subquery
)
LIMIT 1;*/

/*DELETE FROM Tools 
WHERE tool_id IN (
    SELECT tool_id
    FROM (
        SELECT tool_id
        FROM Tools
        WHERE tool_id = 'VG9vbC01MTE=' AND tool_name = 'Microsoft SharePoint'
    ) AS subquery
)
LIMIT 1;*/

/*DELETE FROM Tools 
WHERE tool_id IN (
    SELECT tool_id
    FROM (
        SELECT tool_id
        FROM Tools
        WHERE tool_id = 'VG9vbC0xMDg=' AND tool_name = 'Bootstrap'
    ) AS subquery
)
LIMIT 1;*/

/*DELETE FROM Tools 
WHERE tool_id IN (
    SELECT tool_id
    FROM (
        SELECT tool_id
        FROM Tools
        WHERE tool_id = 'VG9vbC0yNzE=' AND tool_name = 'Font Awesome'
    ) AS subquery
)
LIMIT 1;*/

/*CREATE TABLE Companies (
	company_id INT AUTO_INCREMENT PRIMARY KEY,
	company_name VARCHAR(255) UNIQUE NOT NULL,
	company_domain VARCHAR(255) UNIQUE NOT NULL,
	-- Both size and revenue figures gotten from company's Wikipedia page
	company_size INT,
	company_revenue BIGINT
);*/

/*ALTER TABLE Companies 
MODIFY COLUMN company_revenue BIGINT;*/

/*INSERT INTO Companies (company_name, company_domain, company_size, company_revenue) VALUES
	#1
	('Costco Wholesale Corporation','costco.com',304000,226950000000),
	#2
	('The Home Depot, Incorporated','homedepot.com',490600,151160000000),
	#3
	('Valero Energy Corporation','valero.com',10015,117033000000),
	#4
	('Centene Corporation','centene.com',71300,111115000000),
	#5
	('Pfizer Incorporated','pfizer.com',83000,100300000000),
	#6
	('PepsiCo Incorporated','pepsico.com',315000,86140000000),
	#7
	('Citigroup Incorporated','citigroup.com',240000,75340000000),
	#8
	('General Electric Company','ge.com',172000,76560000000),
	#9
	('Wells Fargo & Company', 'wellsfargo.com',268531,73800000000),
	#10
	('Aetna Incorporated','aetna.com',47950,60600000000),
	#11
	('StoneX Group Incorporated','stonex.com',3725,64380000000),
	#12
	('Publix Super Markets, Incorporated','publix.com',240000,41100000000),
	#13
	('General Dynamics Corporation','gd.com',106500,39410000000),
	#14
	('The Traverlers Companies, Incorporated','travelers.com',30800,31581000000),
	#15
	('Visa Incorporated','visa.com',26500,29310000000),
	#16
	('CBRE Group, Incorporated','cbre.com',115000,27750000000),
	#17
	('United Natural Foods, Incorporated','unfi.com',28300,27000000000),
	#18
	('NRG Energy, Incorporated','nrg.com',6635,26990000000),
	#19
	('Occidental Petroleum Corporation','oxy.com',11618,26314000000),
	#20
	('AutoNation', 'autonation.com',21000,25800000000);*/

/*CREATE TABLE Company_Tool (
	company_id INT,
	tool_id VARCHAR(255)
);*/

#Completed: 20 - AutoNation
/*INSERT INTO Company_Tool (company_id, tool_id) VALUES
	(20,'VG9vbC00Nw=='),
	(20,'VG9vbC0xMDk3'),
	(20,'VG9vbC05MTQ='),
	(20,'VG9vbC0zNjI='),
	(20,'VG9vbC01MDY='),
	(20,'VG9vbC0zMTA='),
	(20,'VG9vbC03MTQ='),
	(20,'VG9vbC0xMDg='),
	(20,'VG9vbC0xMDY1'),
	(20,'VG9vbC0xNTA='),
	(20,'VG9vbC05OTU='),
	(20,'VG9vbC03NTI=');*/

#Completed: 19 - Occidental Petroleum Corporation
/*INSERT INTO Company_Tool (company_id, tool_id) VALUES
	(19,'VG9vbC0xMDk3'),
	(19,'VG9vbC0xNjAy'),
	(19,'VG9vbC0xMTUy'),
	(19,'VG9vbC0yMTM1'),
	(19,'VG9vbC0yMTM1'),
	(19,'VG9vbC01Njc='),
	(19,'VG9vbC0yNzAx'),
	(19,'VG9vbC0zODg='),
	(19,'VG9vbC0zMDc1'),
	(19,'VG9vbC01MzY='),
	(19,'VG9vbC0xOTUz'),
	(19,'VG9vbC05ODI='),
	(19,'VG9vbC0xOTk2'),
	(19,'VG9vbC0xNjU2'),
	(19,'VG9vbC0xODUy'),
	(19,'VG9vbC0xMTQx'),
	(19,'VG9vbC0xNTY3'),
	(19,'VG9vbC0xNjM3'),
	(19,'VG9vbC0xNzE3'),
	(19,'VG9vbC0zNjAx'),
	(19,'VG9vbC0yNDM2'),
	(19,'VG9vbC0xNDcx'),
	(19,'VG9vbC0yMTk1'),
	(19,'VG9vbC05OTU='),
	(19,'VG9vbC0xMDg=');*/

/*DELETE FROM Company_Tool  
WHERE tool_id IN (
    SELECT tool_id
    FROM (
        SELECT tool_id
        FROM Company_Tool 
        WHERE tool_id = 'VG9vbC0yMTM1' AND company_id = 19
    ) AS subquery
)
LIMIT 1;*/

#INSERT INTO Company_Tool (company_id, tool_id) VALUES (19, 'VG9vbC0yMDg2'); 

#Completed: 18 - NRG Energy
/*INSERT INTO Company_Tool(company_id, tool_id) VALUES
	(18,'VG9vbC00Nw=='),
	(18,'VG9vbC0xMDg='),
	(18,'VG9vbC0yMzg='),
	(18,'VG9vbC02Nzk='),
	(18,'VG9vbC03MDA='),
	(18,'VG9vbC02MA=='),
	(18,'VG9vbC01MDY='),
	(18,'VG9vbC0zNjI='),
	(18,'VG9vbC05MTQ='),
	(18,'VG9vbC0xMDk3'),
	(18,'VG9vbC0yMg=='),
	(18,'VG9vbC05OTU='),
	(18,'VG9vbC01OA=='),
	(18,'VG9vbC04NTU='),
	(18,'VG9vbC01NjY='),
	(18,'VG9vbC02MDY='),
	(18,'VG9vbC0xMTA4'),
	(18,'VG9vbC0xMA=='),
	(18,'VG9vbC0yMjA='),
	(18,'VG9vbC00NDk='),
	(18,'VG9vbC00Ng=='),
	(18,'VG9vbC04NTA='),
	(18,'VG9vbC02OTg='),
	(18,'VG9vbC02OTk='),
	(18,'VG9vbC01MjY=');*/

#Completed: 17 - United Natural Foods
/*INSERT INTO Company_Tool (company_id, tool_id) VALUES
	(17,'VG9vbC00Nw=='),
	(17,'VG9vbC0zNzI='),
	(17,'VG9vbC04NzM='),
	(17,'VG9vbC04NzM='),
	(17,'VG9vbC02MDY='),
	(17,'VG9vbC05OTU='),
	(17,'VG9vbC0zNjI='),
	(17,'VG9vbC05MTQ='),
	(17,'VG9vbC01MDY='),
	(17,'VG9vbC02ODQ='),
	(17,'VG9vbC01MjY='),
	(17,'VG9vbC0xMDg='),
	(17,'VG9vbC0zMjE='),
	(17,'VG9vbC02MA=='),
	(17,'VG9vbC0xMDAw'),
	(17,'VG9vbC04NTM='),
	(17,'VG9vbC01NjY='),
	(17,'VG9vbC0zOTk='),
	(17,'VG9vbC0yMw=='),
	(17,'VG9vbC0xNDY='),
	(17,'VG9vbC05NTU='),
	(17,'VG9vbC0zMTY='),
	(17,'VG9vbC01OTA=');*/

#Completed: 16 - CBRE
#INSERT INTO Company_Tool (company_id, tool_id) VALUES (16, NULL);

#Completed: 15 - Visa
/*INSERT INTO Company_Tool (company_id, tool_id) VALUES
	(15,'VG9vbC05OTU='),
	(15,'VG9vbC00Njc='),
	(15,'VG9vbC0zOA=='),
	(15,'VG9vbC02ODQ='),
	(15,'VG9vbC0xNTA='),
	(15,'VG9vbC0yMw=='),
	(15,'VG9vbC0zMTg='),
	(15,'VG9vbC0zMjE='),
	(15,'VG9vbC02MA=='),
	(15,'VG9vbC01OTU='),
	(15,'VG9vbC0xNjQw'),
	(15,'VG9vbC01MDY='),
	(15,'VG9vbC0xNTE2'),
	(15,'VG9vbC0xMDAw'),
	(15,'VG9vbC0zOTI3'),
	(15,'VG9vbC01NjY='),
	(15,'VG9vbC01MzY='),
	(15,'VG9vbC0xMDg='),
	(15,'VG9vbC03NTY='),
	(15,'VG9vbC0xMDM2'),
	(15,'VG9vbC0yNzE='),
	(15,'VG9vbC0zMTY='),
	(15,'VG9vbC0xNDg4'),
	(15,'VG9vbC0zMDIx'),
	(15,'VG9vbC01OA==');*/

#Completed: 14 - Travelers
/*INSERT INTO Company_Tool (company_id, tool_id) VALUES
	(14,'VG9vbC0zNjI='),
	(14,'VG9vbC01MDY='),
	(14,'VG9vbC0yMjM='),
	(14,'VG9vbC01MjY='),
	(14,'VG9vbC00Nw=='),
	(14,'VG9vbC05OTU='),
	(14,'VG9vbC0zOA=='),
	(14,'VG9vbC01NjY='),
	(14,'VG9vbC0xMDAw'),
	(14,'VG9vbC01OA=='),
	(14,'VG9vbC0xMDg='),
	(14,'VG9vbC02NTE='),
	(14,'VG9vbC0yNzE='),
	(14,'VG9vbC0xMDM2'),
	(14,'VG9vbC00NQ=='),
	(14,'VG9vbC0yMzg='),
	(14,'VG9vbC0zMTA='),
	(14,'VG9vbC01NTk='),
	(14,'VG9vbC00OQ=='),
	(14,'VG9vbC05NTU='),
	(14,'VG9vbC04NTk='),
	(14,'VG9vbC0zMjE='),
	(14,'VG9vbC05Mjk='),
	(14,'VG9vbC05MjI='),
	(14,'VG9vbC00Njc=');*/

#Completed: 13 - General Dynamics
/*INSERT INTO Company_Tool (company_id, tool_id) VALUES
	(13,'VG9vbC0xMDk3'),
	(13,'VG9vbC05MTQ='),
	(13,'VG9vbC0zNjI='),
	(13,'VG9vbC0xNw=='),
	(13,'VG9vbC0zMjE='),
	(13,'VG9vbC0zMzc='),
	(13,'VG9vbC01MDY='),
	(13,'VG9vbC05OTU='),
	(13,'VG9vbC0zMTY='),
	(13,'VG9vbC03NTI='),
	(13,'VG9vbC01MjY='),
	(13,'VG9vbC0yMjA='),
	(13,'VG9vbC04NzM='),
	(13,'VG9vbC0xMDAw'),
	(13,'VG9vbC0zMTA='),
	(13,'VG9vbC02MDY='),
	(13,'VG9vbC02MA=='),
	(13,'VG9vbC01NjY=');*/

#Completed: 12 - Publix
/*INSERT INTO Company_Tool (company_id, tool_id) VALUES
	(12,'VG9vbC0zOA=='),
	(12,'VG9vbC0zMjE='),
	(12,'VG9vbC05OTU='),
	(12,'VG9vbC02MA=='),
	(12,'VG9vbC0zMTY='),
	(12,'VG9vbC0xMDg='),
	(12,'VG9vbC01MDY='),
	(12,'VG9vbC0yMzg='),
	(12,'VG9vbC0zNjI='),
	(12,'VG9vbC00Nw=='),
	(12,'VG9vbC01NjY='),
	(12,'VG9vbC05MjI='),
	(12,'VG9vbC05NTM='),
	(12,'VG9vbC05OTY='),
	(12,'VG9vbC04NzM='),
	(12,'VG9vbC01MjY='),
	(12,'VG9vbC0xMTAz'),
	(12,'VG9vbC0xMDk3'),
	(12,'VG9vbC05NTA='),
	(12,'VG9vbC02OTg='),
	(12,'VG9vbC02OTk='),
	(12,'VG9vbC0zMTc='),
	(12,'VG9vbC02Nzk='),
	(12,'VG9vbC0yNzE='),
	(12,'VG9vbC00NQ==');*/

#Completed: 11 - StoneX
#INSERT INTO Company_Tool (company_id, tool_id) VALUES (11, NULL);

#Completed: 10 - Aetna
/*INSERT INTO Company_Tool (company_id, tool_id) VALUES
	(10,'VG9vbC0xNTA='),
	(10,'VG9vbC0zOA=='),
	(10,'VG9vbC05OTU='),
	(10,'VG9vbC0yMg=='),
	(10,'VG9vbC00Njc='),
	(10,'VG9vbC0yMw=='),
	(10,'VG9vbC0xMDc4'),
	(10,'VG9vbC0xMDM2'),
	(10,'VG9vbC0xMA=='),
	(10,'VG9vbC0yMjA='),
	(10,'VG9vbC03NTY='),
	(10,'VG9vbC0yNTQ='),
	(10,'VG9vbC04NzM='),
	(10,'VG9vbC0xNw=='),
	(10,'VG9vbC00Nw=='),
	(10,'VG9vbC05MjM='),
	(10,'VG9vbC05NzA='),
	(10,'VG9vbC05OTY='),
	(10,'VG9vbC0zMjE='),
	(10,'VG9vbC01NzA='),
	(10,'VG9vbC01MjY='),
	(10,'VG9vbC0yNzE='),
	(10,'VG9vbC05NTM='),
	(10,'VG9vbC05MjI='),
	(10,'VG9vbC01NjY=');*/

#Completed: 9 - Wells Fargo
/*INSERT INTO Company_Tool (company_id, tool_id) VALUES
	(9,'VG9vbC05OTU='),
	(9,'VG9vbC00Nw=='),
	(9,'VG9vbC0xMDAw'),
	(9,'VG9vbC02MA=='),
	(9,'VG9vbC0zMjE='),
	(9,'VG9vbC01NjY='),
	(9,'VG9vbC01MDY='),
	(9,'VG9vbC01MjY='),
	(9,'VG9vbC0xMDg='),
	(9,'VG9vbC05MjI='),
	(9,'VG9vbC05OTY='),
	(9,'VG9vbC0zMTQ='),
	(9,'VG9vbC0yNzE='),
	(9,'VG9vbC0zNjI='),
	(9,'VG9vbC05MTQ='),
	(9,'VG9vbC04NTk='),
	(9,'VG9vbC03NTA='),
	(9,'VG9vbC03NTY='),
	(9,'VG9vbC01OTA='),
	(9,'VG9vbC05Njk='),
	(9,'VG9vbC03MjY='),
	(9,'VG9vbC01OA=='),
	(9,'VG9vbC05NTA='),
	(9,'VG9vbC0zMTY='),
	(9,'VG9vbC01NDE=');*/

#Completed: 8 - General Electric
/*INSERT INTO Company_Tool (company_id, tool_id) VALUES
	(8,'VG9vbC02NA=='),
	(8,'VG9vbC05OTU='),
	(8,'VG9vbC00Nw=='),
	(8,'VG9vbC0yMjA='),
	(8,'VG9vbC0xMDg='),
	(8,'VG9vbC0xMDAw'),
	(8,'VG9vbC02MA=='),
	(8,'VG9vbC01MjY='),
	(8,'VG9vbC01NjY='),
	(8,'VG9vbC0yNzE='),
	(8,'VG9vbC00NDk='),
	(8,'VG9vbC0zNzI='),
	(8,'VG9vbC0zOA=='),
	(8,'VG9vbC04NzM='),
	(8,'VG9vbC0yMg=='),
	(8,'VG9vbC0zMjE='),
	(8,'VG9vbC02ODQ='),
	(8,'VG9vbC0xMzQ='),
	(8,'VG9vbC01OA=='),
	(8,'VG9vbC04NDc='),
	(8,'VG9vbC0yMw=='),
	(8,'VG9vbC0xMzc='),
	(8,'VG9vbC00NQ=='),
	(8,'VG9vbC00OQ=='),
	(8,'VG9vbC0zMTY=');*/

#Completed: 7 - Citigroup
/*INSERT INTO Company_Tool (company_id, tool_id) VALUES
	(7,'VG9vbC05OTU='),
	(7,'VG9vbC0yNzE='),
	(7,'VG9vbC0zNjI='),
	(7,'VG9vbC0xMDg='),
	(7,'VG9vbC00MDA='),
	(7,'VG9vbC0zOTk='),
	(7,'VG9vbC00Nw=='),
	(7,'VG9vbC02ODQ='),
	(7,'VG9vbC0zMjE='),
	(7,'VG9vbC01MDY='),
	(7,'VG9vbC05NzA='),
	(7,'VG9vbC02MA=='),
	(7,'VG9vbC0zMTA='),
	(7,'VG9vbC0yMzg='),
	(7,'VG9vbC0xMDAw'),
	(7,'VG9vbC00Njc='),
	(7,'VG9vbC0zMzUy');*/

#Completed: 6 - PepsiCo
/*INSERT INTO Company_Tool (company_id, tool_id) VALUES
	(6,'VG9vbC00Nw=='),
	(6,'VG9vbC0xMDk3'),
	(6,'VG9vbC01MDY='),
	(6,'VG9vbC0zNjI='),
	(6,'VG9vbC03NTM='),
	(6,'VG9vbC0zNzI='),
	(6,'VG9vbC05OTU='),
	(6,'VG9vbC0zMTQ='),
	(6,'VG9vbC0zMjE='),
	(6,'VG9vbC04NDA='),
	(6,'VG9vbC0zMzc='),
	(6,'VG9vbC03MDA=');*/

#Completed: 5 - Pfizer
/*INSERT INTO Company_Tool (company_id, tool_id) VALUES
	(5,'VG9vbC00Nw=='),
	(5,'VG9vbC0xMDg0'),
	(5,'VG9vbC02MA=='),
	(5,'VG9vbC0xNTA='),
	(5,'VG9vbC04NzM='),
	(5,'VG9vbC0xMA=='),
	(5,'VG9vbC0yMjA='),
	(5,'VG9vbC0xMTA4'),
	(5,'VG9vbC00Ng=='),
	(5,'VG9vbC03NTA='),
	(5,'VG9vbC05OTU='),
	(5,'VG9vbC0yNzE='),
	(5,'VG9vbC0xMDk3'),
	(5,'VG9vbC0xMDAw'),
	(5,'VG9vbC05MTQ='),
	(5,'VG9vbC0zNjI='),
	(5,'VG9vbC01MDY='),
	(5,'VG9vbC0zMTY='),
	(5,'VG9vbC0yMg=='),
	(5,'VG9vbC0zMjE='),
	(5,'VG9vbC0xMDg='),
	(5,'VG9vbC01NjM='),
	(5,'VG9vbC05NTU='),
	(5,'VG9vbC0xMDk5'),
	(5,'VG9vbC01OA==');*/

#Completed: 4 - Centene
#INSERT INTO Company_Tool (company_id, tool_id) VALUES (4, NULL);

#Completed: 3 - Valero Energy
/*INSERT INTO Company_Tool (company_id, tool_id) VALUES
	(3,'VG9vbC05MDk='),
	(3,'VG9vbC04NTk='),
	(3,'VG9vbC05OTU='),
	(3,'VG9vbC01MDY='),
	(3,'VG9vbC00Nw=='),
	(3,'VG9vbC01MjY='),
	(3,'VG9vbC01MTE='),
	(3,'VG9vbC0xMDg='),
	(3,'VG9vbC0yNzE=');*/

#Completed: 2 - Home Depot
/*INSERT INTO Company_Tool (company_id, tool_id) VALUES
	(2,'VG9vbC0zMTQ='),
	(2,'VG9vbC05OTU='),
	(2,'VG9vbC01NjY='),
	(2,'VG9vbC0zOA=='),
	(2,'VG9vbC02Nzk='),
	(2,'VG9vbC02OTg='),
	(2,'VG9vbC00MDU='),
	(2,'VG9vbC02Mzk='),
	(2,'VG9vbC01MzM='),
	(2,'VG9vbC0xMDg='),
	(2,'VG9vbC0zNjI='),
	(2,'VG9vbC0xNjE4'),
	(2,'VG9vbC0xNjQw'),
	(2,'VG9vbC0yMzg='),
	(2,'VG9vbC02MA=='),
	(2,'VG9vbC01MDY='),
	(2,'VG9vbC00ODg='),
	(2,'VG9vbC01MzY='),
	(2,'VG9vbC02NA=='),
	(2,'VG9vbC0xNjA1'),
	(2,'VG9vbC0xNTE3'),
	(2,'VG9vbC04NzM='),
	(2,'VG9vbC01Njc='),
	(2,'VG9vbC0xMTM0'),
	(2,'VG9vbC0xNjU1');*/

#Completed: 1 - Costco Wholesale
/*INSERT INTO Company_Tool (company_id, tool_id) VALUES
	(1,'VG9vbC02MA=='),
	(1,'VG9vbC00Nw=='),
	(1,'VG9vbC0xMDY1'),
	(1,'VG9vbC0xMDk3'),
	(1,'VG9vbC05OTU='),
	(1,'VG9vbC01NjY='),
	(1,'VG9vbC0yMjA='),
	(1,'VG9vbC0xMDg='),
	(1,'VG9vbC05NTU='),
	(1,'VG9vbC01MDY='),
	(1,'VG9vbC05OTY='),
	(1,'VG9vbC0yMg=='),
	(1,'VG9vbC0zNjI='),
	(1,'VG9vbC0zOA=='),
	(1,'VG9vbC0xMTE2'),
	(1,'VG9vbC0xMTAz'),
	(1,'VG9vbC04NzM='),
	(1,'VG9vbC0zMjE='),
	(1,'VG9vbC01MjY='),
	(1,'VG9vbC0zMTY='),
	(1,'VG9vbC02OTg='),
	(1,'VG9vbC02OTk='),
	(1,'VG9vbC0xMDk2'),
	(1,'VG9vbC02Nzk='),
	(1,'VG9vbC0zNjA=');*/


#TRUNCATE TABLE Tools; 

/*INSERT INTO Tools (tool_id, tool_name) VALUES
	('VG9vbC02MA==', 'Apache'),
	('VG9vbC0xMDY1', 'F5 BigIP'),
	('VG9vbC0xMDk3', 'Microsoft Azure'),
	('VG9vbC01NjY=', 'NGINX'),
	('VG9vbC0yMjA=', 'Drupal'),
	('VG9vbC05NTU=', 'ZURB Foundation'),
	('VG9vbC05OTY=', 'jQuery Migrate'),
	('VG9vbC0yMg==', 'Adobe DTM'),
	('VG9vbC0zNjI=', 'IIS'),
	('VG9vbC0zOA==', 'Akamai'),
	('VG9vbC0xMTE2', 'Apigee'),
	('VG9vbC0xMTAz', 'Pantheon'),
	('VG9vbC04NzM=', 'Varnish'),
	('VG9vbC0zMjE=', 'Google Tag Manager'),
	('VG9vbC0zMTY=', 'Google Fonts'),
	('VG9vbC02OTg=', 'Ruby'),
	('VG9vbC02OTk=', 'Rails'),
	('VG9vbC0xMDk2', 'IBM Bluemix'),
	('VG9vbC02Nzk=', 'React'),
	('VG9vbC0zNjA=', 'IBM WebSphere Commerce'),
	('VG9vbC0zMTQ=', 'Google Cloud'),
	('VG9vbC05OTU=', 'jQuery'),
	('VG9vbC00MDU=', 'Jenkins'),
	('VG9vbC02Mzk=', 'Polyfill'),
	('VG9vbC01MzM=', 'Moment.js'),
	('VG9vbC0xMDg=', 'Bootstrap'),
	('VG9vbC0xNjE4', 'Enzyme'),
	('VG9vbC0xNjQw', 'ESLint'),
	('VG9vbC0yMzg=', 'Ensighten'),
	('VG9vbC01MDY=', 'ASP.NET'),
	('VG9vbC00ODg=', 'Material Design Lite'),
	('VG9vbC01MzY=', 'MongoDB'),
	('VG9vbC02NA==', 'Apache Tomcat'),
	('VG9vbC0xNjA1', 'Jest'),
	('VG9vbC0xNTE3', 'Travis CI'),
	('VG9vbC01Njc=', 'Node.js'),
	('VG9vbC0xMTM0', 'Shell'),
	('VG9vbC0xNjU1', 'Prettier'),
	('VG9vbC00Nw==', 'Amazon Web Services'),
	('VG9vbC0xMDg0', 'Dyn'),
	('VG9vbC0xNTA=', 'CloudFlare'),
	('VG9vbC0xMA==', 'Acquia'),
	('VG9vbC0xMTA4', 'Percona'),
	('VG9vbC00Ng==', 'Amazon EC2'),
	('VG9vbC03NTA=', 'SiteCatalyst'),
	('VG9vbC0xMDAw', 'jQuery UI'),
	('VG9vbC05MTQ=', 'Windows Server'),
	('VG9vbC01NjM=', 'New Relic'),
	('VG9vbC0xMDk5', 'Azure CDN'),
	('VG9vbC01OA==', 'AngularJS'),
	('VG9vbC03NTM=', 'Sitefinity'),
	('VG9vbC0zNzI=', 'Incapsula'),
	('VG9vbC04NDA=', 'TweenMax'),
	('VG9vbC0zMzc=', 'Handlebars.js'),
	('VG9vbC03MDA=', 'ruxit'),
	('VG9vbC0yNzE=', 'Font Awesome'),
	('VG9vbC00MDA=', 'Java Servlet'),
	('VG9vbC0zOTk=', 'Java'),
	('VG9vbC02ODQ=', 'RequireJS'),
	('VG9vbC05NzA=', 'Animate.css'),
	('VG9vbC0zMTA=', 'Google Analytics'),
	('VG9vbC00Njc=', 'Lodash'),
	('VG9vbC0zMzUy', 'SAML'),
	('VG9vbC01MjY=', 'Modernizr'),
	('VG9vbC00NDk=', 'Lightbox'),
	('VG9vbC0xMzQ=', 'CentOS'),
	('VG9vbC04NDc=', 'Twitter typeahead.js'),
	('VG9vbC0yMw==', 'Adobe Experience Manager'),
	('VG9vbC0xMzc=', 'Chart.js'),
	('VG9vbC00NQ==', 'Amazon CloudFront'),
	('VG9vbC00OQ==', 'Amazon S3'),
	('VG9vbC05MjI=', 'WordPress'),
	('VG9vbC03NTY=', 'Slick'),
	('VG9vbC01OTA=', 'OpenSSL'),
	('VG9vbC05Njk=', 'amCharts'),
	('VG9vbC03MjY=', 'Select2'),
	('VG9vbC05NTA=', 'Yoast SEO'),
	('VG9vbC01NDE=', 'MooTools'),
	('VG9vbC0xMDc4', 'Mimecast'),
	('VG9vbC0xMDM2', 'reCAPTCHA'),
	('VG9vbC0yNTQ=', 'fancybox'),
	('VG9vbC0xNw==', 'AddThis'),
	('VG9vbC05MjM=', 'WordPress Super Cache'),
	('VG9vbC01NzA=', 'OWL Carousel'),
	('VG9vbC05NTM=', 'YouTube'),
	('VG9vbC0zMTc=', 'Google Maps'),
	('VG9vbC03NTI=', 'Sitecore'),
	('VG9vbC02MDY=', 'PHP'),
	('VG9vbC0yMjM=', 'Dynatrace'),
	('VG9vbC02NTE=', 'Prototype'),
	('VG9vbC01NTk=', 'Netlify'),
	('VG9vbC04NTk=', 'Underscore.js'),
	('VG9vbC05Mjk=', 'XRegExp'),
	('VG9vbC0zMTg=', 'Google PageSpeed'),
	('VG9vbC01OTU=', 'Optimizely'),
	('VG9vbC0xNTE2', 'Gradle'),
	('VG9vbC0zOTI3', 'Chai'),
	('VG9vbC0xNDg4', 'Puma'),
	('VG9vbC0zMDIx', 'SinonJS'),
	('VG9vbC04NTM=', 'UNIX'),
	('VG9vbC0xNDY=', 'Clicky'),
	('VG9vbC04NTU=', 'Ubuntu'),
	('VG9vbC04NTA=', 'Typekit'),
	('VG9vbC0xNjAy', 'Sass'),
	('VG9vbC0xMTUy', 'C#'),
	('VG9vbC0yMTM1', 'SonarQube'),
	('VG9vbC0yMDg2', 'Xamarin'),
	('VG9vbC0yNzAx', 'Protractor'),
	('VG9vbC0zODg=', 'Ionic'),
	('VG9vbC0zMDc1', 'Azure Functions'),
	('VG9vbC0xOTUz', 'Swagger UI'),
	('VG9vbC05ODI=', 'Git'),
	('VG9vbC0xOTk2', 'Microsoft SQL Server'),
	('VG9vbC0xNjU2', 'Visual Studio Code'),
	('VG9vbC0xODUy', '.NET'),
	('VG9vbC0xMTQx', 'Objective-C'),
	('VG9vbC0xNTY3', 'npm'),
	('VG9vbC0xNjM3', 'Confluence'),
	('VG9vbC0xNzE3', 'Jira'),
	('VG9vbC0zNjAx', 'Azure DevOps Server'),
	('VG9vbC0yNDM2', 'Material Design for Angular'),
	('VG9vbC0xNDcx', 'RabbitMQ'),
	('VG9vbC0yMTk1', 'Angular'),
	('VG9vbC03MTQ=', 'SWFObject'),
	('VG9vbC01MTE=', 'Microsoft SharePoint'),
	('VG9vbC05MDk=', 'Webtrends');*/


