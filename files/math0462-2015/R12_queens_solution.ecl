:- import(ic).

% Rows are variable values. Columns are implicit, as the index in this array.
Queens = [Queen1, Queen2, Queen3, Queen4],
Queens :: [1..4], 

alldifferent(Queens), 

% With only alldifferent: 
% alldifferent([Queen1 - 1, Queen2 - 2, Queen3 - 3, Queen4 - 4]), 
% alldifferent([Queen1 + 1, Queen2 + 2, Queen3 + 3, Queen4 + 4]), 
% Meaning: unroll diagonals by shifting each row, so that the original diagonals become straight lines. 
% ***#          ***#
% **#*    =>     **#*
% *#**    =>      *#**
% #***             #***

% However, this is not accepted by ECLiPSe. Hence disequalities: 
Queen1 - Queen2 #\= 1 - 2, 
Queen1 - Queen3 #\= 1 - 3, 
Queen1 - Queen4 #\= 1 - 4, 
Queen2 - Queen1 #\= 2 - 1, 
Queen2 - Queen3 #\= 2 - 3, 
Queen2 - Queen4 #\= 2 - 4, 
Queen3 - Queen1 #\= 3 - 1, 
Queen3 - Queen2 #\= 3 - 2, 
Queen3 - Queen4 #\= 3 - 4, 
Queen4 - Queen1 #\= 4 - 1, 
Queen4 - Queen2 #\= 4 - 2, 
Queen4 - Queen3 #\= 4 - 3, 

% Solve the problem by assigning values to the variables. 
labeling([Queen1, Queen2, Queen3, Queen4]). % Press ; to get more solutions. 