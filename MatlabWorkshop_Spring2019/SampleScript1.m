%% Double '%%' start a new section. The ACTIVE SECTION (where your cursor 
%    resides) is given a yellow background rather than white. Single '%' 
%    comments all text after it on the the same line. All commented 
%    text/section titles are green. Active code is black. Red squiggles 
%    indicate what Matlab discerns to be a problem in the code.

clear %'clear' empties the workspace

%% Section I
clc %'clc' clears the command window view, but doesn't erase history
x = pi
y = 9%3
z = (x+y)/x^2 - (99+2*x)/(y-18)

%% Section II
clc
x = pi;
y = 9;
z = (x+y)/x^2 - (99+2*x)/(y-18); % Notice that ';' at end of line suppresses
                                   % output from Command Window

%% Section III: Data classes
clc
%Numerical:
double_var1 = 3;
double_var2 = 3.776;
uint8_var = uint8(3); %Color images (jpg, bmp, png) have three uint8 channels (RGB)
                      % 
uint16_var = uint16(2^16-1); %Some detectors (e.g., x-ray) output in 16-bit

%Logical: 1=true and 0=false
logical_var1 = (3==2)
logical_var2 = (3>2)
logical_var3 = (3==3)
logical_var4 = true
logical_var5 = false

%Strings:
string_var1 = '4 8 15 16 23 42 EXECUTE'
%can use these for labeling plot axes, titles, legend; for labeling
%different data sets; etc.

%NaN (Not-a-number):
mynan1 = 0/0;
mynan2 = NaN;

%Note: We can always define a variable to be whatever class we want. So:
mydouble_var1 = double(3==2); %converts 0/false to number 0.
