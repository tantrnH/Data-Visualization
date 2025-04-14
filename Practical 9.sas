/* Question 1.a : Finds any values that starts with "E" from type column */
data p9q1;
	input ID "Name of Animal"n $ Type $ "Date of Birth"n :DDMMYY10.;
	format "Date of Birth"n : DDMMYY10.;
	datalines;
1 Nelly Elephant 05/09/1999
2 Lola elephant 30/07/2000
3 Polly Panda 08/03/2006
4 Sandra Snake 01/01/2001
5 Pingu Penguin 02/09/2007
6 Molly Monkey 19/07/2003
7 Tegan Elephant 03/03/2004
8 Gina Zebra 22/04/2005
9 Ziggy Zebra 06/03/1998
10 Dover Snake 03/08/2001
11 Wonda Snake 15/07/2007
12 Coca Koala 05/05/2005
13 Buttercup Butterfly 02/12/2001
14 Smokey Bear 03/11/1999
15 Oliver Bear 07/04/2004
16 Benny Bear 05/05/2005
17 Crunch Crocodile 22/07/2003
18 Olivia Crocodile 23/04/2001
19 Jessica Elephant 15/10/2009
20 Holly Elephant 06/01/2000
21 Wally Elephant 02/06/2011
;
run;

proc print data=p9q1 noobs;
	title "Animal Dataset";
run;
	
proc sql;
	SELECT * 
	FROM p9q1
	WHERE upcase(Type) LIKE 'E%'; 
quit;
 /* if there's data that have lower case 'e' and upper case 'E' == use upcase() */



/*Question 1.b : Finds any values that have "ll" in any position from name of Animal
column*/
proc sql;
	select *
	from p9q1
	where "Name of Animal"n like '%ll%';
quit;



/* Question 1.c : Finds any values that have "e" in the second position from type
column. */
proc sql;
	select * 
	from p9q1
	where upcase(Type) like '_E%';
quit;


/* Question 2 : Sort the value in quantity column in descending order */
data p9q2;
	input Date :MMDDYY10. Name $ Product $ Quantity Amount;
	format Date :MMDDYY10.;
	datalines;
04/26/2006 Peter Bike 20 1560
05/27/2006 John Ski 43 2234
06/28/2006 Peter Boat 12 8769
06/29/2006 Louis Ski 34 1657
06/30/2006 Mary Boat 23 15678
07/01/2006 Peter Bike 43 2500
07/02/2006 Louis Bike 23 1800
;
run;
proc print data=p9q2;
run;

proc sql;
	select *
	from p9q2
	order by quantity desc;
quit;

/* Question 3 : Write the following code to produce and using TRANSPOSE to the second output */
data p9q3;
 input famid year faminc spend;
 datalines;
1 96 40000 38000
1 97 40500 39000
1 98 41000 40000
2 96 45000 42000
2 97 45400 43000
2 98 45800 44000
3 96 75000 70000
3 97 76000 71000
3 98 77000 72000
;
run;
proc print data=p9q3;
run;

proc transpose data=p9q3 out=p9q3b prefix=faminc;
	by famid; /* group by */
	id year; /* make it new column name */
	var faminc; /* transpose */
run;
proc print data=p9q3b;
run;


	
