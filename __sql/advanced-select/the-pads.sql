select concat(name, '(',substring(occupation,1,1),')') as Name
from occupations
order by name;

select concat('There are a total of ',count(occupation),' ',lower(occupation),'s.') as total
from occupations 
group by occupation
order by count(occupation) asc, occupation asc;
