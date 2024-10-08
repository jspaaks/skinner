module Main where
import qualified Data.Char as Char
import qualified Data.Text as Text
import qualified Data.Text.Encoding as Text

countNonPrintableCharacters :: String -> (Int, Int)
countNonPrintableCharacters = helper where
    helper input = (f,g) where
      
        f = Prelude.length
          . Prelude.filter (not . Char.isPrint)
          $ input

        g = Text.length
          . Text.filter (not . Char.isPrint)
          . Text.decodeUtf8  -- no reason, just demonstrating import aliasing
          . Text.encodeUtf8  -- no reason, just demonstrating import aliasing
          $ Text.pack input


main :: IO ()
main = do
    print $ countNonPrintableCharacters "\v\t\aHello\r\n"
