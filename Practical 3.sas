data p3p1;
	length textdata $500.;					/* "textdata" is a name of the column, any name is fine, and length means how many bytes of data */
	textdata = "I live in Malaysis.";
run;

data p1q1_b;					/* another data set, p3q1_b is the data set name */
	set p3q1;
	result = count(textdata,'Malaysia');
run;

data p3q2;
	set p3q1;
	result = substr(textdata,find(textdata,"Malaysia is a beautiful country"),31);
run;

data p3q3;
	set p3q1;
	result = substr(textdata, find(textdata,”beautiful country”, 17);
	result = compress(result," ");
run;
	
data p3q4;
	length text $500.;
	text = "This is an Emotional story about MIEKO. Mieko is a talented artist and CALLI-GRAPHER. Her hand is badly hurt during the bombings of the war. The scared little GIRL is sent to live with her grandparents in the countryside where it is safer.";
run;

data p3q4_i;
	set p3q4;
	result = scan(text,7);					/* new column */
	result = lowcase(result);
	
data p3q4_ii;
	set p3q4;
	result = substr(text,find(text,"CALL-GRAPHER"),13);
	result = compress(result,"-");
run;
* OR ;
data p3q4_ii;
	set p3q4;
	result = tranwrd(text,"CALLI-GRAPHER","CALLIGRAPHER");
run;

data p3q5;
	length newtext $50.;
	Line1 = "Good";
	Line2 = "Luck";
	Line3 = "In";
	Line4 = "Your exam";
	
	newtext = catx("|",Line1,Line2,Line3,Line4);
run;
