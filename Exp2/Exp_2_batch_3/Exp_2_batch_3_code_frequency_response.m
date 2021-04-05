%frequency response for 2nd order system
%example 1 for second order
%e=0.5 ,w=11
%tf=121/(s*s+11*s+121)
w=input('enter the natural frequency');
e=input('enter the damping ratio');
  num=[w*w];
  den=[1 2*w*e w*w];
  g=tf(num,den)
  [mr,wr]=getPeakGain(g)
  wb=bandwidth(g)
  figure(1) 
  bode(g);
  margin(g);
%Example 2 for a second order
%tf=15/(s+3)(s+5)
  num=[15]; 
  den=[1  8 15]; 
   g=tf(num,den)
   [mr,wr]=getPeakGain(g)
  wb=bandwidth(g)
   figure(2) 
   bode(g);
   margin(g);
