-- select * from students;
-- select * from grades;

if object_id('tempdb..#temporary') is not null
begin
    drop table #temporary
end
create table #temporary(
     [name] nvarchar(21),
     [grade] int,
     [marks] int);


insert into #temporary
select name,
    (select lookup.grade from grades lookup
     where marks between min_mark and max_mark) as grade,
     marks
    from students;

update #temporary
set name = null
where grade < 8;

select * from #temporary
order by grade desc, name asc;
