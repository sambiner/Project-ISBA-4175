

/*
 * This query is for the purpose of checking if all of the companies have the correct number
 * of tools given what the API is able to give me.
 */
SELECT ct.company_id,
	c.company_name,
	COUNT(tool_id) AS tool_frequency
FROM Companies c 
JOIN Company_Tool ct 
	ON c.company_id = ct.company_id 
GROUP BY company_id;

/*
 * This query retrieves the names and revenues of KPMG's top 5 clients based on revenue, allowing me to understand which companies are the 
 * most financially successful
 */
SELECT company_name, company_revenue
FROM Companies
ORDER BY company_revenue DESC
LIMIT 5;


/*
 * Calculating the average company size of all companies within the Companies table.
 * This helps provide an insight into the typical size among the top 20 of KPMG's clients
 */
SELECT AVG(company_size) as average_size
FROM Companies;


/*
 * Retrieves the number of companies using each individual tool, giving an idea on which tools are most popular among
 * KPMG's top 20 clients
 */
SELECT 
	t.tool_name,
	COUNT(ct.company_id) as company_count
FROM Tools t
JOIN Company_Tool ct 
	ON t.tool_id = ct.tool_id
GROUP BY t.tool_name
ORDER BY company_count DESC;



/*
 * Lists all individual tools used by companies with a revenue greater than the average revenue of 
 * KPMG's top 20 clients.  This could help me to identify the tech stack that is preferred by large,
 * high-revenue companies
 */
SELECT DISTINCT t.tool_name
FROM Tools t
JOIN Company_Tool ct
    ON t.tool_id = ct.tool_id
JOIN Companies c
    ON ct.company_id = c.company_id
WHERE c.company_revenue > (
    SELECT AVG(company_revenue)
    FROM Companies
)
ORDER BY t.tool_name;



/*
 * Retrieves the top 5 technologies that are used by the 5 lowest-revenue clients,
 * which I believe is a valuable insight because I can understand the technology preferred by
 * slightly smaller organizations
 */
WITH SmallestCompanies AS (
  SELECT company_id
  FROM Companies
  ORDER BY company_size
  LIMIT 5
)
SELECT 
	t.tool_name,
	COUNT(ct.company_id) as company_count
FROM Tools t
JOIN Company_Tool ct 
	ON t.tool_id = ct.tool_id
JOIN SmallestCompanies sc 
	ON ct.company_id = sc.company_id
GROUP BY t.tool_name
ORDER BY company_count DESC
LIMIT 5;










#First Query
/*
 * This tells me the most prevalent tools that are used within KPMG' top 20 clients.  Notice how jQuery is used by 17 out of 20 companies,
 * and that I have 3 companies that did not return any value from the API I was referencing.  This means that jQuery is used by every single
 * client in the top 20 largest that had available data.  I believe that KPMG should be looking for people with JavaScript and jQuery proficiency
 * to give all clients a better experience when working with us.
 */
SELECT tool_name,
	COUNT(ct.tool_id) AS tool_frequency
FROM Tools t 
JOIN Company_Tool ct 
	ON t.tool_id = ct.tool_id
GROUP BY ct.tool_id
ORDER BY COUNT(ct.tool_id) DESC 
LIMIT 5;


#Second Query w/ CTE and Window Function
/*
 * This is showing me all of the individual tools that are uniquely used by a specific client of KPMG's.  
 * I believe this is a very good analytic tool because technology assurance auditors can theoretically 
 * have intimate knowledge of these technologies if they are ever assigned to any one specific client.
 * These are also technologies that a green technology assurance auditor might not need to know to be hired,
 * since the tool is only used by a single company
 */
WITH average_tools AS (
	SELECT ct.company_id,
		company_name,
		tool_name,
		COUNT(ct.tool_id) AS tool_count
	FROM Company_Tool ct
	RIGHT JOIN Companies c 
		ON ct.company_id = c.company_id
	LEFT JOIN Tools t 
		ON ct.tool_id = t.tool_id
	GROUP BY ct.tool_id
	HAVING COUNT(ct.tool_id) = 1
	ORDER BY COUNT(ct.tool_id) DESC
)
SELECT *
FROM average_tools
ORDER BY company_id;


#Third query
/*
	This query provides insight into the most popular tools used by the largest companies (by revenue) in KPMG's top 20 clients.
	It can be helpful for KPMG to prioritize training and resource allocation for these popular technologies, as they are more likely
	to be relevant for clients with higher revenue. This query can also help KPMG understand the technology landscape and trends
	among their most valuable clients.
*/
WITH top_companies AS (
	SELECT company_id
	FROM Companies
	ORDER BY company_revenue DESC
	LIMIT 10
),
tool_usage AS (
	SELECT 
		ct.company_id,
		t.tool_name,
		COUNT(ct.tool_id) AS tool_frequency
	FROM Company_Tool ct
	JOIN Tools t
		ON ct.tool_id = t.tool_id
	JOIN top_companies tc
		ON ct.company_id = tc.company_id
	GROUP BY ct.company_id, t.tool_name
)
SELECT
	tool_name,
	SUM(tool_frequency) AS total_tool_frequency
FROM tool_usage
GROUP BY tool_name
ORDER BY total_tool_frequency DESC
LIMIT 5;



WITH ranked_companies AS (
    SELECT 
        c.company_name,
        COUNT(ct.tool_id) AS tool_count,
        DENSE_RANK() OVER (ORDER BY COUNT(ct.tool_id) DESC) AS tool_rank,
        CASE
            WHEN COUNT(ct.tool_id) >= 22 THEN 'Large Tech Stack'
            WHEN COUNT(ct.tool_id) >= 11 THEN 'Medium Tech Stack'
            ELSE 'Small Tech Stack'
        END AS tech_stack_size
    FROM Companies c
    JOIN Company_Tool ct ON c.company_id = ct.company_id
    GROUP BY c.company_name
)
SELECT *
FROM ranked_companies
ORDER BY tool_rank;
