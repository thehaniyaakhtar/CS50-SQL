--md5 hash of oops!: 982c0381c279d139fd221fce974916e7

--change pwd
UPDATE users
SET password = "982c0381c279d139fd221fce974916e7"
WHERE username = "admin"
;

--alter logs
DELETE FROM user_logs
WHERE old_username = "admin" AND new_username = "admin"
;

--frame emily
INSERT INTO user_logs (id, type, old_username, new_username, old_password, new_password)
VALUES (
    52, "update", "admin", "admin", "e10adc3949ba59abbe56e057f20f883e", "44bf025d27eea66336e5c1133c3827f7"
)
;
