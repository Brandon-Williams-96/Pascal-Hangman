{¸ Brandon Williams 2015}{7255}{13321}{Sociology incustody}{Comp4}
Program Hman;
uses crt;
const mhp=110; {maximum hang phrases}
      mhs=36; {maximum string}

      type Student=record
       name: String[40];
       Sociology_Group : String[3];
       Candidate_Number : integer;
       Highest_Score:integer;
      end;

    HangPhrase = Record
     Topic:string[20];
     key_phrase:string[mhs];
     Wrong_guesses_Allowed:integer;
     {Points_Available:integer;   design change}
    end;

    Game=record
     Date:String[11];
     Topic:String[20];
     Candidate_Number : string[4];
     key_phrase:string[mhs]
    end;

var p,t,i:char;
w:array[1..mhs] of boolean;
locked_away:boolean;
k:char;
NOM:integer;
z,qqq:integer;
x:integer;
name:string[20];
candidate_number:integer;
       lhp:integer;                       {number of hangphrases}
       hp:array[1..mhp] of hangphrase;
       h:hangphrase;
       

Function getstring(P,Q:integer):string;
var s:string[20]; k:char;
begin
s:='';
repeat
 repeat
  k:=readkey
 until k in ['A'..'Z','a'..'z',chr(13),chr(8),' '];
  if k in ['A'..'Z','a'..'z',' ']
  then
   s:=s+k;
if (K = chr(8)) and (S>'') then
  dec(s[0]);
gotoxy(p,q); write(s, '');
until k=chr(13);
getstring:=s;
end;

Procedure Data;
var f:text;
d:string[48];
h,g:integer;
  w:char;
begin
assign (f,'keywords.csv');
reset(f);

h:=0;
while not eof(f) do
 begin
 h:=h+1;
 readln(f,hp[h].key_phrase);
 d:=hp[h].key_phrase;
  for g:=1 to length(d) do
   d[g]:=upcase(d[g]);
 hp[h].key_phrase:=d;
 g:=0;
 for w:='A' to 'Z' do
   if pos(w,d) >0 then
      g:=g+1;
 if 18-g >0 then
  begin
   hp[h].Wrong_guesses_Allowed:=18-g;
   NOM:=hp[h].Wrong_guesses_Allowed;
  end
 else
  hp[h].Wrong_guesses_Allowed:=0;
 end;
close(f);
lhp:=h;
end;


Procedure Family;
var f:text;
d:string[48];
h,g:integer;
  w:char;
begin
assign (f,'family.csv');
reset(f);

h:=0;
while not eof(f) do
 begin
 h:=h+1;
 readln(f,hp[h].key_phrase);
 d:=hp[h].key_phrase;
  for g:=1 to length(d) do
   d[g]:=upcase(d[g]);
 hp[h].key_phrase:=d;
 g:=0;
 for w:='A' to 'Z' do
   if pos(w,d) >0 then
      g:=g+1;
 if 18-g >0 then
  begin
   hp[h].Wrong_guesses_Allowed:=18-g;
   NOM:=hp[h].Wrong_guesses_Allowed;
  end
 else
  hp[h].Wrong_guesses_Allowed:=0;
 end;
close(f);
lhp:=h;
end;


Procedure Education;
var f:text;
d:string[48];
h,g:integer;
  w:char;
begin
assign (f,'edu.csv');
reset(f);

h:=0;
while not eof(f) do
 begin
 h:=h+1;
 readln(f,hp[h].key_phrase);
 d:=hp[h].key_phrase;
  for g:=1 to length(d) do
   d[g]:=upcase(d[g]);
 hp[h].key_phrase:=d;
 g:=0;
 for w:='A' to 'Z' do
   if pos(w,d) >0 then
      g:=g+1;
 if 18-g >0 then
  begin
   hp[h].Wrong_guesses_Allowed:=18-g;
   NOM:=hp[h].Wrong_guesses_Allowed;
  end
 else
  hp[h].Wrong_guesses_Allowed:=0;
 end;
close(f);
lhp:=h;
end;


Procedure Beliefs;
var f:text;
d:string[48];
h,g:integer;
  w:char;
begin
assign (f,'beliefs.csv');
reset(f);

