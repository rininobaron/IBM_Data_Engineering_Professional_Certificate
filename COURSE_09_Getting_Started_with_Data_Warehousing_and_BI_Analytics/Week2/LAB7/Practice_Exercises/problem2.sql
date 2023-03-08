select country, category, sum(billedamount) as totalbilledamount
from FactBilling
left join DimCustomer
on FactBilling.customerid = DimCustomer.customerid
left join DimMonth
on FactBilling.monthid=DimMonth.monthid
group by rollup(country, category)
order by country, category;