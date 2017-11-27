doubleVal x = x + x

doubleSmall x = if x < 100
                  then doubleVal x
                  else x