h:=0;
while not eof(f) do
 begin
 h:=h+1;
 readln(f,hp[h].key_phrase);
 d:=hp[h].key_phrase;
  for g:=1 to length(d) do
   d[g]:=upcase(d[g]);
 hp[h].key_phrase:=d;
 g:=0;
 for w:='A' to 'Z' do
   if pos(w,d) >0 then
      g:=g+1;
 if 18-g >0 then
  begin
   hp[h].Wrong_guesses_Allowed:=18-g;
   NOM:=hp[h].Wrong_guesses_Allowed;
  end
 else
  hp[h].Wrong_guesses_Allowed:=0;
 end;
close(f);
lhp:=h;
end;

Procedure crime;
var f:text;
d:string[48];
h,g:integer;
  w:char;
begin
assign (f,'crime.csv');
reset(f);

h:=0;
while not eof(f) do
 begin
 h:=h+1;
 readln(f,hp[h].key_phrase);
 d:=hp[h].key_phrase;
  for g:=1 to length(d) do
   d[g]:=upcase(d[g]);
 hp[h].key_phrase:=d;
 g:=0;
 for w:='A' to 'Z' do
   if pos(w,d) >0 then
      g:=g+1;
 if 18-g >0 then
  begin
   hp[h].Wrong_guesses_Allowed:=18-g;
   NOM:=hp[h].Wrong_guesses_Allowed;
  end
 else
  hp[h].Wrong_guesses_Allowed:=0;
 end;
close(f);
lhp:=h;
end;

Procedure Login;
var strin:string; num:integer;
begin
clrscr;
window(1,1,80,1); textbackground(white); clrscr;
window(1,2,80,24);textbackground(red); clrscr;
window(1,25,80,25); textbackground(white); clrscr;
window(1,1,80,25);

textbackground(white);
textcolor(red); gotoxy(57,25); write('¸ Brandon Williams 2015');
textbackground(red);
textcolor(white); gotoxy(5,5); write('S  O  C  I  O  L O  G  Y     H  A  N  G  M  A  N');
Gotoxy(5,10); write('Name : ');
gotoxy(7,20); write('Please Enter Your Name');
repeat
name:=getstring(13,10);
if name='' then
until name <>'';
repeat
Gotoxy(5,15); write('Candidate number : ');
readln(strin);
val(strin, candidate_number,num);
until candidate_number >0;
end;


Procedure person;
begin
 window(65,3,75,12); textbackground(0); clrscr;
 window(1,1,80,25);
  Textbackground(2);
   gotoxy(69,5); write('   ');
   gotoxy(69,6); write('   ');
   gotoxy(65,7); write('           ');
   gotoxy(68,8); write('     ');
   gotoxy(68,9); write('     ');
   gotoxy(68,10); write('  ');
   gotoxy(71,10); write('  ');
   gotoxy(68,11); write('  ');
   gotoxy(71,11); write('  ');
   gotoxy(71,12); write('   ');
   gotoxy(67,12); write('   ');
end;

Procedure prison(j:integer);
var i:integer;
begin
window(65,3,75,12); textbackground(black);
window(1,1,80,25);
textcolor(3);
gotoxy(65,3); write('±±±±±±±±±±±');
for i:=1 to j do
  begin
   gotoxy(66,13-i); write('±');
   gotoxy(68,13-i); write('±');
   gotoxy(70,13-i); write('±');
   gotoxy(72,13-i); write('±');
   gotoxy(74,13-i); write('±');
  end;
end;

Procedure personmoves;
begin
 window(65,3,75,12); textbackground(black);  clrscr;
 window(1,1,80,25);
  Textbackground(2);
   
   gotoxy(69,5); write('   ');
   gotoxy(69,6); write('   ');
   gotoxy(65,6); write(' ');
   gotoxy(75,6); write(' ');
   gotoxy(65,7); write('           ');
   gotoxy(68,8); write('     ');
   gotoxy(68,9); write('     ');
   gotoxy(68,10); write('  ');
   gotoxy(71,10); write('  ');
   gotoxy(68,11); write('  ');
   gotoxy(71,11); write('  ');
   gotoxy(71,12); write('   ');
   gotoxy(67,12); write('   ');

end;

Procedure Instructions;
begin

 window(1,1,80,1); textbackground(white); clrscr;
 window(1,2,80,24);textbackground(red); clrscr;
 window(1,25,80,25); textbackground(white); clrscr;
 window(1,1,80,25); textcolor(red);
 textcolor(red); gotoxy(57,25); textbackground(white); write('¸ Brandon Williams 2015');
 Gotoxy(34,1); writeln('Instructions');
 textbackground(red); textcolor(white);
 gotoxy(10,10); writeln('You have to select letters until you either');
 gotoxy(10,11); writeln('you guess the word or run out of lives.');
 gotoxy(10,12); writeln('You can choose a topic from inside the settings menu.');
