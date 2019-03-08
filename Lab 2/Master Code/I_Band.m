
function [ret, integral] = I_Band(temp, Tr)
%I_BAND calculate total intensity of a band
%   Performs numerical integration over a continuous range 
%   of wavelengths at a specific temperature.

h = 6.63e-34;
c = 2.99e8;
k_B = 1.38e-23;

integral = 0;

ret = zeros(33);

for counter = 1:1:33
  
  ret(counter) = Tr(counter,2) / (Tr(counter,1)^5 * (exp(h*c/(Tr(counter,1)*k_B*temp)) -1 ));
  
  integral = integral + 1e-8 * ret(counter);
  
end

end


