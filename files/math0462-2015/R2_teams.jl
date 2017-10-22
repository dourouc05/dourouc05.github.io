players = 24;
players_per_team = 6;
teams = int(players / players_per_team);
levels = 4;

gender_is_male = [true, false, true, false, true, true, false, false, true, false, false, true, true, false, true, false, true, false, false, true, true, false, false, false];
gender_is_female = bool(1 - gender_is_male);
level = [3, 1, 4, 4, 3, 4, 2, 4, 1, 1, 3, 2, 3, 3, 1, 2, 1, 3, 2, 2, 4, 2, 1, 4];

level_matrix = zeros(Int16, players, levels);
for p = 1:players
    level_matrix[p, level[p]] = 1.
end
;