end;


Procedure DisplayWord(h:hangphrase);
var 
e:integer; {This is number of char for hangphrase}
n:char;
j,k:integer;
begin
textcolor(red); textbackground(white); gotoxy(57,25); write('¸ Brandon Williams 2015');
e:=length(h.key_phrase);
{gotoxy(20,20); textcolor(black); write(h.key_phrase);    Test Line}

for j:=1 to e do
 begin
  gotoxy(2+2*j,8);
  if w[j] or (h.key_phrase[j] in ['-',' ']) then
  begin
  textbackground(red); textcolor(Yellow);
   write(h.key_phrase[j])
   end
 else
   begin
    textbackground(white); textcolor(green);
    write('_');
   end;
 end;

end;

procedure person_moving;
begin
 clrscr;
 textcolor(red); textbackground(white); gotoxy(57,25); write('¸ Brandon Williams 2015');
 window(1,1,80,1); textbackground(white); clrscr;
 window(1,2,80,24);textbackground(red); clrscr;
 window(1,25,80,25); textbackground(white); clrscr;
 window(1,1,80,25);

 window(65,3,75,12); textbackground(0); clrscr;
 window(1,1,80,25);
 Textbackground(2);
 

   prison(0);
   Textbackground(2);
   textcolor(green);
   gotoxy(69,5); write('   ');
   gotoxy(69,6); write('   ');
   gotoxy(65,7); write('           ');
   gotoxy(68,8); write('     ');
   gotoxy(68,9); write('     ');
   gotoxy(68,10); write('  ');
   gotoxy(71,10); write('  ');
   gotoxy(68,11); write('  ');
   gotoxy(71,11); write('  ');
   gotoxy(71,12); write('   ');
   gotoxy(67,12); write('   ');

   delay(32000);
   delay(32000);
   delay(32000);
   delay(32000);
   delay(32000);
   delay(32000);

   clrscr;
   window(1,1,80,1); textbackground(white); clrscr;
   window(1,2,80,24);textbackground(red); clrscr;
   window(1,25,80,25); textbackground(white); clrscr;
   window(1,1,80,25);
   prison(0);
   textcolor(green);
   Textbackground(2);
   gotoxy(53,5); textcolor(green); write('   ');
   gotoxy(53,6); textcolor(green); write('   ');
   gotoxy(49,7); textcolor(green); write('           ');
   gotoxy(52,8); textcolor(green); write('     ');
   gotoxy(52,9); textcolor(green); write('     ');
   gotoxy(52,10); textcolor(green); write('  ');
   gotoxy(55,10); textcolor(green); write('  ');
   gotoxy(52,11); textcolor(green); write('  ');
   gotoxy(55,11); textcolor(green); write('  ');
   gotoxy(55,12); textcolor(green); write('   ');
   gotoxy(51,12); textcolor(green); write('   ');


   delay(32000);
   delay(32000);
   delay(32000);
   delay(32000);
   delay(32000);
   delay(32000);

   clrscr;
   window(1,1,80,1); textbackground(white); clrscr;
   window(1,2,80,24);textbackground(red); clrscr;
   window(1,25,80,25); textbackground(white); clrscr;
   window(1,1,80,25);
   prison(0);
   textcolor(green);
   Textbackground(2);
   gotoxy(39,5); textcolor(green); write('   ');
   gotoxy(39,6); textcolor(green); write('   ');
   gotoxy(35,7); textcolor(green); write('           ');
   gotoxy(38,8); textcolor(green); write('     ');
   gotoxy(38,9); textcolor(green); write('     ');
   gotoxy(38,10); textcolor(green); write('  ');
   gotoxy(41,10); textcolor(green); write('  ');
   gotoxy(38,11); textcolor(green); write('  ');
   gotoxy(41,11); textcolor(green); write('  ');
   gotoxy(41,12); textcolor(green); write('   ');
   gotoxy(37,12); textcolor(green); write('   ');

   delay(32000);
   delay(32000);
   delay(32000);
   delay(32000);
   delay(32000);
   delay(32000);

   clrscr;
   window(1,1,80,1); textbackground(white); clrscr;
   window(1,2,80,24);textbackground(red); clrscr;
   window(1,25,80,25); textbackground(white); clrscr;
   window(1,1,80,25);
   prison(0);
   textcolor(green);
   Textbackground(2);
   gotoxy(23,5); textcolor(green); write('   ');
   gotoxy(23,6); textcolor(green); write('   ');
   gotoxy(19,7); textcolor(green); write('           ');
   gotoxy(22,8); textcolor(green); write('     ');
   gotoxy(22,9); textcolor(green); write('     ');
   gotoxy(22,10); textcolor(green); write('  ');
   gotoxy(25,10); textcolor(green); write('  ');
   gotoxy(22,11); textcolor(green); write('  ');
   gotoxy(25,11); textcolor(green); write('  ');
   gotoxy(25,12); textcolor(green); write('   ');
   gotoxy(21,12); textcolor(green); write('   ');

   delay(32000);
   delay(32000);
   delay(32000);
   delay(32000);
   delay(32000);
   delay(32000);

   clrscr;
   window(1,1,80,1); textbackground(white); clrscr;
   window(1,2,80,24);textbackground(red); clrscr;
   window(1,25,80,25); textbackground(white); clrscr;
   window(1,1,80,25);
   prison(0);
   Textbackground(2);
   gotoxy(7,5); textcolor(green); write('   ');
   gotoxy(7,6); textcolor(green); write('   ');
   gotoxy(3,7); textcolor(green); write('           ');
   gotoxy(6,8); textcolor(green); write('     ');
   gotoxy(6,9); textcolor(green); write('     ');
   gotoxy(6,10); textcolor(green); write('  ');
   gotoxy(9,10); textcolor(green); write('  ');
   gotoxy(6,11); textcolor(green); write('  ');
   gotoxy(9,11); textcolor(green); write('  ');
   gotoxy(9,12); textcolor(green); write('   ');
   gotoxy(5,12); textcolor(green); write('   ');

   delay(32000);
   delay(32000);
   delay(32000);
   delay(32000);
   delay(32000);
   delay(32000);

   window(1,1,80,1); textbackground(white); clrscr;
     window(1,2,80,24);textbackground(red); clrscr;
     window(1,25,80,25); textbackground(white); clrscr;
     window(1,1,80,25);  textbackground(red);
     textcolor(white);
     gotoxy(26,5); writeln('Y O U    E S C A P E D   !');

   delay(32000);
   delay(32000);
   delay(32000);
   delay(32000);
   delay(32000);
   delay(32000);

