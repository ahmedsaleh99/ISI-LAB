% Initialization for RRC_filters_dec_2018.slx scheme

clear all;
clc

L = 1000; %the data vector length (= the number of transmitted bits);

T = 1e-3; % the symbol interval (in seconds);
vs = 1/T; %the signalling speed (in Bauds);

G = 4; %the RRC filter group delay (in no. of symbols);

R = 0.6; %the roll-off factor (alfa = the bandwidth excess factor for Raised-Cosine filters)

N = 20; %up-sampling factor;


%---- the channel model; a low pass filter with additive white Gaussian
%noise (AWGN); 

f1 = 0.7 * vs; %the LP filter transition band is between f1 and f2;
f2 = 1.1 * f1;

SNRdB = 10; %Signal to Noise Ratio (in decibells);

% sim('RRC_filters.mdl') %the simulation of the transmission channel with ISI and noise;
