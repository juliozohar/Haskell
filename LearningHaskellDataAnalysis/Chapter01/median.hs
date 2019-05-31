-- Function main of the median program. 

import System.Environment (getArgs)
import LearningDataAnalysis01

main :: IO () 
main = do 
    values <- getArgs
    print . median $ map read values
