close all; clc;
Ha = [-0.3327 0.8069 -0.4599 -0.1350 0.0854 0.0352];
Hb = [0.0352 -0.0854 -0.1350 0.4599 0.8069 0.3327];
Ga = [0.3327 0.8069 0.4599 -0.1350 -0.0854 0.0352];
Gb = [0.0352 0.0854 -0.1350 -0.4599 0.8069 -0.3327];

z_Ha = roots(Ha);
z_Hb = roots(Hb);
z_Ga = roots(Ga);
z_Gb = roots(Gb);

% figure;
% subplot(221);zplane(z_Ha);
% title('Ha'); 
% subplot(222);zplane(z_Hb);
% title('Hb'); 
% subplot(223);zplane(z_Ga);
% title('Ga'); 
% subplot(224);zplane(z_Gb);
% title('Gb'); 
% aux = 1;
% for n = 0:pi/4:pi
%    ek(aux) = exp(1i*n);aux = aux+1;
% end

[perfect_reconstruction1,A1,d1] = evaluate_decomposition_synthesis_filters...
    (Hb, Ha, Ga, Gb);
[perfect_reconstruction2,A2,d2] = evaluate_decomposition_synthesis_filters...
    (Hb, Ha, Gb, Ga);
[perfect_reconstruction3,A3,d3] = evaluate_decomposition_synthesis_filters...
    (Ha, Hb , Gb, Ga);
[perfect_reconstruction4,A4,d4] = evaluate_decomposition_synthesis_filters...
    (Ha, Hb , Ga, Gb);
% h_3 = filter_iterator(Hb, Ha, 3);
% h_4 = filter_iterator(Hb, Ha, 4);
% figure;
% plot_frequency_responses_iterated_filters(h_3);
% figure;
% plot_frequency_responses_iterated_filters(h_4);

