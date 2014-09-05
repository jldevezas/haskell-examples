import System.IO
main = do
  putStr "Basic input: "
  hFlush stdout
  str <- getLine
  putStrLn ("You typed '" ++ str ++ "'")
