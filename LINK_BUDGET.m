% Omer KURT Mar 2021
% https://en.wikipedia.org/wiki/Link_budget

clear;

% defines
Prx_exist = -121; % dBm
SMA_CONNECTOR_LOSS = 1; % dB
RG58_CABLE_LOSS = 1; % 1dB per meter
CABLE_LENGTH = 0.0; % meter

% transmitter output power (dBm)
Ptx = 30;

% transmitter antenna gain (dBi)
Gtx = 3;

% transmitter losses (coax, connectors...) (dB)
Ltx = SMA_CONNECTOR_LOSS; 

% path loss, usually free space loss (dB)
Lfs = 115.2454; % FSPL_CALC.m 920MHz 15000meter

% miscellaneous losses (fading margin, body loss, polarization mismatch, other losses...) (dB)
Lm = 5; % Polarisation errors

% receiver antenna gain (dBi)
Grx = 3;

% receiver losses (coax, connectors...) (dB)
Lrx = SMA_CONNECTOR_LOSS + (RG58_CABLE_LOSS * CABLE_LENGTH);

% received power (dBm)
Prx = Ptx + Gtx - Ltx - Lfs - Lm + Grx - Lrx;

fprintf('Prx: %.4f\tPrx_exist: %.4f\n', Prx, Prx_exist);
fprintf('Prx marj: %.4f\n', Prx - Prx_exist);