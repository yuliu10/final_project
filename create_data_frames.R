agedf = rbinb(age.1.1, age.1.2 ,age.1.3, age.1.4, age.1.5, age.1.6, age.1.7, age.2.1, age.2.2, age.2.3, age.2.4,
      age.2.5, age.2.6, age.2.7, age.3.1, age.3.2, age.3.3, age.3.4, age.3.5, age.3.6, age.3.7, age.4.1,
      age.4.2, age.4.3, age.4.4, age.4.5, age.4.6, age.4.7, age.5.1, age.5.2 ,age.5.3, age.5.4, age.5.5,
      age.5.6, age.5.7) %>%
  pivot_longer(c(-question, -week, -response), names_to = "age", values_to = "percent")

genderdf = rbind(gender.1.1, gender.1.2, gender.1.3, gender.1.4, gender.1.5, gender.1.6, gender.1.7, gender.2.2,
            gender.2.3,gender.2.4, gender.2.5, gender.2.6, gender.2.7, gender.3.1, gender.3.2, gender.3.3,
            gender.3.4, gender.3.5, gender.3.6, gender.3.7, gender.4.1, gender.4.2, gender.4.3, gender.4.4,
            gender.4.5, gender.4.6, gender.4.7, gender.5.1, gender.5.2, gender.5.3, gender.5.4, gender.5.5,
            gender.5.6, gender.5.7)% >%
  pivot_longer(c(-question, -week, -response), names_to = "gender", values_to = "percent")

edudf = rbind(edu.1.5, edu.1.6, edu.1.7, edu.2.5, edu.2.6, edu.2.7, edu.3.5, edu.3.6, edu.3.7, edu.4.5,
              edu.4.6, edu.4.7, edu.5.5,edu.5.6, edu.5.7) %>%
  pivot_longer(c(-question, -week, -response), names_to = "education", values_to = "percent")

racedf = rbind(race.1.1, race.1.2, race.1.3, race.1.4, race.1.5, race.1.6, race.1.7, race.2.1, race.2.2,
             race.2.3, race.2.4, race.2.5, race.2.6, race.2.7, race.3.1, race.3.2, race.3.3, race.3.4,
             race.3.5, race.3.6, race.3.7, race.4.1, race.4.2, race.4.3, race.4.4, race.4.5, race.4.6,
             race.4.7, race.5.1, race.5.2, race.5.3, race.5.4, race.5.5, race.5.6, race.5.7) %>%
  pivot_longer(c(-question, -week, -response), names_to = "race", values_to = "percent")

incomedf = rbind(income.1.1, income.1.2, income.1.3 ,income.1.4, income.1.5, income.1.6 ,income.1.7,
                 income.2.1, income.2.2, income.2.3, income.2.4, income.2.5, income.2.6, income.2.7,
                 income.3.1, income.3.2, income.3.3, income.3.4, income.3.5, income.3.6, income.3.7, 
                 income.4.1, income.4.2, income.4.3, income.4.4, income.4.5, income.4.6, income.4.7,
                 income.5.1, income.5.2, income.5.3, income.5.4, income.5.5, income.5.6, income.5.7) %>%
  pivot_longer(c(-question, -week, -response), names_to = "income", values_to = "percent")

regiondf = rbind(region.1.1, region.1.2, region.1.3, region.1.4, region.1.5, region.1.6, region.1.7,
                 region.2.1, region.2.2, region.2.3, region.2.4, region.2.5 ,region.2.6, region.2.7,
                 region.3.1, region.3.2, region.3.3, region.3.4, region.3.5, region.3.6 ,region.3.7,
                 region.4.1, region.4.2, region.4.3, region.4.5, region.4.6, region.4.7, region.5.1,
                 region.5.2, region.5.3, region.5.4, region.5.5, region.5.6, region.5.7)%>%
  pivot_longer(c(-question, -week, -response), names_to = "region", values_to = "percent")