end;

Procedure sort;
var f:text;
names:array[1..10] of string[30];
scores:array[1..10] of integer;
w,e,r,t,err:integer;
temp:string[30];
begin
assign(f,'leader.txt');
reset(f);
w:=1;
while not eof(f) do
 begin
  readln(f,names[w]);
  readln(f,temp);
  val(temp,scores[w],err);
  w:=w+1;
 end;
close(f);
w:=w-1;
for e:=1 to w-1 do
 for r:=1 to w-1 do
  begin
   if scores[r] < scores[r+1] then
    begin
     temp:=names[r]; t:=scores[r];
      names[r] := names[r+1]; scores[r]:= scores[r+1];
      names[r+1]:=temp;  scores[r+1]:=t;
    end
  end;
rewrite(f);
for e:=1 to w do
 begin
  writeln(f,names[e]);
  str(scores[e],temp);
  writeln(f,temp);
 end;
close(f);

end;

Procedure addtoscores(name:string; Z:integer);
var f,g:text;
bool:boolean;
na,hs,zs:string;
high_score,err:integer;
count,ij:integer;
begin
count:=0;
assign(f,'leader.txt');
assign(g,'temp.txt');
reset(f);
rewrite(g);
bool:=true;
if eof(f) and (count>10) then
 begin
  writeln(g,name);
  str(z,zs);
  writeln(g,zs);
 end
else
   while not eof(f) and (count<10) do
      begin
      count:=count+1;
      if bool then
        begin
        readln(f,na);
        readln(f,hs);
        val(hs,high_score,err);
	end
      else 
        bool:=true;
      if ((z>=high_score) and (z>=0) and eof(f)) then
       begin
        bool:=false;
        writeln(g,name);
        str(z,zs);
        writeln(g,zs);
		z:=-1;
       end
      else
       begin
        bool:=true;
        writeln(g,na);
        writeln(g,hs);
       end
      end;

 close(f);
 close(g);
 erase(f);
 rename(g,'leader.txt');
end;


