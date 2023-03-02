% Omer KURT Mar 2021
% https://en.wikipedia.org/wiki/Free-space_path_loss

clear;
close all;

% isik hizi
c = 299792458; % metre/saniye

% frekans
f = 920000000; % Hz

% mesafe
d = 15000; % metre

% FREE SPACE PATH LOSS
FSPL = 10 * log10(((4*pi*d*f)/c)^2); % dB
% FSPL = 107.2866 dB