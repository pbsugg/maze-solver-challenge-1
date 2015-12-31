Release 1:

First step, how do I *model* a maze within my program?
Have to separate the *reading* of the maze from traversing it
What do I need to know to solve a graph?

Remember: "Your code should have an interface that lets you "drop in" a given strategy."

Interface: should be able to add the maze as a strategy and see what happens

Givens:
1) Maze can be "any dimension," in any configuration

What do I need to know to "model" this structure?
1) What the connections are from a given node
2) Position, where a node falls relatively within the graph

1) How would I solve it?
  Look at the start and end points, try to visually trace a path in between
2) Can the computer solve it that way?
  Computer has to be given specific information about each tile

3) Pseudo for potential solution #1 (depth first)
  Find the starting space
    FOR the starting space
      GO right
      if you can't go right, GO DOWN
      if you can't go right, GO LEFT
      if you can't go left, GO UP
   IF you find yourself away from starting space (current space != starting space)
   Go back to the starting space and continue search pattern
   IF search pattern exhausted
     UNSOLVABLE

 4) Pseudo solution #2 (breadth first)
    FOR the starting node, get all of its edge nodes
      put them in the queue
    FOR all edge nodes
      put them in the queue
      etc.
