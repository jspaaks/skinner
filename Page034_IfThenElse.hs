module Page034 where

--printSmallNumber num =
--  if num < 10
--  then print num
--  else print "Too big to print"

printSmallNumber num =
  let msg = if num < 10
        then show num
        else "the number is too big!"
  in print msg

main = printSmallNumber 6
