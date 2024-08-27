--alter table services
--add constraint fk_branch_id
--foreign key (branch_id) references [branch data] (Branch_ID)

--select b.region,sum(s.total_revenue) as TotalRevenue
--from services s
--join [branch data] b 
--on s.branch_id=b.Branch_ID
--group by b.Region
--order by TotalRevenue desc  --Revenue by Region

--select department,sum(total_revenue) as TotalRevenue
--from services
--group by department
--order by TotalRevenue desc   --Revenue by Department

--select client_name,sum(total_revenue) as TotalRevenue
--from services
--group by client_name
--order by TotalRevenue desc   --Revenue by Customer





--KPI

--Total Revenue

--select sum(total_revenue) as TotalRevenue
--from services

--Total Hours

--select sum(hours) as TotalHours
--from services

--Revenue per Region over Overall Revenue

--select department,
--       sum(total_revenue) as DepartmentRevenue,
--	   (sum(total_revenue)/(select sum(total_revenue) from services))*100 as RevenuePercentage
--from services
--group by department

--Month on Month Revenue Increase

--;with MonthlyRevenue as(
--select 
--       format(service_date,'yyy-MM') as Month,
--	  sum(total_revenue) as Revenue
--from services
--group by 
--        format(service_date,'yyy-MM')
--),
--RevenueComparison as(
--select Month,
--       Revenue,
--	   lag(Revenue)over(order by Month) as PreviousMonthRevenue
--from MonthlyRevenue)
--select Month,Revenue,PreviousMonthRevenue,
--       ((Revenue-PreviousMonthRevenue)/PreviousMonthRevenue)*100 as RevenuePercentageIncrease
--from	   RevenueComparison
--where PreviousMonthRevenue is not null





