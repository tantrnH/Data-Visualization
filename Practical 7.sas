options missing= ' ';

/* Question1 */
proc surveyselect data=sashelp.class out=p7q1_1 method=srs sampsize=10 seed=12345;
run;

data p7q1;
	set p7q1_1;
	/* DROP Sex; */
	KEEP Name Age Height Weight;


proc print data=p7q1; 
run;

/* Question2 */
data p7q2; /*question relevent to assignment*/
	infile datalines dsd;
	input Surname:$15. Paper1 Paper2 Average Grade:$5.;
	datalines;
Burns,65,71,68,C
Drinkwater,82,88,85,A
Haworth,67,75,71,B
Heyes,43,47,45,E
Smethurst,50,58,54,D
;
run;
proc print data=p7q2;
run;

proc corr data=p7q2;
	var Paper1 Paper2 Average;
run;

proc reg data=p7q2; /*calculate linear regression*/
	model Average = Paper1 Paper2;
run;

/* Question3 */
data p7q3;
	infile datalines dsd;
	input surname:$15. paper1 paper2 average grade:$5.;
	datalines;
Burns,65,71,68,C
Drinkwater,82,88,85,A
Haworth,67,75,71,B
Heyes,43,47,45,E
Smethurst,50,58,54,D
;
run;
proc print data=p7q3;
run;
proc reg data=p7q3;
	model average = paper1;
run;
