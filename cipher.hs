module Main (main) where

import Data.Char
import System.Environment

rotate :: Char -> Int -> Char
rotate c n = chr (
	if (ord c) + n > (ord 'z')
	then (ord 'a') + n - ((ord 'z') - (ord c))
	else (ord c) + n)

cipher :: [Char] -> Int -> [Char]
cipher [] _ = []
cipher (s:ss) n = (rotate s n) : (cipher ss n)

stringToInt :: String -> Int
stringToInt s = read s

main :: IO()
main = do
	args <- getArgs
	progName <- getProgName
	if length args < 2
	then putStrLn ("Usage: " ++ progName ++ " <text> <n>")
	else putStrLn (cipher (args !! 0) (stringToInt (args !! 1)))
