/* Question 1 */
/* Q1a */
data S2Q1;
set sashelp.baseball;
run;
proc print data=S2Q1;
run;

/* Q1b */
lib S2Q1;

/* Q1c */
data S2Q1;
set sashelp.baseball;
country = “Malaya”;
run;
proc print data=S2Q1;
run;

/* Question 2 */
Q2a
data q2_1;
infile datalines dsd;
length Customer $20. Type $15. Country $15. City $ 15. Date $10. Contact_Manager $15.;
input Customer $ Type $ Country $ City $ Contact_Number Date $ Limitation_years
Contact_Manager;
datalines;
Intersection, com.network, USA, New York, 2314589, 12.12.2012, 2, Aaron
Magnet, com.network, USA, New York, 2432656, 27.08.2014, 3, Alex
Perspective krop., warehouse, Belarus, Minsk, 2456983, 31.12.2014,2,Ashley
Driveway, enterprise, USA, New York, 2408570, 24.04.2014, 5, Aaron
near, enterprise, USA, Los Angeles, 2481553, 06.05.2015, 2, Ashley

Nori, warehouse, Japan, Tokyo, 2506369, 09.09.2015, 2, Blake
Nevsky comp., com.network, Russia, Moscow, 2337735, 15.04.2013, 1, Caroline
Perspectice korp., enterprise, Belarus, Minsk, 2361112, 17.08.2013, 2, Daniel
in touch, warehouse, USA, San Francisco, 2384723, 20.12.2013, 2, Alex
Nardis, com.network, Japan, Tokyo, 2531433, 14.01.2016, 3, Blake
;
run;
proc print data=q2_1;
title &quot;Database clients of Jolly Day&quot;;
run;
data q2_2;
set q2_1;
keep Country Contact_Number;
run;
proc print data=q2_2;
title &quot;Database clients of Jolly Day&quot;;
run;
data q2_3;
set q2_1;
infile datalines dsd;
length product $20.;
input product $ price;
datalines;
radio, 150
computer, 100
laptop, 250
Washing machine, 150
TV, 100
radio, 150
computer, 100
laptop, 250
Washing machine, 150
TV, 100
;
run;
proc print data=q2_3 noobs;
run;
data q2_4;
set q2_3;
length Price_condition $20. result $10.;
if price &lt;= 120 then Price_condition = &quot;Less or equal 120&quot;;

else Price_condition = &quot;Between 121 to 250&quot;;
if price &lt;= 120 then result = &quot;low&quot;;
else result = &quot;high&quot;;
run;
proc print data=q2_4;
run;

/* Question 3 */
data q3a;
infile datalines dsd;
length student $15.;
input student $ English Maths Biology Physics;
array program[4] English Maths Biology Physics;
if program[i] = . then delete;
datalines;
John, 56, 87, 68, .
chan, 89, 93, 77, 43
Mike, ., 66, ., .
Ramu, 90, ., ., 32
Alen, 54, 55, 32, .
Chang, 89, 76, 88, 89
Marissa, 23, 90, 43, 90
;
run;
proc print data=q3a;
run;

/* Question5 */
data q5;
infile datalines dsd;
length StudentName $15.;
input StudentName $ Physics;
if Physics &gt;= 90 then Grade = &quot;A&quot;;
else if Physics &gt;= 80 then Grade = &quot;B&quot;;
else if Physics &gt;= 70 then Grade = &quot;C&quot;;
else if Physics &gt;= 60 then Grade = &quot;D&quot;;
else Grade = &quot;F&quot;;
datalines;
Thomas, 72
Charles, 98
Anthony, 91
Paul, 64
Kenneth, 51
Kevin, 89
Joshua, 96
Justin, 97

Larry, 51
Frank, 52
;
run;
proc print data=q5;
run;
