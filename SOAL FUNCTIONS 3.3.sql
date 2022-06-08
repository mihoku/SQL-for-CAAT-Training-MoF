--SOAL 3
/*Sebutkan 3 JOB_ID yang memiliki maksimum gaji terbesar di perusahaan berdasarkan gaji
actual (salary) pada table EMPLOYEES.*/

SELECT TOP 3 JOB_ID, MAX(SALARY) MAX_SALARY FROM EMPLOYEES
GROUP BY JOB_ID
ORDER BY MAX_SALARY DESC
