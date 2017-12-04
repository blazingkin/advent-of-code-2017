import Data.List

valid pass = length (nub $ sort pass) == length pass
main = interact $ (++"\n") . show . length . filter valid . map words . lines