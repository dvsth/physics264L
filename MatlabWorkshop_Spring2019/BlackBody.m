fplot(@(x) intensity(x,10000), [100e-9 100e-8])
hold on
fplot(@(x) intensity(x,9000), [100e-9 100e-8])
hold on
fplot(@(x) intensity(x,8000), [100e-9 100e-8])
hold on
fplot(@(x) intensity(x,7000), [100e-9 100e-8])
hold on
fplot(@(x) intensity(x,6000), [100e-9 100e-8])
hold on
fplot(@(x) intensity(x,5000), [100e-9 100e-8])
hold on
fplot(@(x) intensity(x,1000), [100e-9 100e-8])
hold on
fplot(@(x) intensity(x,100), [100e-9 100e-8])

hold off

legend('10000K', '9000K', '8000K','7000K','6000K','5000K','1000K', '100K')

title('Intensity of spectrum (from 100nm to 1000nm)')
xlabel('wavelength in m')
ylabel('intensity in W/m^2')


function b = intensity(L, T)
    h = 6.63e-34;
    c = 2.99e8;
    kb = 1.38e-23;
    b = 1/(L^5)*1/((exp(h*c/(L*kb*T)))-1);
end






