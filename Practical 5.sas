options missing='';

/* Question1 */
data p5q1_1;
	infile datalines dsd;
	lengh Name :$12;
	input Name $ Score1 Score2 Score3 ;
	datalines;
Sam,77,68,66
Deepanshu,50,.,89
,.,.,.
Shane,55,78,89
Roger,50,97,86
,.,.,.
Priya,88,68,93
;
run;

data p5q1_2;
	infile datalines dsd;
	input team $ pos $ rebounds assists;
	datalines;
A,G,10,8
B,F,4,.
,F,7,10
D,C,.,14
E,F,.,10
;
run;

data p5q1_3;
	merge p5q1_1 p5q1_2;
	if missing(cats(of _all_)) then delete;
run;
proc print data=p5q1_3;
run;

/* Question2 */ 
data p5q2_1;
	infile datalines dsd;
	input ID NAME :$20. Class :$10. MARK GENDER :$6.;
	datalines;
1,John Deo,Four,75,female
2,Max Ruin,Three,85,male
3,Arnold,Three,55,male
4,Krish Star,Four,60,female
5,John Mike,Four,60,female
6,Alex John,Four,55,male
7,My John Rob,Five,78,male
8,Asruid,Five,85,male
9,Tes Qry,Six,78,male
10,Big John,Four,55,female
;
run;

data p5q2;
	set p5q2_1(keep=NAME MARK);
run;

/* Question3 */
data p5q3;
	input Category $ Amount;
	format Amount dollar10.2;
	datalines;
Food 12
Food 12
Transportation 12
Utilities 100
Food 10
Clothes 55
Electronics 188
;
run;
proc print data=p5q3;
run;

/* Question4 */
data p5q4;
	infile datalines dsd;
	input name :$10. results;
	select;
		when(results<50) Grade = "FAILL";
		when(results>=50) Grade = "PASS";
		otherwise Grade = "N/A";
	end;
	datalines;
Caroyln,80
Patricia,67
Matilda,43
Benita,46
Dominica,86
Shella,94
Andy,52
Consuela,53
Roxane,50
Keri,43
;
run;
proc print data=p5q4;
run;
