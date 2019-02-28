%% Section I: Functions
clc
% Mathematical functions (exp, sin, cos, log,...) apply entry by entry:
x = [0 ; pi/4 ; pi/2 ; 3*pi/4 ; pi ; 5*pi/4 ; 3*pi/2 ; 7*pi/4 ; 2*pi];
y = sin(x)
z = exp(x)

% Some functions are designed to operate on entire arrays (or rows/columns
% of arrays)
x = random('norm',0,1,[100,1]); %pull 100 values from Normal (mean=0, std=1)
mean_x = mean(x)
std_x = std(x)
sum_x = sum(x)
size_x = size(x) %row, column size
stderr_x = std(x)/sqrt(size_x(1))

%Note: If you name a variable after a predefined function, you overwrite
%that function! Avoid this! And consider that this may be a problem when
%troubleshooting code!

%% Section II: Figures
figure; %Produces an empty figure. Functions like plot, errorbar, histogram,
         %imshow,.... will fill this empty figure 
hold on;  %This allows you to place multiple plots on the same figure

%% Section III: Help with functions
% For any function that you want more information on, you should do one or 
% more of the following:

%1) 'help function_name'
help sum %Now read the Command Window

%2) 'help function_name' and then click "Reference page for function_name"
%3) Search through documentation on https://www.mathworks.com/help/matlab/
