:- import(ic).

S = [S11, S12, S13, S14, S21, S22, S23, S24, S31, S32, S33, S34, S41, S42, S43, S44], 
S :: [1..16], 

% Add constraints for lines. 
S11 + S12 + S13 + S14 #= 34,
S21 + S22 + S23 + S24 #= 34, 
S31 + S32 + S33 + S34 #= 34, 
S41 + S42 + S43 + S44 #= 34,

% Add constraints for columns.  
S11 + S21 + S31 + S41 #= 34, 
S12 + S22 + S32 + S42 #= 34, 
S13 + S23 + S33 + S43 #= 34, 
S14 + S24 + S34 + S44 #= 34, 

% Add constraints for diagonals. 
S11 + S22 + S33 + S44 #= 34, 

% Add constraints for digits. 
alldifferent(S), 

% Solve the problem by assigning values to the variables. 
labeling(S). % Press ; to get more solutions. 