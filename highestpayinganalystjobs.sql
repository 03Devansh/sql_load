select job_id,salary_year_avg, job_title_short, jpf.company_id,job_location,cd.name from job_postings_fact jpf LEFT JOIN company_dim cd ON cd.company_id=jpf.company_id where job_location='Anywhere' and salary_year_avg is not null and job_title_short='Data Analyst'
order by salary_year_avg DESC
limit 10;