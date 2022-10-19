module Problems.LC1358.TamCarreSlidingWindow (numberOfSubstrings) where

numberOfSubstrings :: [Char] -> Int
numberOfSubstrings = slidingWindow $ \window -> all (`elem` window) "abc"

data SlidingWindow a = SlidingWindow { count :: Int, wdw :: [a] }

slidingWindow :: ([a] -> Bool) -> [a] -> Int
slidingWindow validWdw list = loop list (SlidingWindow 0 []) where
    loop []        = count
    loop (x:xs)    = loop xs . while (validWdw . wdw) (shiftWdw xs) . addToWdw x
    addToWdw x sw  = sw {wdw = x:wdw sw}
    shiftWdw xs sw = sw {count = count sw + length xs + 1, wdw = init (wdw sw)}
    while p        = until (not . p)