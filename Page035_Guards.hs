module Page035 where

qualifyNumber num =
  if num < 3 then show num <> " is a small number" else
  if num < 10 then show num <> " is a medium-sized number" else
  show num <> " is a large number"


qualifyNumberWithGuards num
  | num < 3 = show num <> " is a small number"
  | num < 10 = show num <> " is a medium-sized number"
  | num < 100 = show num <> " is a pretty big number"
  | num < 1000 = show num <> " is a large number"
  | otherwise = show num <> " is a veritably gigantic number"
