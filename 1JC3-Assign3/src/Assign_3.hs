{- Assignment 3
 - Name: TODO add full name
 - Date: TODO add of completion
 -}
module Assign_3 where

macid :: String
macid = "TODO: put your mac id here"

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
maxNodeID :: Graph a -> Maybe NodeID
maxNodeID nodes = error "TODO: implement maxNodeID"

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
