---
title: Software
permalink: software
layout: page
---

{% include card_begin.html title="Research software" id="research-software" %}

I am the main developer of the following Julia packages, directly related to my research: 

* [CombinatorialBandits.jl](https://github.com/dourouc05/CombinatorialBandits.jl): strategies for combinatorial bandits, both well-known policies and the ones I developed during my PhD
* [Seleroute.jl](https://github.com/dourouc05/Seleroute.jl): routing algorithms for use in computer networks, with a special focus on uncertainty and fairness
* [IndustrialProcessFlexibilisation.jl](https://github.com/dourouc05/IndustrialProcessFlexibilisation.jl): flexible operations of industrial plants
* [ReservoirManagement.jl](https://github.com/dourouc05/ReservoirManagement.jl): long-term planning of water-reservoir operation

I co-developed the [RAL Python package](https://github.com/SAWassermann/RAL) for stream-based active learning.

{% include card_end.html %}
{% include card_begin.html title="Research-support software" id="research-support-software" %}

I developed or significantly contributed to the following Julia packages when working on the previous packages: 

* [NonsmoothOptim.jl](https://github.com/dourouc05/NonsmoothOptim.jl) for nonsmooth optimisation, especially subgradient method and bundle method
* [Kombinator.jl](https://github.com/dourouc05/Kombinator.jl) for combinatorial optimisation: exact and approximation algorithms and linear-programming formulations for several combinatorial problems
* Constraint programming: 
  * [ConstraintProgrammingExtensions.jl](https://github.com/dourouc05/ConstraintProgrammingExtensions.jl), providing a solver interface for constraint programming (an extension of [MathOptInterface](https://github.com/jump-dev/MathOptInterface.jl))
  * [JuCP.jl](https://github.com/dourouc05/JuCP.jl), a modelling layer for constraint programming (an extension of [JuMP](https://github.com/jump-dev/JuMP.jl))
  * [CPLEXCP.jl](https://github.com/dourouc05/CPLEXCP.jl), a solver wrapper for CPLEX CP Optimizer
* Mathematical programming: I contributed to [MathOptInterface.jl](https://github.com/jump-dev/MathOptInterface.jl), [JuMP.jl](https://github.com/jump-dev/JuMP.jl), [MathOptFormat.jl](https://github.com/odow/MathOptFormat.jl)
* Mathematical-optimisation solvers: I contributed to [CPLEX.jl](https://github.com/jump-dev/CPLEX.jl), [Gurobi.jl](https://github.com/jump-dev/Gurobi.jl), [SCS.jl](https://github.com/jump-dev/SCS.jl), [Xpress.jl](https://github.com/jump-dev/Xpress.jl)

{% include card_end.html %}
{% include card_begin.html title="Documentation tools" id="documentation-tools" %}

I developed [QtDocTools](https://github.com/dourouc05/QtDocTools/), a simple CLI tool that was initially written to help manage [the translation of Qt’s documentation into French](https://qt.developpez.com/doc/) by automating many operations on DocBook documents, and outgrew to handle the whole publication chain (roundtrip to DOCX format for proofreading, generation of whole websites, etc.). When working on this tool, I also made a few contributions to [Apache POI](https://github.com/apache/poi) and to [Qt's qdoc](https://www.qt.io/). 

I contributed to [LyX, a WYSIWYM LaTeX editor](https://www.lyx.org/), especially regarding its DocBook 5 support. 

Both projects lead me to propose and support until acceptance of several propositions to [the DocBook OASIS standard](https://github.com/docbook/docbook).

{% include card_end.html %}
