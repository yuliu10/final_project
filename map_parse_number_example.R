#cleaned.age.table1.1 refers to first question of the first week


cleaned.age.table1.1[1:nrow(cleaned.age.table1.1) - 1, 2:nrow(cleaned.age.table1.1)] = 
  map_dfc(cleaned.age.table1.1[1:nrow(cleaned.age.table1.1) - 1, 2:nrow(cleaned.age.table1.1)], parse_number) / 100 