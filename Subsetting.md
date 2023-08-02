Index-based subsetting:
Involves using square brackets to extract specific elements from a list based on their position (index) within the list.

list1 <- list("ben", "peter", "george", "claire")
subset1 <- list1[1]

Name-based subsetting:
This approach uses the names assigned to elements in the list to extract specific elements. The $ operator or [[ ]] can be used

my_named_list <- list(name1 = "ben", name2 = "peter", name3 = "george")
subset4 <- my_named_list$name1


Logical-based subsetting:
Involves using logical conditions to filter elements from the list. The logical condition returns a vector of TRUE and FALSE, indicating which elements to include or exclude.
num_list <- list(10, 25, 15, 30, 5)
subset6 <- num_list[num_list > 20] 