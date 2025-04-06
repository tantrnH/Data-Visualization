/* Question 1 */
Data mobilephones;
length BRAND $ 20 MODEL $ 20 RAM $ 3 CHIPSET $ 20;
input BRAND $ MODEL $ RAM $ CHIPSET $ PRICE;
Datalines;
SAMSUNG GALAXY 8 HELLO 213
XIAOMI PRO 9 SNAPDRAGON 453
XIAOMI REDMI 7 HELLO 541
SAMSUNG GALAXY 8 SNAPDRAGON 790
XIAOMI PRO 8 SNAPDRAGON 875
SAMSUNG REDMI 8 HELLO 554
;
run;

Proc print data=mobilephones noobs;
Title "MOBILE PHONES";
run;

/* Question 2 */
Data college;
length StudentID $ 15 LastName $ 20 Initial $ 3 Age $ 3 Program $ 20;
input StudentID $ LastName $ Initial $ Age $ Program;
Datalines;
ST348-245 Walton L. 21 Drafting
ST348-246 Wilson R. 19 Science
ST348-247 Thompson G. 18 Business
ST348-248 James L. 23 Nursing
ST348-249 Peterson M. 37 Science
ST348-250 Grahman J. 20 Arts
ST348-251 Smith F. 26 Business
ST348-252 Nash S. 22 Arts
ST348-253 Russell W. 20 Nursing
ST348-254 Robitaille L. 19 Drafting
;
run;

Proc print data=college noobs;
Title "College Enrollment 2014-2015";
run;

/* Question 3_1 */
Data student;
length Students $ 10;
input Students $ Test1 Test2 Test3 Test4;
datalines;
John 39 65 25 77
Joe 98 99 78 58
David 76 76 98 96
Lisa 87 88 92 67
Amy 56 85 59 87
Kim 68 58 69 96
Greg 99 78 87 89
Mark 76 81 77 74
;
run;

Proc print data=student noobs;
run;

/* Question 3_2 */
Total = Test1 + Test2 + Test3 + Test4;

/* Question 3_3 */
libname new '/home/u64157915';

data new.fish;
	set sashelp.fish;
	color = "red";
run;

proc print data = new.fish;
run;
