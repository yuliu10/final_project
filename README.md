# final_project

Regarding the java stuff, you want to make sure that your installed java is the same bit version as R. Basically if R is x64 make sure java is too. You can check for R with sessionInfo(). Then in the line of code in the middle of my library codes, just make sure it has the path to wherever java is installed on your computer. Then everything should work fine.

Describing Data

Each question results in a final output of 6 dataframes: cleaned.edu.table, cleaned.age.table, cleaned.gender.table, cleaned.income.table,  cleaned.race.table, and cleaned.region.table. These correspond to the 6 demographic categories. Each of these has a suffix which describes the question it's from. For example, the first question is "How closely are you following the news about coronavirus?", so the age table corresponding to that question is cleaned.age.table1. All the other output variables are just from intermediate steps, so don't worry about them.
