buildList num = if num < 10
                then [num]
                else buildList (quot num 10) ++ [(mod num 10)]

addIfMatches list = if list !! 0 == list !! 1
                    then list !! 0
                    else 0

-- Does not check the last against the first, that needs to be done manually
reverseCaptcha list = if tail list == []
                      then 0
                      else addIfMatches list + reverseCaptcha (tail list)