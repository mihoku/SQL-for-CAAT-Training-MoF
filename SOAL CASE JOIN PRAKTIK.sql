--CASE 1: Berapa Pegawai yang bekerja di benua America

--CASE 2: Buat Daftar yang berisi Pegawai yang Berkantor di Canada

--CASE 3: Berapa Jumlah Pegawai yang bekerja di masing-masing negara?


--CASE 1

select r.REGION_NAME, count(*) JUMLAH_PEGAWAI

from EMPLOYEES e

join DEPARTMENTS d
on d.DEPARTMENT_ID = e.DEPARTMENT_ID

join LOCATIONS l
on l.LOCATION_ID = d.LOCATION_ID

join COUNTRIES c
on c.COUNTRY_ID = l.COUNTRY_ID

join REGION r
on r.REGION_ID = c.REGION_ID

WHERE REGION_NAME='Americas'

group by REGION_NAME


--CASE 2

select e.*, c.COUNTRY_NAME 

from EMPLOYEES e

join DEPARTMENTS d
on d.DEPARTMENT_ID = e.DEPARTMENT_ID

join LOCATIONS l
on l.LOCATION_ID = d.LOCATION_ID

join COUNTRIES c
on c.COUNTRY_ID = l.COUNTRY_ID

where COUNTRY_NAME = 'Canada'

--CASE 3

select c.COUNTRY_NAME, count(*) JUMLAH_PEGAWAI

from EMPLOYEES e

join DEPARTMENTS d
on d.DEPARTMENT_ID = e.DEPARTMENT_ID

join LOCATIONS l
on l.LOCATION_ID = d.LOCATION_ID

join COUNTRIES c
on c.COUNTRY_ID = l.COUNTRY_ID

GROUP BY c.COUNTRY_NAME