:- import(ic).

% Define 16 variables in S, one for each case. 
% Their domain is the interval from 1 to 4. 
S = [S11, S12, S13, S14, S21, S22, S23, S24, S31, S32, S33, S34, S41, S42, S43, S44], 
S :: [1..4], 

% Impose the existing digits. (It is allowed to impose no digits: the solver will find a feasible solution.)
% S11 = 4, 
% S12 = 4, % With this: no solution! Cannot have twice the same digit in the same line (and square too). -

% Add constraints for unicity in lines. 
alldifferent([S11, S12, S13, S14]), % Defined in http://sofdem.github.io/gccat/gccat/Calldifferent.html.
alldifferent([S21, S22, S23, S24]), 
alldifferent([S31, S32, S33, S34]), 
alldifferent([S41, S42, S43, S44]), 

% Add constraints for unicity in columns. 
alldifferent([S11, S21, S31, S41]), 
alldifferent([S12, S22, S32, S42]), 
alldifferent([S13, S23, S33, S43]), 
alldifferent([S14, S24, S34, S44]), 

% Add constraints for unicity in squares. 
alldifferent([S11, S12, S21, S22]), 
alldifferent([S13, S14, S23, S24]), 
alldifferent([S31, S32, S41, S42]), 
alldifferent([S33, S34, S43, S44]), 

% Once you're done with the basic Sudoku: how about imposing that numbers are all different on the diagonal? 
% alldifferent([S11, S22, S33, S44]), 

% Solve the problem by assigning values to the variables. 
labeling(S). % Press ; to get more solutions. 