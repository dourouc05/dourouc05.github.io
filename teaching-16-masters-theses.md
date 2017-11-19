---
title: Proposed master's theses (2016-2017)
permalink: teaching-2016-2017-proposed-theses
layout: page
---

# Proposed master's theses, 2016-2017

## Open-source Contributions to Julia, a Scientific Programming Language, for Mathematical Optimisation

In the world of programming languages, those that have good runtime performance (like C or Fortran) rarely have nice dynamic features, whereas languages that offer a better programmer productivity (like MATLAB or Python) lack performance. Julia is a newcomer in the field of scientific and technical computations that has a productivity-oriented syntax, but closely matches the performance of lower-level languages like C.

Julia also has a strong community for mathematical optimization, named JuliaOpt. It has developed a series of packages to propose a state-of-the-art environment for mathematical programming, mainly several interfaces to existing solvers MathProgBase.jl, and two modelling layers JuMP.jl for general cases, Convex.jl for convex programming. Another JuliaOpt package, Optim.jl, provides full Julia implementation of optimisation algorithms, which can better handle Julia's peculiarities than external solvers (in particular, it can exploit properties in linear algebra not exposed through standard libraries, which could improve performance and scaleability).

This environment can be further developed with other contributions, such as: 


  - Implementation of missing optimisation algorithms in Optim.jl, especially for constrained optimisation or convex programming, such as interior point or dual methods, or sequential techniques (SQP, SLP), or less-known algorithms. The performance of the implementation should be compared to existing solutions in other environments.
  - Generic modelling for optimisation under uncertainty, as an extension to JuMP.jl. Currently, the two main paradigms to add uncertainty into mathematical programs are implemented in Julia (stochastic programming with StochJuMP.jl, robust programming with JuMPeR.jl; however, practitioners have a hard time to switch from one paradigm to another and see which one is the best suited to their needs (the only tool that allows them to do so is [IBM Uncertainty Toolbox](http://www-01.ibm.com/software/analytics/optimization/uncertainty-toolkit/index.html)). The goal would be to see how far both paradigms can share a modelling interface.
  - DAE modelling as an extensionto JuMP.jl. Many problems in engineering use differential equations, including when optimising some parameters. However, there is no modelling layer for these differential equations to date which is integrated in Julia packages ([albeit a generic interface for differential problems has been created](https://github.com/JuliaDiffEq/DifferentialEquations.jl)). Other modelling packages such as Pyomo have such functionalities (with an implementation based on the discretization of the equations), which could be ported to JuMP.jl.

Any of those three subjects is a candidate for a master's thesis.

The proposed master's theses would take the form of open-source contributions to existing Julia packages or to new open-source libraries. Previous knowledge of the language is appreciated, but is not mandatory.

Feel free to propose other kinds of contributions to the Julia environment! 

[Download as PDF](/files/theses/2016_julia.pdf).

## Modelling and Simulating Industrial Processes to Optimise Their Operations

As the electricity price becomes more and more volatile and hard to predict, the industrial sites are more willing to adapt their production to the price variations; the evolution of the electricity market also provides opportunities for the plant to increase the revenue in exchange of some services (such as reducing the total consumption). To this end, the plants must be completely modeled to globally optimize the use of energy: the production can be scheduled, while taking into account the various consumption profiles of the machines and guaranteeing the absence of shortage in the processes.

For example, a paper mill has different consumption profiles depending on the type of paper it is producing. This consumption comes from the various fans and burners that make it up. These various components could be actuated differently while still providing the same quality of paper in order to minimise the total electricity bill. The paper machines can also be turned off when the grid operator asks for it in order to provide flexibility services to the electrical grid operator.

A part of this project is to model the industrial processes of the plants. For optimization purposes, the main tool is to simplify their behaviour and make a linear model. This approach is often sufficient for many processes, but some of them are too complicated. To keep the linearity of the model while having very complex behaviours, an idea is to simulate a representative set of evolutions of the process depending on the way it is controlled (e.g., for the paper machine, increase the use of a fan and simulate the effect on the drying). These scenarios could then be extrapolated by linearizing the process around them.

The goal of this master's thesis is to simulate a series of modes of operations for industrial processes and to prepare their integration into the global plant model. The student is expected to have or to be willing to acquire good knowledge of power-intensive industrial processes (such as HVAC, electrical ovens, electrolysis) and an interest in optimization. 

[Download as PDF](/files/theses/2016_industore_modelling.pdf).

## Scheduling Industrial Jobs to Minimise Electricity Consumption Costs

As the electricity prices become more and more volatile and hard to predict, the industrial sites are more willing to adapt their production to the price variations; the evolution of the electricity market also provides opportunities for the plant to increase the revenue in exchange of some services (such as reducing the total consumption). To this end, the plants must be completely modelled to globally optimise the use of energy: the production can be scheduled, while taking into account the various consumption profiles of the machines and guaranteeing the absence of shortage in the processes.

For example, the paper mill's production should be scheduled according to the price of electricity, in order to minimise the total electricity bill. The paper machines can also be turned off when the grid operator asks for it in order to provide flexibility services to the electrical grid operator. This scheduling problem is called 'single-machine preemptive job scheduling with transition costs.'

A part of this project is to schedule jobs efficiently on machines within the context of a global plant model. Technically, the machines are modelled with a mixed-integer program (MIP), but the scheduling part is more commonly performed with constraint programming (CP). The actual difficulty is to mix both models in a single solver.

The goal of this master's thesis is to develop a state-of-the-art solver for these kinds of problems that can find good solutions in a reasonable amount of time. The solver must work within the framework of mathematical programming to be integrated in the global plant model. Approaches can include formulation comparison and improvement, heuristics to find good initial solutions or improve existing ones, development of valid inequalities. 

[Download as PDF](/files/theses/2016_industore_scheduling.pdf).