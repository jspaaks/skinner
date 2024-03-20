module Page031 where

greet salutation person = salutation <> " " <> person

extendedGreeting person =
  let first = greet "Hello" person
      second = "I hope you're having a nice day."
      third = greet "See you later" person
  in first <> "\n" <> second <> "\n" <> third <> "\n"
