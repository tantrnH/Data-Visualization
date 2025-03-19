options missong = ' ';

data p6q1;
	infile datalines dsd;
	input Name:$15. Phys Chem Maths;
	datalines;
Shubhash,70,68,66
,.,.,.
Samar,55,.,85
Ashutosh,54,78,89
,.,.,.
Varun,50,96,85
Pratiksha,.,68,93
;
run;
proc print data=p6q1;
run;

data p6q1_2;
	set p6q1;
	array score [3] Phys Chem Maths;
	
	do i = 1 to 3;
		if score[i] = . then score[i] = 0;
	end;
	drop i;
run;
proc print data=p6q1_2;
run;

data p6q2;
	mean_value = "152,789";
	random_value = 56;
	abs_value = "21,-31";
	floor_value = 21.56;
	max_value = "34,89,90,56";
	
	/*functions*/
	mean = mean(152,789);
	random = floor(rand('UNIform',0,100));
	abs = catx(',',abs(21),abs(-31));
	floor = floor(21.56);
	max_min= catx(',',max(34,89,90,56),min(34,89,90,56));
	
run;
proc print data=p6q2;
run;

data p6q3;
	infile datalines dsd;
	input num1 num2;
	add = sum(num1,num2);
	subs = num1 - num2;
	multiply = num1 * num2;
	div = num1 / num2;
	expo = num1**num2;
	datalines;
13,56
78,99
66,32
66,77
88,54
76,45
21,87
55,77
;

run;
proc print data=p6q3;
run;

data p6q4;
	infile datalines dsd;
	input name:$15. biology chemical science maths;
	datalines;
"Anna samuel",89,90,.,78
"Chang Leong Li",78,87,.,55
"Ahmad Iman",98,45,.,32
"Raju Devan",.,.,89,.
"Loga",34,.,12,.
"Simon",78,89,87,66
"Mary Thomas",34,.,.,.
;
run;
proc print data=p6q4;
run;

data p6q4_2;
	set p6q4;
	
	biology = coalesce(biology,0);
	chemical = coalesce(chemical,0);
	science = coalesce(science,0);
	maths = coalesce(maths,0);
run;
proc print data=p6q4_2;
run;



