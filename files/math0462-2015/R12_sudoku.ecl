:- import(ic).

% Define 16 variables in S, one for each case. 
S = [S11, S12, S13, S14, S21, S22, S23, S24, S31, S32, S33, S34, S41, S42, S43, S44], 

% Their domain is the interval from 1 to 4. 
S :: [1..4], 

% Impose the existing digits. (It is allowed to impose no digits: the solver will find a feasible solution.)
S11 = 4, 
% S12 = 4, % With this: no solution! Cannot have twice the same digit in the same line (and square too). 

% Add constraints for unicity in lines. 
alldifferent([S11, S12, S13, S14]), % Defined in http://sofdem.github.io/gccat/gccat/Calldifferent.html.
% ...

% Add constraints for unicity in columns. 
% ...

% Add constraints for unicity in squares. 
% ...

% Solve the problem by assigning values to the variables. 
labeling(S). % Press ; to get more solutions. 



% Once you're done with the basic Sudoku: how about imposing that numbers are all different on the diagonal? 