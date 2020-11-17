clear all
clc
clf

dt = pi/3;
T = 8000*pi;
O=[0 0];
%kich thuoc
d0=12; d1=12; d2=17;
%khoang cach
r0=0; r1=149.5; r2=108.2 
%van toc goc
a1=2*pi/365.25; a2=2*pi/224.7; 
n=48;clc

axis equal;
axis ([-300 300 -300 300]);

for t=0:dt:T
    hold on
    %Earth
    O=O;
    for i=1:n
        O1(i,:)=[O(1) O(2)] + d0*[cos((i-1)*2*pi/n),sin((i-1)*2*pi/n)];
    end
     o1 = fill(O1([1:end 1],1),O1([1:end 1],2), [1]);
     %Sun
    H0=[O(1) O(2)] +r1*[cos((i-1)*2*pi/n + a1*t),sin((i-1)*2*pi/n + a1*t)];
    for i=1:n
        H(i,:)=[O(1) O(2)] + r1*[cos((i-1)*2*pi/n + a1*t),sin((i-1)*2*pi/n + a1*t)];
        H1(i,:)=[H0(1) H0(2)] + d2*[cos((i-1)*2*pi/n + a1*t),sin((i-1)*2*pi/n + a1*t)];
    end
        H0=[O(1) O(2)] +r1*[cos((i-1)*2*pi/n + a1*t),sin((i-1)*2*pi/n + a1*t)];
      h= line(H([1:end 1],1),H([1:end 1],2),'LineWidth',1);
     h1 = fill(H1([1:end 1],1),H1([1:end 1],2), [0 1 1]);
     h0=text(H0(1)-15,H0(2)-15,'Sun');
    % Mercury
    G0=[O(1) O(2)] +r1*[cos((i-1)*2*pi/n + a1*t),sin((i-1)*2*pi/n + a1*t)] + r2*[cos((i-1)*2*pi/n + a2*t),sin((i-1)*2*pi/n + a2*t)];
    for i=1:n
        G(i,:)=[O(1) O(2)] + r1*[cos((i-1)*2*pi/n + a1*t),sin((i-1)*2*pi/n + a1*t)] + r2*[cos((i-1)*2*pi/n + a2*t),sin((i-1)*2*pi/n + a2*t)];
        G1(i,:)=[G0(1) G0(2)] + d1*[cos((i-1)*2*pi/n + a1*t),sin((i-1)*2*pi/n + a1*t)];
    end
    K0=[O(1) O(2)] +r1*[cos((i-1)*2*pi/n + a1*t),sin((i-1)*2*pi/n + a1*t)] + r2*[cos((i-1)*2*pi/n + a2*t),sin((i-1)*2*pi/n + a2*t)];
    for i=1:n
        K(i,:)=[O(1) O(2)] + r1*[cos((i-1)*2*pi/n + a1*t),sin((i-1)*2*pi/n + a1*t)] + r2*[cos((i-1)*2*pi/n + a2*t),sin((i-1)*2*pi/n + a2*t)];
        K1(i,:)=[K0(1) K0(2)] + 0.5*[cos((i-1)*2*pi/n + a1*t),sin((i-1)*2*pi/n + a1*t)];
     end
%      g = line(G([1:end 1],1),G([1:end 1],2),'LineWidth',1);
     g1 = fill(G1([1:end 1],1),G1([1:end 1],2), [2]);
      k1 = fill(K1([1:end 1],1),K1([1:end 1],2), [2]);
     g0=text(G0(1)-15,G0(2)-15,'Mercury'); 
     
         pause(0.01)
delete(o1);
% delete(g);
delete(g1);
delete(g0);
delete(h);
delete(h1);
delete(h0);
% delete(mt);
end
