p=[1 1/81];
q=[0 1];
sys=tf(p,q)
t=feedback(sys,1)
step(t);