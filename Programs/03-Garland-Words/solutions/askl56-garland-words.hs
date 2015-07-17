import Data.List

garland word = length . head $ filter (`isPrefixOf` word) (tail $ tails word)

challenge1 word = word ++ cycle (drop (garland word) word)

challenge2 = maximum . map garland . lines <$> readFile "enable1.txt"
