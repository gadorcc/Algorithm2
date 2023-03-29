def human_years_cat_years_dog_years(human_years):
    if human_years >= 1:
        catYears = 15
        dogYears = 15
        if human_years >= 2:
            catYears = catYears + 9
            dogYears = dogYears + 9
            if human_years >=3:
                left = human_years - 2
                catYears = catYears + (left * 4)
                dogYears = dogYears + (left * 5)


    return([human_years,catYears,dogYears])

human_years_cat_years_dog_years(2)