function Guessletters(h:hangphrase):integer;
var nlng {number of letters not guessed}:integer;
wg{wrong guess}:integer;
gl:integer; {guesses left}
letter_found:boolean;
i:integer;
t:char;
begin
 clrscr;
 window(1,1,80,1); textbackground(white); clrscr;
 window(1,2,80,24);textbackground(red); clrscr;
 window(1,25,80,25); textbackground(white); clrscr;
 window(1,1,80,25);
 person;
 for i:=1 to mhs do
  w[i]:=false;
 for i:=1 to length(h.key_phrase) do
   if h.key_phrase[i] in [' ','-'] then
     w[i]:=true;
  locked_away:= false;
  wg:=0;
   repeat
    displayword(h);
    letter_found:=false;
    repeat
     t:=upcase(readkey);
    until t in ['A'..'Z'];
    gotoxy(5+2*(ord(t)-64),12);
    textbackground(red); textcolor(green); write(t);
    nlng:=0;
    for i:=1 to length(h.key_phrase) do
     begin
      if t=h.key_phrase[i] then
       begin
        w[i]:=true;
        letter_found:=true;
       end
      else
     if not w[i] then
      nlng:=nlng+1;
   end;
   if not letter_found then
    begin
     person;
     wg:=wg+1;
     prison(wg);
     gl:=9-wg;
     gotoxy(10,20); textbackground(red); textcolor(white); write('Guesses left = ',gl);
     end
     else
     personmoves;
     prison(wg);

    if wg=9 then
	 begin
      locked_away:=true;
	  clrscr;
       window(1,1,80,1); textbackground(white); clrscr;
       window(1,2,80,24);textbackground(red); clrscr;
       window(1,25,80,25); textbackground(white); clrscr;
       window(1,1,80,25);
	  textbackground(red);
	  gotoxy(7,10); textcolor(white); write('U N L U C K Y    M A Y B E    N E X T    TIME : (');
	  gotoxy(20,20); textcolor(white); write('YOUR WORD WAS ', h.key_phrase);
      delay(32000);  delay(32000);      delay(32000);
	  delay(32000);   delay(32000);     delay(32000);
      delay(32000);   delay(32000);      delay(32000);
     end
 until(nlng = 0) or locked_away;
  if nlng=0 then
   begin
    qqq:=qqq+(9-wg);
     z:=qqq;
     window(1,1,80,1); textbackground(white); clrscr;
     window(1,2,80,24);textbackground(red); clrscr;
     window(1,25,80,25); textbackground(white); clrscr;
     window(1,1,80,25);  textbackground(red);
     textcolor(white);
     gotoxy(25,5); writeln('YOU SCORED ', z ,' POINTS SO FAR !');
     gotoxy(30,10); writeln('NEXT WORD ! :)');
	 delay(32000); delay(32000); delay(32000); delay(32000);
     delay(32000); delay(32000); delay(32000); delay(32000);
     delay(32000); delay(32000); delay(32000); delay(32000);
     delay(32000); delay(32000); delay(32000); delay(32000); 
     person_moving;

   end;

  

guessletters:=1;
addtoscores(name,z);
end;

Procedure Skreenout;
var x,y:integer;
begin
clrscr;
window(1,1,80,1); textbackground(white); clrscr;
window(1,2,80,24);textbackground(red); clrscr;
window(1,25,80,25); textbackground(white); clrscr;
window(1,1,80,25);
textcolor(red); gotoxy(57,25);Textbackground(White); write('¸ Brandon Williams 2015');

Textbackground(White);
textcolor(RED); gotoxy(15,1); write('S  O  C  I  O  L O  G  Y     H  A  N  G  M  A  N');

   Textbackground(red);
   textcolor(15); gotoxy(20,10); write('1. Start Game');
   textcolor(15); gotoxy(20,12); write('2. Settings');
   textcolor(15); gotoxy(20,14); write('3. Leaderboard');

   textbackground(white);
   textcolor(red); gotoxy(2,25); write('4. EXIT');
   textbackground(white);
   textcolor(red); gotoxy(57,25); write('¸ Brandon Williams 2015');
end;

