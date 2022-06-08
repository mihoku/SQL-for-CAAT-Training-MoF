--SOAL 4
/*Sebutkan 3 manager_id dengan pegawai terbanyak, dan berapa masing-masing rata-rata gaji
pegawai di tim manajer tersebut.*/

SELECT TOP 3 MANAGER_ID, COUNT(*) JUMLAH_PEGAWAI, AVG(SALARY) MAX_SALARY FROM EMPLOYEES
GROUP BY MANAGER_ID
ORDER BY JUMLAH_PEGAWAI DESC
