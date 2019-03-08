%temperature range for objects
sun = 4000:20:7000;
metal = 1000:10:2000;

%convenience is a h*** of a d***
current_object = sun;

%Calibration ratios
R_calibration = 1;
G_calibration = 1;
B_calibration = 1;

%% Section 1: Extract region of interest from picture 
%----------------------%
%For Metal:
%[red,green,blue,image_test] = GetRAWDATAandIMAGE('Metal.dng');

%Region of interest for metal
%ROI_red = red(890:930,1380:1432);
%ROI_blue = blue(890:930,1380:1432);
%ROI_green = green(890:930,1380:1432);
%---------------------%
%For Sun:
[red,green,blue,image] = GetRAWDATAandIMAGE('Sun.dng');

%Region of interest for sun 
ROI_red = red(1005:1181,1136:1350);
ROI_blue = blue(1005:1181,1136:1350);
ROI_green = green(1005:1181,1136:1350);

%% Section 2: Calculate RGB channel intensity ratios

%Average over each color-channel extracted from image
mean_red = mean(ROI_red, 'all');
mean_blue = mean(ROI_blue, 'all');
mean_green = mean(ROI_green, 'all');

%Calculate ratios, as promised
ratio_BR = mean_blue/mean_red;
ratio_GR = mean_green/mean_red;
ratio_BG = mean_blue/mean_green;

figure;
hold all

title('intensity ratios')
xlabel('temperature (K)')
ylabel('ratio of intensities')

%% Section 3: Calculate and plot theoretical intensity ratios
for a = current_object
hold all
[b_1, int_b] = I_Band(a, Tr_blue);
[r_1, int_r] = I_Band(a, Tr_red);
[g_1, int_g] = I_Band(a, Tr_green);

plot(a, B_calibration*(int_b/int_r), 'b.-')
plot(a, G_calibration*(int_g/int_r), 'g.-')
plot(a, (B_calibration/G_calibration)*(int_b/int_g), 'r.-')

end
hold all

%% Section 4: Overlay theoretical plot with experimental data
plot(current_object, ratio_BR, 'bx')
plot(current_object, ratio_GR, 'gx')
plot(current_object, ratio_BG, 'rx')

%Sun
plot(5778, 0:0.01:3, 'k.-')

%Metal
%plot(1373, 0:0.01:1, 'k.-')

legend('expected b/r','expected g/r','expected b/g')

hold all

figure;
title('intensities as a function of wavelength and temperature')
xlabel('wavelength (m)')
ylabel('intensity')

%% Section 5: Plot theoretical blackbody spectra for given temperature ranges
for a = current_object
hold all
[b_1, int_b] = I_Band(a, Tr_blue);
[r_1, int_r] = I_Band(a, Tr_red);
[g_1, int_g] = I_Band(a, Tr_green);

plot(Tr_blue(:,1), b_1, 'b')
plot(Tr_red(:,1), r_1, 'r') 
plot(Tr_green(:,1), g_1, 'g')

%%Plot just transmission values
%plot(Tr_blue(:,1), Tr_blue(:,2), 'b.-')
%plot(Tr_red(:,1), Tr_red(:,2), 'r.-')
%plot(Tr_green(:,1), Tr_green(:,2), 'g.-')

end

