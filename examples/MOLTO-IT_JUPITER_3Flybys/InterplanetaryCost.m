     function [Mayer,Lagrange]=InterplanetaryCost(sol,setup)

t0 = sol.initial.time;
x0 = sol.initial.state;
tf = sol.terminal.time;
xf = sol.terminal.state;
t  = sol.time;
x  = sol.state;
u  = sol.control;
p  = sol.parameter;

mf   = xf(7);

if sol.phase==4,
    
    Mayer    = -mf/100 ; % 
    %Mayer    = tf*.01 ; % 
    %Lagrange = T.*Tmax./m;
    Lagrange = zeros(size(t));
    
else
    
    Mayer    = 0; % 
    %Lagrange = T.*Tmax./m;
    Lagrange = zeros(size(t));
    
end;    