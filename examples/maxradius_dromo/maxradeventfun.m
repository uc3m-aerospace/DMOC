function events = maxradeventfun(solevents)

iphase = solevents.phase;
t0 = solevents.initial.time;
x0 = solevents.initial.state;
sigmaf = solevents.terminal.time;
xf = solevents.terminal.state;
p= solevents.parameter;


C1f  =xf(1);
C2f  =xf(2);
C3f  =xf(3);
tauf = xf(4);
sigmaf=sigmaf*(p);

sf=1+C1f*cos(sigmaf)+C2f*sin(sigmaf);
rf = 1/(C3f^2*sf);

ef1 = C3f - sqrt(1/rf);
ef2 = tauf - 3.32 ; 
events=[ ef1 ; ef2 ];


