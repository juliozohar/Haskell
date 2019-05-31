module LearningDataAnalysis01  where 

-- Program to compute the median of a dataset, that is the average of the two closest 
-- elements to the middle of the sorted dataset. 

import Data.List 


median :: [Double] -> Double
median [] = 0
median xs = if oddLength then 
                middleValue 
            else 
                (middleValue + beforeMiddleValue) / 2
    where 
        sortedList = sort xs
        oddLength = 1 == mod (genericLength xs) 2
        middle = floor $ (genericLength xs) / 2
        middleValue = genericIndex sortedList middle
        beforeMiddleValue = genericIndex sortedList (middle -1)
