use test;
select CITY_NAME, SUM([REVENUE])/count(REVENUE) from (dbo.CITES join dbo.REVENUE on CITES.CITY_CODE = REVENUE.CITY_CODE)
group by CITY_NAME;
select * from REVENUE;