--SOAL 2 SEHARUSNYA MATERINYA BELUM MASUK KARENA SUBQUERY
/*Berapa orang pegawai dengan jabatan (job_id) berakhiran _clerk 
yang gajinya di bawah ratarata dibanding gaji seluruh pegawai di perusahaan?*/

SELECT * FROM EMPLOYEES
WHERE SALARY<(SELECT AVG(SALARY) FROM EMPLOYEES)
