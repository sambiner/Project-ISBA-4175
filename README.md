# "Unveiling the Tech Titans: An Analysis of KPMG's Top Clients' Technology Stacks"
A project where I combine my SQL, Python, API, web scraping, data analytics, and data visualization knowledge to provide proof of the most common tech stack used by KPMG's top clients. I seek to solve the problem of the Technology Assurance Audit practice at the Los Angeles office of KPMG being understaffed, and I will solve this by determining which technologies are most used by KPMG's top clients and advocating for the hire of people with those technological skills.

## Job Description:
KPMG, a globally known professional services firm, is widely recognized for its exceptional work culture, career growth opportunities, and comprehensive audit, tax, and advisory services which serves various industries. As part of their commitment of delivering outstanding results for their clients, KPMG seeks a talented Technology Assurance Audit Intern to join their Technology Assurance practice in their Audit sector.  The intern will gain valuable, hands-on experience in documenting clients' processes and IT systems, executing and documenting testing of clients' IT controls, and utilizing a wide range of technologies and data analytics tools to perform significant IT Audit procedures. In addition, the intern will have the opportunity to work with cutting-edge technology and explore solutions with intelligent automation. This internship is designed for candidates pursuing a Bachelor's degree or higher in Management Information Systems, Accounting Information Systems, Accounting, Finance, or other IT-related fields. The candidate is required to have a strong academic background and excellent communication, time management, and leadership skills. 

While this project is not *directly* related to the job posting, I was hired for this position so I believe that it is related to my future work at the company.  Plus, I utilized data analytics tools such as Python and SQL to achieve the end goal of this project.

## Data
### Source:
The StackShare API, querying the enrichment endpoint to gain insight on the technology stacks of specific company domains.  

### Characteristics:
Pagination, the tool ID as a unique identifier, the tool name in English, and all of the popular GitHub repos that the tool was detected in.


## Notebooks:
### sql_analysis.ipynb
The purpose of this is to use SQL to query the data that was obtained from the StackShare API in order to understand the data more and also answer the business problem I had identified.

### data_collection.ipynb
The purpose of this is to collect all the necessary data from the StackShare API. I strictly used the enrichment query from the API documentation and I used Python with pandas to transform JSON data into a dataframe, in order to transfer it to my MySQL database.

### presentation.ipynb
The purpose of this is to be the presentation of everything I did during the project. Both of these above notebooks are combined into a single one, with some changes made to make the presentation flow better.


