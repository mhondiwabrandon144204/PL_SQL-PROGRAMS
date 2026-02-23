--program to calculate total,per,result and grade,,,,
set serveroutput on
declare 
	xrlno number(3):=&xrlno;
	xm1 number(3);
	xm2 number(3);
	xm3 number(3);
	xm4 number(3);
begin

select m1,m2,m3,m4 into xm1,xm2,xm3,xm4 from marks where rlno=xrlno;

if(xm1<40)OR(xm2<40)OR(xm3<40)OR(xm4<40)
then
update marks set

total=0,per=0,result='fail',grade='F' where rlno=xrlno;
endif;

	t:=xm1+xm2+xm3+xm4;
	p:=t/4;
if p >= 40 and p < 50
then
update marks set

total=t,per=p,result='pass',grade='D' where rlno=xrlno;	
elseif p >= 50 and p < 60
then

update marks set
total=t,per=p,result='pass',grade='B'where rlno=xrlno;
elseif p >= 70 and p <= 100
then

update marks set

total=t,per=p,result='Pass',grade='A'where rlno=xrlno;
 else
 update marks set

total=0,per=0,result='fail',grade='F'where rlno=xrlno;
endif;
end;
/