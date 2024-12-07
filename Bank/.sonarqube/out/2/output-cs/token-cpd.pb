�
lG:\Calidad y Pruebas\1era Unidad\Lab 4\lab-2024-ii-cps-u1-04-csharp-vctoraguilar\Bank\Bank.WebApi\Program.cs
var 
builder 
= 
WebApplication 
. 

(* +
args+ /
)/ 0
;0 1
builder 
. 
Services 
. 

AddOpenApi 
( 
) 
; 
var 
app 
= 	
builder
 
. 
Build 
( 
) 
; 
if

 
(

 
app

 
.

 
Environment

 
.

 


 !
(

! "
)

" #
)

# $
{ 
app 
. 

MapOpenApi 
( 
) 
; 
}
app 
. 
UseHttpsRedirection 
( 
) 
; 
var 
	summaries 
= 
new 
[ 
] 
{ 
$str 
, 
$str 
, 
$str #
,# $
$str% +
,+ ,
$str- 3
,3 4
$str5 ;
,; <
$str= D
,D E
$strF K
,K L
$strM Y
,Y Z
$str[ f
} 
; 
app 
. 
MapGet 

(
 
$str 
, 
(  
)  !
=>" $
{ 
var 
forecast 
= 

Enumerable 
. 
Range $
($ %
$num% &
,& '
$num( )
)) *
.* +
Select+ 1
(1 2
index2 7
=>8 :
new 
WeatherForecast 
( 	
DateOnly 
. 
FromDateTime !
(! "
DateTime" *
.* +
Now+ .
.. /
AddDays/ 6
(6 7
index7 <
)< =
)= >
,> ?
Random 
. 
Shared 
. 
Next 
( 
-  
$num  "
," #
$num$ &
)& '
,' (
	summaries 
[ 
Random 
. 
Shared #
.# $
Next$ (
(( )
	summaries) 2
.2 3
Length3 9
)9 :
]: ;
) 	
)	 

. 	
ToArray	 
( 
) 
; 
return   

forecast   
;   
}!! 
)!! 
."" 
WithName"" 	
(""	 

$str""
 
)"" 
;""  
app$$ 
.$$ 
Run$$ 
($$ 
)$$ 	
;$$	 

record&& 
WeatherForecast&& 
(&& 
DateOnly&& 
Date&&  $
,&&$ %
int&&& )
TemperatureC&&* 6
,&&6 7
string&&8 >
?&&> ?
Summary&&@ G
)&&G H
{'' 
public(( 

int(( 
TemperatureF(( 
=>(( 
$num(( !
+((" #
((($ %
int((% (
)((( )
((() *
TemperatureC((* 6
/((7 8
$num((9 ?
)((? @
;((@ A
})) �
wG:\Calidad y Pruebas\1era Unidad\Lab 4\lab-2024-ii-cps-u1-04-csharp-vctoraguilar\Bank\Bank.WebApi\Models\BankAccount.cs
	namespace 	
Bank
 
. 
WebApi 
. 
Models 
{ 
public 

class 
BankAccount 
{ 
private 
readonly 
string 
m_customerName  .
;. /
private 
double 
	m_balance  
;  !
private 
BankAccount 
( 
) 
{ 
}  !
public 
BankAccount 
( 
string !
customerName" .
,. /
double0 6
balance7 >
)> ?
{		 	
m_customerName

 
=

 
customerName

 )
;

) *
	m_balance 
= 
balance 
;  
} 	
public
string
CustomerName
{
get
{
return
m_customerName
;
}
}
public 
double 
Balance 
{ 
get  #
{$ %
return& ,
	m_balance- 6
;6 7
}8 9
}; <
public 
void 
Debit 
( 
double  
amount! '
)' (
{ 	
if 
( 
amount 
> 
	m_balance "
)" #
throw 
new '
ArgumentOutOfRangeException 5
(5 6
$str6 >
)> ?
;? @
if 
( 
amount 
< 
$num 
) 
throw 
new '
ArgumentOutOfRangeException 5
(5 6
$str6 >
)> ?
;? @
	m_balance 
-= 
amount 
;  
} 	
public 
void 
Credit 
( 
double !
amount" (
)( )
{ 	
if 
( 
amount 
< 
$num 
) 
throw 
new '
ArgumentOutOfRangeException 5
(5 6
$str6 >
)> ?
;? @
	m_balance 
+= 
amount 
;  
} 	
} 
} 