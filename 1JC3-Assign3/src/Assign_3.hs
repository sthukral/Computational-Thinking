{- Assignment 3
 - Name: Supriya Thukral
 - Date: November 15, 2020
 -}
module Assign_3 where

macid :: String
macid = "thukras"

{- -----------------------------------------------------------------
 - Datatypes
 - -----------------------------------------------------------------
 -}
type Graph a = [(Node a,Edges)]
type Edges = [NodeID]
type NodeID = Int

data Node a = Node { getNodeID  :: NodeID,
                     getNodeVal :: a }
  deriving (Show,Eq)

{- -----------------------------------------------------------------
 - Example Graph
 - -----------------------------------------------------------------
 -              -----        ----------
 -              | A |------->| C |    |
 -              -----        ----- <---
 -                |           |
 -                |     ------|
 -                v     |
 -              ----- <-|
 -              | B |
 -              -----
 -}
nodeA,nodeB,nodeC :: Node Char
nodeA = Node 0 'A'
nodeB = Node 1 'B'
nodeC = Node 2 'C'

exGraph :: Graph Char
exGraph = [(nodeA,[1,2])
          ,(nodeB,[])
          ,(nodeC,[1,2])]
{- -----------------------------------------------------------------
 - maxNodeID
 - -----------------------------------------------------------------
 - Description: TODO add comments on maxNodeID here
 -}

--insert x [] = [x]
--insert _ (y:ys)
  --  | getNodeID (fst (head exGraph)) < y = x : (y:ys)
  --  | otherwise = y : insert x ys

--insertSort [] = []
--insertSort (x:xs) = insert x (insertSort xs)

maxNodeID :: Graph a -> Maybe NodeID
maxNodeID nodes
  | nodes == [] = Nothing
  | nodes ==[(x,_),[]] = Just (getNodeID x)
  


{- -----------------------------------------------------------------
 - insertNode
 - -----------------------------------------------------------------
 - Description: TODO add comments on maxNodeID here
 -}
insertNode :: a -> Graph a -> Graph a
insertNode v graph = error "TODO: implement insertNode"

{- -----------------------------------------------------------------
 - removeNode
 - -----------------------------------------------------------------
 - Description: TODO add comments on removeNode here
 -}
removeNode :: NodeID -> Graph a -> Graph a
removeNode nodeID graph = error "TODO: implement removeNode"

{- -----------------------------------------------------------------
 - lookupNode
 - -----------------------------------------------------------------
 - Description: TODO add comments on lookupNode here
 -}
lookupNode :: NodeID -> Graph a -> Maybe (Node a)
lookupNode nID graph = error "TODO: implement removeNode"

{- -----------------------------------------------------------------
 - insertEdge
 - -----------------------------------------------------------------
 - Description: TODO add comments on insertEdge here
 -}
insertEdge :: Eq a => (NodeID,NodeID) -> Graph a -> Maybe (Graph a)
insertEdge (n1,n2) graph = error "TODO: implement insertEdge"
