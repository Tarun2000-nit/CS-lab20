ng1 = [1]; dg1 = [1 0]; 
sysg1 = tf(ng1, dg1)

ng2 = [1]; dg2 = [1 0]; 
sysg2 = tf(ng2, dg2)

ng3 = [1]; dg3 = [1 0]; 
sysg3 = tf(ng3, dg3)

ng4 = [1]; dg4 = [1 0]; 
sysg4 = tf(ng4, dg4)

nh1 = [1]; dh1 = [1]; 
sysh1 = tf(nh1, dh1)

nh2 = [1]; dh2 = [1]; 
sysh2 = tf(nh2, dh2)

nh3 = [1]; dh3 = [1]; 
sysh3 = tf(nh3, dh3)

sys1 = series(sysg3,sysg4);
sys2 = feedback(sys1,sysh1,+1);
sys3 = series(sysg2,sys2);
sys4 = feedback(sys3,sysh2,-1);
sys5 = series(sysg1,sys4);
sys = feedback(sys5,[1])