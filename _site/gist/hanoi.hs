-- Hanoi Towers game. Move disks from left to right, given that a disk cannot be on top of a smaller disk
import Text.PrettyPrint

hanoi :: IO ()

hanoi = let stickone = [1..5]
            sticktwo = []
            stickthree = []
        in print stickone; print sticktwo; print stickthree;