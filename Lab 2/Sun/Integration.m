
function intensity = Integration(temp, Tr, color)
%I_BAND calculate total intensity of a band
%   Performs numerical integration over a continuous range 
%   of wavelengths at a specific temperature.

intensity = 0;

ret = zeros(33);

hold all
for counter = 1:1:33
  
  ret(counter) = Tr(counter,2) * 1e-8 / (Tr(counter,1)^5 * (exp(h*c/(Tr(counter,1)*k_B*temp)) -1 ));
  
  intensity = intensity + ret;

end

plot(Tr(:,1),ret, color)

hold on
%legend(string(temp))
hold on

end


