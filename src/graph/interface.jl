#
# This file is a part of MolecularGraph.jl
# Licensed under the MIT License http://opensource.org/licenses/MIT
#

export
    AbstractGraph,
    UndirectedGraph, DirectedGraph,
    UndirectedGraphView, DirectedGraphView,
    UDGraph, DGraph, GraphView,
    AbstractNode,
    UndirectedEdge, DirectedEdge,
    Node


abstract type AbstractGraph end
abstract type UndirectedGraph <: AbstractGraph end
abstract type DirectedGraph <: AbstractGraph end
abstract type UndirectedGraphView <: AbstractGraph end
abstract type DirectedGraphView <: AbstractGraph end

# Union types
# TODO: use traits
# https://github.com/JuliaLang/julia/issues/2345

UDGraph = Union{UndirectedGraph,UndirectedGraphView}
DGraph = Union{DirectedGraph,DirectedGraphView}
GraphView = Union{DirectedGraphView,UndirectedGraphView}


# Components

abstract type AbstractNode end
abstract type AbstractEdge end
abstract type UndirectedEdge <: AbstractEdge end
abstract type DirectedEdge <: AbstractEdge end


# Node

struct Node <: AbstractNode
    attr::Dict
end

Node() = Node(Dict())
