select count(skills),skills from job_postings_fact jpf inner join skills_job_dim sjd on jpf.job_id=sjd.job_id
inner join skills_dim sd on sd.skill_id=sjd.skill_id
where job_title_short='Data Analyst'
group by skills
order by count(skills) DESC
limit 5;