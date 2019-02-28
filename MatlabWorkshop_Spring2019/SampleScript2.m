%% Section I: Arrays
clc
% We use '[]' to enclose array

a1 = [0] %this will just be a scalar

a2 = [0 1 2 3]; %1 x 4 vector
a3 = [0,1,2,3] %'spacebar' or ',' separation do same thing

a4 = [0
    1
    2
    3];             %4 x 1 vector
a5 = [0;1;2;3] %'Enter' or ';' separation do same thing

%% Section II: Operations with arrays
clc
a2*a4 % (1 x 4)*(4 x 1) = scalar
a4*a2 % (4 x 1)*(1 x 4) = (4 x 4) matrix
a4.*a5 % Apply * operation entry by entry
a4./a5 % Apply / operation entry by entry

%Multiplication or division by a scalar is always done for each array entry
a2/12
a5*99 %(There is no need to use '.*' in cases with scalars. But you can!)

%Addition/subtraction of an array with a scalar is done for each array
%entry as well
a4+10

%For any non-vector arrays, addition/subtraction occur entry by entry. But
%the sizes must agree or else an error will occur
[10,25;30,45] + [7,9;11,12]
[10,25;30,45] + a5

%For vector arrays, add/sub only works entry by entry if they agree in
%dimensions (1 row, X columns OR X rows, 1 column)
a4+a5

%If one vector is (1 row, X columns) and the other is (Y rows, 1 column),
%then addition/subtraction works as follows
[1,2] + [3;4]
%  [1,2]+[3   =  [1,2   +   [3,3   =   [4,5
%         4]      1,2]       4,4]       5,6]

%% Section III: Finding specific entries of arrays
%Specify by A(row,column), where row/column can be a list of values
%enclosed by [] (i.e., vectors)
clc

Identity=eye(10); %10x10 identity matrix
Identity(1,1)
Identity(1,2)
secondcolumn = Identity(:,2) % ':' indicates ALL entries along that dimension
thirdrow = Identity(3,:) 
submatrix_identity = Identity([3,4],[3,4])
submatrix_zero = Identity([1,2,3,4,5],[6,7,8,9,10])
submatrix_zero_same = Identity([1:5],[6:10]) %1:5 = 1,2,3,4,5

magicmatrix = magic(3)
thirdrow_firstcolumn = magicmatrix(3,1)
firstrow_thirdcolumn = magicmatrix(1,3)