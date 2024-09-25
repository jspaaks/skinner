module Currying
  where
    sumOfTwoArgs a b = a + b
    sumOfTupleElems t = (fst t) + (snd t)
    mycurry f = \a -> \b -> f (a, b)
    myuncurry f = \(a, b) -> f a b

