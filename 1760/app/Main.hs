module Main where
import Data.Char (isPrint)
import qualified Data.Text as Text (length)
import qualified Data.Text as Text (filter)
import Data.Text (pack)
import Data.Text.Encoding (encodeUtf8)
import Data.Text.Encoding (decodeUtf8)

countNonPrintableCharacters :: String -> (Int, Int)
countNonPrintableCharacters = helper where
    helper input = (f,g) where
        f = length
            . filter (not . isPrint)
            $ input

        g = Text.length
            . Text.filter (not . isPrint)
            . decodeUtf8  -- no reason, just demonstrating import aliasing
            . encodeUtf8  -- no reason, just demonstrating import aliasing
            $ pack input

main :: IO ()
main = do
    print $ countNonPrintableCharacters "\v\t\aHello\r\n"
