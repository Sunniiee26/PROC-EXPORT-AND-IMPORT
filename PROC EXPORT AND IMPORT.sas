data class;
set sashelp.class;
run;

proc copy in=sashelp out=work memtype=data;
run;
/*EXPORTING SAS DATASETS INTO EXCEL*/
/*OPTIONS
SHEET,PUTNAMES,*/
proc export data=sashelp.class
outfile="C:\Users\suneel reddy\Desktop\export\excel\class.xls"
dbms=xls replace;
run;
proc export data=sashelp.cars
outfile="C:\Users\suneel reddy\Desktop\export\excel\cars.xls"
dbms=xls replace;
run;
proc export data=sashelp.baseball
outfile="C:\Users\suneel reddy\Desktop\export\excel\baseball.xlsx"
dbms=xlsx replace;
run;
proc export data=sashelp.flags
outfile="C:\Users\suneel reddy\Desktop\export\excel\flags.xlsx"
dbms=xlsx replace;
run;
proc export data=sashelp.heart
outfile="C:\Users\suneel reddy\Desktop\export\excel\heart.xlsx"
dbms=xlsx replace;
run;
proc export data=sashelp.classfit
outfile="C:\Users\suneel reddy\Desktop\export\excel\classfit.xlsx"
dbms=xlsx replace;
run;
proc export data=sashelp.fish
outfile="C:\Users\suneel reddy\Desktop\export\excel\fish.xlsx"
dbms=xlsx replace;
run;
proc export data=sashelp.gas
outfile="C:\Users\suneel reddy\Desktop\export\excel\gas.xlsx"
dbms=xlsx replace;
run;
proc export data=sashelp.holiday
outfile="C:\Users\suneel reddy\Desktop\export\excel\holiday.xlsx"
dbms=xlsx replace;
run;
proc export data=sashelpl.lake
outfile="C:\Users\suneel reddy\Desktop\export\excel\lake.xlsx"
dbms=xlsx replace;
run;
proc export data=sahelp.library
outfile="C:\Users\suneel reddy\Desktop\export\excel\library.xlsx"
dbms=xlsx replace;
run;
proc export data=sashelp.rent
outfile="C:\Users\suneel reddy\Desktop\export\excel\rent.xlsx"
dbms=xlsx replace;
run;
proc export data=sashelp.retail
outfile="C:\Users\suneel reddy\Desktop\export\excel\retail.xlsx"
dbms=xlsx replace;
run;
proc export data=sashelp.shoes
outfile="C:\Users\suneel reddy\Desktop\export\excel\shoes.xlsx"
dbms=xlsx replace;
run;
proc export data=sashelp.snacks
outfile="C:\Users\suneel reddy\Desktop\export\excel\snacks.xlsx"
dbms=xlsx replace;
run;
proc export data=sashelp.steel
outfile="C:\Users\suneel reddy\Desktop\export\excel\steel.xlsx"
dbms=xlsx replace;
run;
proc export data=sashelp.tourism
outfile="C:\Users\suneel reddy\Desktop\export\excel\tourism.xlsx"
dbms=xlsx replace;
run;
proc export data=sashelp.workers
outfile="C:\Users\suneel reddy\Desktop\export\excel\workers.xlsx"
dbms=xlsx replace;
run;
proc export data=sashelp.thick
outfile="C:\Users\suneel reddy\Desktop\export\excel\thick.xlsx"
dbms=xlsx replace;
run;
proc export data=sashelp.baseball
outfile="C:\Users\suneel reddy\Desktop\export\excel\Alldata.xlsx"
dbms=xlsx replace;
sheet="baseball";
putnames=no;
run;
PROC EXPORT DATA=SASHELP.CLASS(keep=name height weight)
outfile="C:\Users\suneel reddy\Desktop\export\excel\Alldata.xlsx"
dbms=xlsx replace;
sheet="class";
putnames=no;
run;
PROC export data=sashelp.cars
outfile="C:\Users\suneel reddy\Desktop\export\excel\alldata.xlsx"
dbms=xlsx replace;
sheet="cars";
run;
proc export data=sashelp.classfit
outfile="C:\Users\suneel reddy\Desktop\export\excel\class.xlsx"
dbms=xlsx replace;
sheet="classfit";
putnames=yes;
run;
proc contents data=sashelp.cars short varnum;
run;
proc export data=sashelp.heart
outfile="C:\Users\suneel reddy\Desktop\export\excel\holiday.xlsx"
dbms=xlsx replace;
sheet="heart";
putnames=yes;
run;
proc export data=sashelp.snacks
outfile="C:\Users\suneel reddy\Desktop\export\excel\alldata.xlsx"
dbms=xlsx replace;
sheet="snacks";
putnames=yes;
run;

/*EXPORTING SAS DATASETS INTO CSV FILES*/
/*OPTIONS=PUTNAMES*/

