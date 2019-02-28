[red,green,blue,image] = GetRAWDATAandIMAGE('Metal.dng');

%Region of interest is rectangle with opposite vertices
%(1377, 887) and (1439, 994)

ROI_red = red(1377:1439, 887:994);
ROI_blue = blue(1377:1439, 887:994);
ROI_green = green(1377:1439, 887:994);

%figure;
%imshow(image)

mean_red = mean(ROI_red, 'all');
mean_blue = mean(ROI_blue, 'all');
mean_green = mean(ROI_green, 'all');

ratio_BR = mean_blue/mean_red;
ratio_GR = mean_green/mean_red;
ratio_BG = mean_blue/mean_green;

figure;
for a = 2000:100:5000
I_Band(a, Tr_blue, 'b.-');
I_Band(a, Tr_red, 'r.-');
I_Band(a, Tr_green, 'g.-');
end

xlabel('wavelength')
ylabel('intensity')
