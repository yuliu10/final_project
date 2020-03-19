# final_project

https://cimentadaj.github.io/blog/2018-05-25-installing-rjava-on-windows-10/installing-rjava-on-windows-10/

Regarding the java stuff, you want to make sure that your installed java is the same bit version as R. Basically if R is x64 make sure java is too. You can check for R with sessionInfo(). Then in the line of code in the middle of my library codes, just make sure it has the path to wherever java is installed on your computer. Then everything should work fine.

Describing Data

Each question results in a final output of 6 dataframes: cleaned.edu.table, cleaned.age.table, cleaned.gender.table, cleaned.income.table,  cleaned.race.table, and cleaned.region.table. These correspond to the 6 demographic categories. Each of these has a suffix which describes the question it's from. For example, the first question is "How closely are you following the news about coronavirus?", so the age table corresponding to that question is cleaned.age.table1. All the other output variables are just from intermediate steps, so don't worry about them.

Updates on Data-scraping

So as I'm gathering data from all the previous surveys I thought I'd fill you guys in on some data stuff. First, the earliest survey with questions related to coronavirus was Feb 2-4, and it had 12 questions relating to it, plus others relating to disease in general. However, not all of those questions remained on the survey over time, and over time some were dropped and others added as the situation changed. Obviously I'll get the ones that remained the whole time, but I'm also working on a document to describe the others so you guys can look at them and decide which others you want to use, if any.

Second, for some reason a few weeks ago they changed the format of the survey (The latest 3 are the new format, all previous ones are the old format). They added the education variable then, and removed some political related variables. Therefore it's taking me some time to adapt my code, but it won't be too long. One interesting thing is that due to the change in format, in the older surveys I can scrape the political affiliation data, while in the newest ones I can't reliably get it for all questions. However to me it still doesn't make much sense to use that since we don't have it for all questions in the three latest weeks.
