select * from [dbo].[expenses 2 - Sheet1 - expenses 2 - Sheet1]

What are the various expense types and the total cost associated with each?
select Category ,SUM(Cost_in_Euros) as total_expences from [dbo].[expenses 2 - Sheet1 - expenses 2 - Sheet1]
group by Category
order by SUM(Cost_in_Euros) desc



select Country ,SUM(Cost_in_Euros) as total_expences from [dbo].[expenses 2 - Sheet1 - expenses 2 - Sheet1]
where Category = 'Travel'
group by Country
order by SUM(Cost_in_Euros) desc


Which was the most expensive category in Spain?
select Country ,SUM(Cost_in_Euros) as total_expences from [dbo].[expenses 2 - Sheet1 - expenses 2 - Sheet1]
where Category in ('Breakfast','Lunch','Dinner','Lunch ')
group by Country
having SUM(Cost_in_Euros) > 200
order by SUM(Cost_in_Euros) desc


Travel was most expensive for which country?
select Country ,count(distinct Date) as total_days from [dbo].[expenses 2 - Sheet1 - expenses 2 - Sheet1]
group by Country
order by count(distinct Date) desc


Any countries where total food expenses were above 200 (combine breakfast,lunch,dinner)
select Country ,SUM(Cost_in_Euros)/COUNT(distinct Date) as total_Expence_perDay
from [dbo].[expenses 2 - Sheet1 - expenses 2 - Sheet1]
group by Country
order by total_Expence_perDay desc

Write a case statement to separate breakfast,lunch,dinner as food category and analyse the data?
SELECT Country,
case when category in ('Breakfast','Dinner','Lunch','Lunch ') then 'food'
else category end as newcategory,sum(cost_in_euros)
FROM [dbo].[expenses 2 - Sheet1 - expenses 2 - Sheet1]



