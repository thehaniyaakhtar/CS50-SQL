--Display the names of schools, their per-pupil expenditure, and their graduation rate.
--Sort the schools from greatest per-pupil expenditure to least.
--If two schools have the same per-pupil expenditure, sort by school name.
SELECT schools.name,
       expenditures.per_pupil_expenditure,
       graduation_rates.graduated
FROM schools
JOIN expenditures
  ON schools.district_id = expenditures.district_id
JOIN graduation_rates
  ON schools.id = graduation_rates.school_id
ORDER BY expenditures.per_pupil_expenditure DESC, schools.name ASC;
