[red,green,blue,image_test] = GetRAWDATAandIMAGE('Metal.dng');

%Region of interest is rectangle with opposite vertices
%(1377, 887) and (1439, 994)

ROI_red = red(890:930,1380:1432);
ROI_blue = blue(890:930,1380:1432);
ROI_green = green(890:930,1380:1432);
% imshow(image(890:930,1380:1432, :))
%figure;
%image(image_test)
%figure;
%image(image_test(890:930,1380:1432,:))

mean_red = mean(ROI_red, 'all');
mean_blue = mean(ROI_blue, 'all');
mean_green = mean(ROI_green, 'all');

ratio_BR = mean_blue/mean_red
ratio_GR = mean_green/mean_red
ratio_BG = mean_blue/mean_green

figure;
hold all

title('intensity ratios')
xlabel('temperature (K)')
ylabel('ratio of intensities')

for a = 1000:10:2000
hold all
[b_1, int_b] = I_Band(a, Tr_blue);
[r_1, int_r] = I_Band(a, Tr_red);
[g_1, int_g] = I_Band(a, Tr_green);

plot(a, int_b/int_r, 'bo-')
plot(a, int_g/int_r, 'go-')
plot(a, int_b/int_g, 'ro-')

end
hold all
plot(1000:10:2000, ratio_BR, 'b.-')
plot(1000:10:2000, ratio_GR, 'g.-')
plot(1000:10:2000, ratio_BG, 'r.-')
plot(1373, 0:0.01:1, 'k.-')
legend('expected b/r','expected g/r','expected b/g', 'metal b/r', 'metal g/r', 'metal b/g')

hold all

figure;
title('intensities as a function of wavelength and temperature')
xlabel('wavelength (m)')
ylabel('intensity')

for a = 1000:10:2000
hold all
[b_1, int_b] = I_Band(a, Tr_blue);
[r_1, int_r] = I_Band(a, Tr_red);
[g_1, int_g] = I_Band(a, Tr_green);

plot(Tr_blue(:,1), b_1, 'b.-')
plot(Tr_red(:,1), r_1, 'r.-')
plot(Tr_green(:,1), g_1, 'g.-')

%Plot just transmission values
%plot(Tr_blue(:,1), Tr_blue(:,2), 'b.-')
%plot(Tr_red(:,1), Tr_red(:,2), 'r.-')
%plot(Tr_green(:,1), Tr_green(:,2), 'g.-')

end

