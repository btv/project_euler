
import Control.Monad
import Control.Monad.State

type MyState = (Integer, Integer)
s0 = (7, 28)

tick :: State MyState Int
tick = do 
    (n,o) <- get
    let divs = getDivLen (n,o)
    let n' = n + 1
    let o' = o + n'
    put (n', o')
    return divs

getDivLen :: MyState -> Int
getDivLen (n,o) = foldl1 (+) [2 | x <- [1..x], o `mod` x == 0]
    where x = round . sqrt $ fromIntegral o

--plusOne :: MyState -> MyState
--plusOne = execState tick 
