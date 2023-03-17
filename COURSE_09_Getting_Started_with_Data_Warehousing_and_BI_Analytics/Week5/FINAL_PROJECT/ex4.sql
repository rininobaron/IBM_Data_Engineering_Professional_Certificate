--Exercise 4 - Write aggregation queries and create MQTs

--Task 13 - Create a grouping sets query

select facttrips.stationid, trucktype, sum(wastecollected) as totalwastecollected
from facttrips
left join dimstation
on facttrips.stationid = dimstation.stationid
left join dimtruck
on facttrips.truckid=dimtruck.truckid
group by grouping sets(facttrips.stationid, trucktype)
order by facttrips.stationid, trucktype

--Task 14 - Create a rollup query

select year,city,facttrips.stationid, sum(wastecollected) as totalwastecollected
from facttrips
left join dimstation
on facttrips.stationid = dimstation.stationid
left join dimdate
on dimdate.dateid = dimdate.dateid
group by rollup(year,city,facttrips.stationid)
order by year,city,facttrips.stationid

--Task 15 - Create a cube query

select year,city,facttrips.stationid, avg(wastecollected) as avgwastecollected
from facttrips
left join dimstation
on facttrips.stationid = dimstation.stationid
left join dimdate
on dimdate.dateid = dimdate.dateid
group by cube(year,city,facttrips.stationid)
order by year,city,facttrips.stationid

--Task 16 - Create an MQT

CREATE TABLE max_waste_stats (city, stationid, trucktype, maxwastecollected) AS
  (select city, facttrips.stationid, trucktype, max(wastecollected)
from facttrips
left join dimstation
on facttrips.stationid = dimstation.stationid
left join dimtruck
on facttrips.truckid=dimtruck.truckid
group by city, facttrips.stationid, trucktype)
     DATA INITIALLY DEFERRED
     REFRESH DEFERRED
     MAINTAINED BY SYSTEM;