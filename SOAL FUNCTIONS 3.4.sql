--SOAL 4

SELECT TOP 3 MANAGER_ID, COUNT(*) JUMLAH_PEGAWAI, AVG(SALARY) MAX_SALARY FROM EMPLOYEES
GROUP BY MANAGER_ID
ORDER BY JUMLAH_PEGAWAI DESC