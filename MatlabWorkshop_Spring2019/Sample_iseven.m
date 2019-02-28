function [even] = Sample_iseven(x)
% x = integer
%
% logical: true if x is even; false if x is odd (or not an integer)

remainder = rem(x,2); %check that remainder of x/2 is 0 to be even

if remainder==0
    even=true;
else
    even=false;
end

end