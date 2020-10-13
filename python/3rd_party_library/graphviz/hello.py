from graphviz import Digraph

g = Digraph("g", filename="hello.gv")
g.edge("hello", "viz")
g.view()

