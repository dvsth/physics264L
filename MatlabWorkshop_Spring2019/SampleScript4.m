%% Section I: Logic - 'if'
clc
%If statements: Conditionals for what code is executed or skipped over
%  if logical
%     what will happen if logical is true
%  else
%     what happens instead (if logical is false)
%  end

%  if logical_A
%     what will happen if logical_A is true
%  elseif logical_B
%     what could happen instead if logical_A is false but logical_B is true
%  elseif logical_C
%     yet another possibility if logical_A,B false but logical_C true
%  else
%     if all else fails....
%  end

%Use && for AND logical statements; use || for OR logical statements
if 2==3 || 1==1
    'we win anyways'
end

%% Section II: Loops - 'for' (and 'while', which we will not use today)
clc
% For loop: iterates each loop with the loop index increasing according to
% the input steps; once loop index has reached final index value, the code
% is executed one more time and the loop exited.
%
%   for counter = 1:10 
%       Do this thing   <------|    Go back to beginning of loop, but with
%       Do that thing          |    counter = counter + 1, UNLESS counter is
%       Lastly, do this! ------|    10, then exit loop.
%   end  
%

beginofrange = 1;
endofrange = 100000;

x=0;
for index = beginofrange:endofrange % By default, using First:Last increments by 1.
    index;
    x=x+index;
end
x %We have computed natural sum of x from 1 to 100000 directly

natural_sum = endofrange*(endofrange+1)/2 

if x==natural_sum
    'Math worked'
end

%Note: Index doesn't have to be an integer and doesn't have to increment by
%1. In general: index=[Begin:increment:end].

%% Section III: Write your own function!
clc

f=1000; %Hz
v=2*10^8; %m/s; + if emitter is receding from receiver

fr = Sample_Doppler(f,v) %Hz

% Determine if input value is even or odd:

for list = 1:4
    Sample_iseven(list)
end