Procedure Start;
var r,score:integer;   hh:hangphrase; we:char; ne:char;
begin
qqq:=0;
z:=0;
clrscr;
textbackground(white); textcolor(red); gotoxy(57,25); write('¸ Brandon Williams 2015');
 window(1,1,80,1); textbackground(white); clrscr;
 window(1,2,80,24);textbackground(red); clrscr;
 window(1,25,80,25); textbackground(white); clrscr;
 window(1,1,80,25); textcolor(white); textbackground(red);
    gotoxy(18,10); write('Do you want to see the instructions?');
    gotoxy(28,12);writeln('Y     OR      N');
    we:=upcase(readkey);
    if we = 'Y' then
    repeat
    begin
    Clrscr;
    instructions;
    DELAY(32000);  DELAY(32000);  DELAY(32000);  DELAY(32000);
    DELAY(32000);  DELAY(32000);  DELAY(32000);  DELAY(32000);
    DELAY(32000);  DELAY(32000);  DELAY(32000);  DELAY(32000);
    gotoxy(10,14); writeln('PRESS S TO START');
    ne:=upcase(readkey);
    end;
   until ne='S';
   textbackground(white);
   repeat
    hh:=hp[random(lhp)+1];
    {Displayword(hh); }
    score:=Guessletters(hh);
   until locked_away;
  if locked_away then
   begin
    clrscr;
    window(1,1,80,1); textbackground(white); clrscr;
    window(1,2,80,24);textbackground(red); clrscr;
    window(1,25,80,25); textbackground(white); clrscr;
    window(1,1,80,25); textbackground(red);
    gotoxy(25,13); textcolor(white); writeln('G A M E   O V E R');
    gotoxy(25,18);                   writeln('YOUR SCORE WAS ', z);
   end;
   delay(32000);
   delay(32000);
   delay(32000);
   delay(32000);
   delay(32000);
   delay(32000);
end;


Procedure Topic;
begin
clrscr;
textcolor(red); gotoxy(57,25); write('¸ Brandon Williams 2015');

       window(1,1,80,1); textbackground(white); clrscr;
       window(1,2,80,24);textbackground(red); clrscr;
       window(1,25,80,25); textbackground(white); clrscr;
       window(1,1,80,25);
       gotoxy(20,1); writeln('Choose the topic you want to study');
       textbackground(red); textcolor(15); gotoxy(20,10); write('1. Beliefs in Society');
       textbackground(red); textcolor(15); gotoxy(20,12); write('2. Crime and Deviance');
       textbackground(red); textcolor(15); gotoxy(20,14); write('3. Families and Households');
       textbackground(red); textcolor(15); gotoxy(20,16); write('4. Education');
   textbackground(red); textcolor(15); gotoxy(20,18); write('5. All Topics');

  repeat
   i:=readkey;
  until i in ['1'..'5'];
  case i of
  '1':Beliefs;
  '2':Crime;
  '3':family;
  '4':Education;
  '5':data;
  end;
end;

Procedure Settings;
begin
repeat
clrscr;
 window(1,1,80,1); textbackground(white); clrscr;
 window(1,2,80,24);textbackground(red); clrscr;
 window(1,25,80,25); textbackground(white); clrscr;
 window(1,1,80,25);

  textcolor(RED); textbackground(15); gotoxy(30,1); Write('S E T T I N G S');
  textcolor(15); textbackground(red); gotoxy(20,10); write('5. Topic');
  textcolor(15); textbackground(red); gotoxy(20,14); write('6. Return to Menu');
  textbackground(white);
   textcolor(red); gotoxy(57,25); write('¸ Brandon Williams 2015');
    repeat
   t:=readkey;
    until t in ['5','6'];

 case t of
   '5':Topic;
   end;
until t='6';

end;

procedure Leaderboard;
var f:text;
na,hs:string; {name, high score}
high_score,err:integer;  {val}
yy:integer; {y coordinate}
begin
sort;
clrscr;
assign(f,'leader.txt');
 yy:=6;
 window(1,1,80,1); textbackground(white); clrscr;
 window(1,2,80,24);textbackground(red); clrscr;
 window(1,25,80,25); textbackground(white); clrscr;
 window(1,1,80,25);
  Gotoxy(35,1); Writeln('Leaderboard');
  reset(f);
  while not eof(f) do
   begin
   yy:=yy+1;
   readln(f,na);
   readln(f,hs);
   val(hs,high_score,err);
   gotoxy(33,yy); textbackground(red); textcolor(white); writeln(na,' - ',hs);
   end;
  close(f);
  textcolor(red); textbackground(white); gotoxy(57,25); write('¸ Brandon Williams 2015');
  Gotoxy(30,20); textbackground(red); textcolor(white); writeln('7. Return to Menu');
  t:=(readkey);
  repeat
  until t='7'
end;


begin
z:=0;
randomize;
topic;
clrscr;
  login;
repeat
      clrscr;
      skreenout;
      repeat
         p:=readkey;
      until p in ['1'..'4'];
        case p of
        '1':Start;
        '2':Settings;
        '3':Leaderboard;
        end;
until p='4';



end.