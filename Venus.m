
clear all
clc
clf

dt = pi/30;
T = 800*pi;
O=[0 0];
%kich thuoc
d0=20; d1=4.9; d2=12; d3=12.8; d4=6.8;
%khoang cach
r0=0; r1=57; r2=108 ;r3=149 ; r4=227 ;
%van toc goc
a1=2*pi/88; a2=2*pi/227; a3=2*pi/365; a4=2*pi/678;
n=48;clc

axis equal;
axis ([-250 250 -250 250]);

for t=0:dt:T
    hold on
    %Sun
    O=O;
    for i=1:n
        O1(i,:)=[O(1) O(2)] + d0*[cos((i-1)*2*pi/n),sin((i-1)*2*pi/n)];
    end
     o1 = fill(O1([1:end 1],1),O1([1:end 1],2), [1]);
     
    % Mercury
    G0=[O(1) O(2)] +r1*[cos(a1*t),sin(a1*t)];
    for i=1:n
        G(i,:)=[O(1) O(2)] + r1*[cos((i-1)*2*pi/n + a1*t),sin((i-1)*2*pi/n + a1*t)];
        G1(i,:)=[G0(1) G0(2)] + d1*[cos((i-1)*2*pi/n + a1*t),sin((i-1)*2*pi/n + a1*t)];
    end
     g = line(G([1:end 1],1),G([1:end 1],2),'LineWidth',1);
     g1 = fill(G1([1:end 1],1),G1([1:end 1],2), [2]);
     g0=text(G0(1)-15,G0(2)-15,'Mercury'); 
     
            % Venus
    H0=[O(1) O(2)] +r2*[cos(a2*t),sin(a2*t)];
    for i=1:n
        H(i,:)=[O(1) O(2)] + r2*[cos((i-1)*2*pi/n + a2*t),sin((i-1)*2*pi/n + a2*t)];
        H1(i,:)=[H0(1) H0(2)] + d2*[cos((i-1)*2*pi/n + a2*t),sin((i-1)*2*pi/n + a2*t)];
 
    end
     h = line(H([1:end 1],1),H([1:end 1],2),'LineWidth',1);
     h1 = fill(H1([1:end 1],1),H1([1:end 1],2), [3]);
     h0=text(H0(1)-18,H0(2)-20,'Venus'); 
     
         % Earth
    K0=[O(1) O(2)] +r3*[cos(a3*t),sin(a3*t)];
    for i=1:n
        K(i,:)=[O(1) O(2)] + r3*[cos((i-1)*2*pi/n + a3*t),sin((i-1)*2*pi/n + a3*t)];
        K1(i,:)=[K0(1) K0(2)] + d3*[cos((i-1)*2*pi/n + a3*t),sin((i-1)*2*pi/n + a3*t)];
 
    end
     k = line(K([1:end 1],1),K([1:end 1],2),'LineWidth',1);
     k1 = fill(K1([1:end 1],1),K1([1:end 1],2), [4]);
     k0=text(K0(1)-17,K0(2)-20,'Earth');   
     
        % Mars
    L0=[O(1) O(2)] +r4*[cos(a4*t),sin(a4*t)];
    for i=1:n
        L(i,:)=[O(1) O(2)] + r4*[cos((i-1)*2*pi/n + a4*t),sin((i-1)*2*pi/n + a4*t)];
        L1(i,:)=[L0(1) L0(2)] + d4*[cos((i-1)*2*pi/n + a4*t),sin((i-1)*2*pi/n + a4*t)];
 
    end
     l = line(L([1:end 1],1),L([1:end 1],2),'LineWidth',1);
     l1 = fill(L1([1:end 1],1),L1([1:end 1],2), [5]);
     l0=text(L0(1)-15,L0(2)-15,'Mars');
     
      %Meteors
    
    pause(0.01)
delete(o1);
delete(g); delete(g1); delete(g0);
delete(h); delete(h1); delete(h0);
delete(k); delete(k1); delete(k0);
delete(l); delete(l1); delete(l0);
end
