--write a SQL query to find the 10 public school districts with the highest per-pupil expenditures.
-- Your query should return the names of the districts and the per-pupil expenditure for each.
SELECT districts.name,
       expenditures.per_pupil_expenditure
FROM districts
JOIN expenditures
ON districts.id = expenditures.district_id
WHERE districts.type LIKE "%Public School%"
ORDER BY expenditures.per_pupil_expenditure DESC
LIMIT 10
;

