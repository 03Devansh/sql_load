Select skills , Round(avg(salary_year_avg),2) as avg_salary from job_postings_fact jpf INNER JOIN skills_job_dim sjd on
sjd.job_id=jpf.job_id
inner join skills_dim sd on sd.skill_id=sjd.skill_id
where job_title_short='Data Analyst' AND salary_year_avg is not null
group by skills
order by avg_salary DESC
limit 25;