PROC EXPORT data=sashelp.cars
outfile="C:\Users\suneel reddy\Desktop\export\csv\cars.csv"
dbms=csv replace;
run;
proc export data=sashelp.fish
outfile="C:\Users\suneel reddy\Desktop\export\csv\fish.csv"
dbms=csv replace;
run;
proc export data=sashelp.lake
outfile="C:\Users\suneel reddy\Desktop\export\csv\lake.csv"
dbms=csv replace;
run;
proc export data=sashelp.class
outfile="C:\Users\suneel reddy\Desktop\export\csv\class.csv"
dbms=csv
replace;
putname=no;
run;
proc export data=sashelp.classfit
outfile="C:\Users\suneel reddy\Desktop\export\csv\class.csv"
dbms=csv replace;
sheet=baseball;
getnames=yes;
run;

proc export data=sashelp.baseball
outfile="C:\Users\suneel reddy\Desktop\export\csv\fish.csv"
dbms=csv replace;
sheet1="baseball";
run;
/*above pgm is gone error that is statement is not valid 
or it is used out of proper order*/
;

/*EXPORTING SAS DATASETS INTO TEXT DOCUMENTS */
/*OPTIONS=PUTNAMES,DELIMETER*/
proc export data=sashelp.fish
outfile="C:\Users\suneel reddy\Desktop\export\text\fish.txt"
dbms=tab replace;
run;

proc export data=sashelp.heart
outfile="C:\Users\suneel reddy\Desktop\export\text\heart.txt"
dbms=tab replace;
run;
proc export data=sashelp.baseball
outfile="C:\Users\suneel reddy\Desktop\export\text\baseball.txt"
dbms=tab replace;
run;
proc export data=sashelp.class
outfile="C:\Users\suneel reddy\Desktop\export\text\class.txt"
dbms=tab replace;
run;
proc export data=sashelp.retail
outfile="C:\Users\suneel reddy\Desktop\export\text\retail.txt"
dbms=tab replace;
run;
proc export data=sashelp.lake
outfile="C:\Users\suneel reddy\Desktop\export\text\lake.txt"
dbms=tab replace;
run;
proc export data=sashelp.snacks
outfile="C:\Users\suneel reddy\Desktop\export\text\snacks.txt"
dbms=tab replace;
run;
proc export data=sashelp.air
outfile="C:\Users\suneel reddy\Desktop\export\text\air.txt"
dbms=tab replace;
run;
proc export data=sashelp.shoes
outfile="C:\Users\suneel reddy\Desktop\export\text\shoes@.txt"
dbms=tab replace;
delimeter="@";
run;
proc export data=sashelp.gas
outfile="C:\Users\suneel reddy\Desktop\export\text\gas@.txt"
dbms=tab replace;
PUTNAMES=NO;
delimeter="@";
run;

/*EXPORTING SAS DATASETS INTO MS-ACCESS*/

proc export data=sashelp.flags
outtable=flags
dbms=access replace;
database="C:\Users\suneel reddy\Desktop\export\ms access\flags.mdb";
run;
PROC EXPORT DATA=SASHELP.BASEBALL
OUTTABLE=BASEBALL
DBMS=ACCESS REPLACE;
DATABASE="C:\Users\suneel reddy\Desktop\export\ms access\BASEBALL.mdb";
run;

/*PROC IMPORT*/
/*IMPORTING EXTERNAL FILES LIKE EXCEL,CSV,TEXT,MS-ACCESS INTO SAS DATASETS*/

1/*IMPORTING EXCEL FILES*/
/*OPTIONS*
  GETNAMES=YES/NO
  DATAROW=
  SHEET="SHEETNAME "
  RANGE=*/

PROC IMPORT DATAFILE="C:\Users\suneel reddy\Desktop\export\excel\baseball.xlsx"
  OUT=BASEBALL
  DBMS=XLSX REPLACE;
  RUN;

PROC IMPORT DATAFILE="C:\Users\suneel reddy\Desktop\export\excel\alldata.xlsx"
OUT=CARS
DBMS=XLSX REPLACE;
SHEET="CARS";
RUN;

proc import datafile="C:\Users\suneel reddy\Desktop\export\excel\flags.xlsx"
out=flags
dbms=xlsx replace;
getnames=yes;
datarow=2;
range="flags$b10:c32";
run;
/*errors*/
proc import datafile="C:\Users\suneel reddy\Desktop\export\excel\shoes.xlsx"
out=shoes
dbms=xlsx replace;
range="shoes$b10:d20";
run;

proc import datafile="C:\Users\suneel reddy\Desktop\export\excel\fish.xlsx"
out=fish
dbms=xlsx replace;
datarow=2;
range="fish $ c10:f20";
run;

libname sunil xlsx "C:\Users\suneel reddy\Desktop\export\excel\alldata.xlsx";

proc copy in=sunil out=work;
run;
data class;
infile "C:\Users\suneel reddy\Desktop\export\text\class.txt" dlm="09"x firstobs=2;
input name$ sex$ age height weight;
run;

proc import datafile="C:\Users\suneel reddy\Desktop\export\text\gas@.txt"
out=class1 dbms=tab replace;
delimeter="@";
run;
