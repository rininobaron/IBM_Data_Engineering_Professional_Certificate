select year, country, category, sum(billedamount) as totalbilledamount
from FactBilling
left join DimCustomer
on FactBilling.customerid = DimCustomer.customerid
left join DimMonth
on FactBilling.monthid=DimMonth.monthid
group by cube(year, country, category)
order by year, country, category;