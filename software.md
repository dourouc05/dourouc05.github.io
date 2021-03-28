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
* Mathematical programming: 
  * Modelling: I contributed to [MathOptInterface.jl](https://github.com/jump-dev/MathOptInterface.jl), [JuMP.jl](https://github.com/jump-dev/JuMP.jl), [MathOptFormat.jl](https://github.com/odow/MathOptFormat.jl)
  * Solver wrappers: I contributed to [CPLEX.jl](https://github.com/jump-dev/CPLEX.jl), [Gurobi.jl](https://github.com/jump-dev/Gurobi.jl), [SCS.jl](https://github.com/jump-dev/SCS.jl), [Xpress.jl](https://github.com/jump-dev/Xpress.jl)

{% include card_end.html %}
{% include card_begin.html title="Documentation tools" id="documentation-tools" %}

I developed [QtDocTools](https://github.com/dourouc05/QtDocTools/), a simple CLI tool that was initially written to help manage [the translation of Qt’s documentation into French](https://qt.developpez.com/doc/) by automating many operations on DocBook documents, and outgrew to handle the whole publication chain (roundtrip to DOCX format for proofreading, generation of whole websites, etc.). When working on this tool, I also made a few contributions to [Apache POI](https://github.com/apache/poi) and to [Qt's qdoc](https://www.qt.io/). 

I contributed to [LyX, a WYSIWYM LaTeX editor](https://www.lyx.org/), especially regarding its DocBook 5 support. 

Both projects lead me to propose and support until acceptance of several propositions to [the DocBook OASIS standard](https://github.com/docbook/docbook).

{% include card_end.html %}
{% include card_begin.html title="Development projects" %}

## Car on the Hill (became [CovoitULiège](https://covoituliege.ulg.ac.be/), now [UGo](https://ugo.be/))

The ULg campuses are not exactly the best in class when it comes to mobility. This is partly due to its highly decentralised organisation: some faculties are localised in the city centre (in different areas of the city), but also remote from the city (the Sart-Tilman campus). Public transportation is a partial answer to this problem, especially in the city centre, where the bus offer is extensive. However, only two bus routes serve the Sart-Tilman campus, and these are over-crowded during rush time.

The goal of the Car on the Hill project is to better exploit the capacity of the cars, i.e. to organise a carsharing activity at the scale of the university, exclusively for university staff and students. As such, drivers propose to drive other persons, and passengers indicate their needs. The platform then proposes to match drivers and passengers based on their respective constraints (origin, destination, precise time of arrival, and delay tolerances).

My part in the project was to develop a prototype for this application as a website that could also be used as a mobile application, during the summer 2015. It was programmed in Python using the Django Web framework. An API has been developed to interact with the application; it was used for a master thesis in 2015-2016 about the development of a native Android application. The actual development of the application started in September 2016.

This project has had also some impact on the teaching activities of the department, as it was also the subject of [the integrated software project 2015-2016](http://web.archive.org/web/20160811161723/http://www.montefiore.ulg.ac.be/~proj0010/) (a large software development project for computer science master students). Its algorithmic part was a project<!-- http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2015/P2_statement.pdf --> for the discrete optimisation course. 

The prototype has now developed and has been deployed at the scale of the university and can be licensed by third parties.

{% include card_end.html %}
