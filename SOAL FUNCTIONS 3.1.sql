--NOMOR 1
/*Tahun 2023, anggaran gaji perusahaan tahun tersebut adalah 3.450.000. Karena tuntutan
serikat pekerja, perusahaan ingin menaikkan gaji masing-masing pegawai dengan presentase
sebanyak masa kerja pegawai dalam tahun (misal masa kerja 5 tahun kenaikan gajinya 5%).
Apakah perusahaan punya cukup anggaran untuk menaikkan gaji pegawai sesuai
perhitungan tersebut?*/

select 
sum(
--MENGHITUNG SKENARIO GAJI AKTUAL SETELAH KENAIKAN
	(
	
	--GAJI AWAL
	SALARY
	
	--KENAIKAN GAJI
	+SALARY*CAST(DATEDIFF(YEAR, HIRE_DATE, GETDATE()) AS FLOAT)/100)
	
	--DISETAHUNKAN
	*12
	
	) TOTAL_GAJI_TH_DEPAN_SETELAH_KENAIKAN,

	--BUDGET
	CAST(3450000 as float) BUDGET,


	--APAKAH CUKUP
	CASE 
		WHEN CAST(3450000 as float)>=sum((SALARY+SALARY*CAST(DATEDIFF(YEAR, HIRE_DATE, GETDATE()) AS FLOAT)/100)*12) THEN 'MENCUKUPI'
		ELSE 'TIDAK CUKUP' 
	END AS KESIMPULAN

FROM EMPLOYEES
