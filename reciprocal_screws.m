%%
% Define symbolic variables for u and r
syms u1x u1y u1z r1x r1y r1z
syms u2x u2y u2z r2z

% Define screws
%S1 = [u1x; u1y; u1z; -r1z*u1y; r1z*u1x; r1x*u1y - r1y*u1x];
%S2 = [u2x; u2y; u2z; r2z*u2y; 0; 0];
S1 = [u1x; u1y; u1z; -r1z*u1y; r1z*u1x; r1x*u1y - r1y*u1x];
S2 = [u1x; u1y; u1z; r2z*u1y; 0; 0];
S3 = [0; 0; 1; 0; 0; 0];
S4 = [0; 1; 0; 0; 0; 0];

% Construct matrix A with the transpose of the screws
A = [S1.'; S2.'; S3.'; S4.'];

% Find the null space of A (reciprocal screws)
null_space = null(A);

disp('The reciprocal screws are:');
disp(null_space);
%%
null_2=null(null_space')'