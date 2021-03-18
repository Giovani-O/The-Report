(select S.Name, G.Grade, S.Marks from Students as S join Grades as G on S.Marks between G.Min_Mark and G.Max_Mark where G.Grade > 7) 
union 
(select NULL, G.Grade, S.Marks from Students as S join Grades as G on S.Marks between G.Min_Mark and G.Max_Mark where G.Grade <= 7) 
order by Grade desc, Name, Marks asc;
