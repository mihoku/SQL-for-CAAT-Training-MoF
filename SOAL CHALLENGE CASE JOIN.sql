--Challenge Case JOIN:

--Berapa jumlah pegawai dari masing-masing manager (sebutkan juga nama manager-nya), dan sebutkan apa jabatan (job title) dari manager tersebut. 

select E.FIRST_NAME, E.LAST_NAME, J.JOB_TITLE, COUNT(*) JUMLAH_PEGAWAI from EMPLOYEES E

join EMPLOYEES E2
ON E2.MANAGER_ID = E.EMPLOYEE_ID

JOIN JOBS J
ON J.JOB_ID = E.JOB_ID

GROUP BY E.FIRST_NAME, E.LAST_NAME, J.JOB_TITLE