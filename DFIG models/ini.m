
close all
clear all
clc

%% DFIG parameters --> Rotor parameters referred to the stator side

f = 50;
Ps = 2e6;
n = 1500;
Vs = 690;
Is = 1760;
Tem = 12732;

p = 2;
u = 1/3;
Vr = 2070;
smax = 1/3;
Vr_stator = (Vr*smax)*u;
Rs = 2.6e-3;
Lsi = 0.087e-3;
Lm = 2.5e-3;
Rr = 2.9e-3;
Ls = Lm + Lsi;
Lr = Lm + Lsi;
Vbus = Vr_stator*sqrt(2);
sigma = 1- Lm^2/(Ls*Lr);
Fs = Vs*sqrt(2/3)/(2*pi*f);

J = 127;
D = 1e-3;

fsw = 4e3;
Ts = 1/fsw/50;

% PI regulators

tau_i = (sigma*Lr)/Rr;
tau_n = 0.05;
wni = 100*(1/tau_i);
wnn = 1/tau_n;

kp_id = (2*wni*sigma*Lr)-Rr;
kp_iq = kp_id;
ki_id = (wni^2)*Lr*sigma;
ki_iq = ki_id;
kp_n = (2*wnn*J)/p;
ki_n = ((wnn^2)*J)/p;






