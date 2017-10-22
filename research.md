---
title: Research topics
permalink: research
---

# Research topics

Not yet available. 

# Previous research topics

## InduStore

The [InduStore research project](http://www.industore-project.be/) will allow industrials to add flexibility when using their plants, especially regarding the price of electricity on the day-ahead market.

These developments started with easing the modelling of industrial processes with generic block-diagram models and their associated mathematical formulation. Thanks to this kind of models, those processes can be used in mathematical-programming-based solutions for optimising plants. Currently, a seemingly good candidate for this modelling is the reservoir, which can model many kinds of processes.

Once the process models are developed, they should be integrated within a complete plant model to actually exploit the flexibility. Outside the processes, two elements must be considered: the order book, but also the workers, as they are at the heart of the production. Industrial sites tend to use shift work to be able to produce twenty-four hours a day; however, this requires to organise the shifts according to legal constraints. Our approach considers the two faces of the coin: production and shift work. The first one exploits the flexibility, while the second optimises the schedule for the workers' well-being.

The source code of the integrated models is [freely available on GitHub](https://github.com/dourouc05/IndustrialProcessFlexibilisation.jl) (under a MIT license). The production-HR coupling has been presented [at the COMEX workshop](http://orbi.ulg.ac.be/handle/2268/209469) and [at the IFORS conference](http://orbi.ulg.ac.be/handle/2268/207330). The modelling methodology has been presented [at the DS3 summer school](http://orbi.ulg.ac.be/handle/2268/212703). 

## Reservoir management

Current dam management techniques that use optimisation either are based on mathematical programming and have a low level of detail, or heavily use metaheuristics to include physical phenomena. The latter completely lose the traditional convergence properties of mathematical optimisation, and both still lack provably reliable uncertainty modelling. 

More specifically, this research aims to include flooding models inside mathematical programming while including uncertainty. Floods are usually described by nonlinear differential models, and the goal is to make them fit into convex optimisation frameworks. 

For now, the models have a rather low level of detail, but include uncertainty in the inflow. 

The Julia source code of the integrated models is [freely available on GitHub](https://github.com/dourouc05/ReservoirManagement.jl) (under a MIT license). 

## Master's thesis: stochastic and robust programming

Formal optimisation can take into account the uncertainty in two main ways: either stochastic or robust programming. Both paradigms have their own strengths, based on quite different theoretical notions: stochastic optimisation considers the uncertain parameters are described by their probability density functoin, while robust optimisation regards them as belonging to an uncertainty set.

Those two approaches are quite different, but have rarely seen a direct comparison, be it for their actual performance when solving the resulting optimisation problems, but also for the robustness of their solution against unforeseen uncertainty.

My master's thesis was exactly about this comparison. [It was presented at the ORBEL30 conference](ttp://orbi.ulg.ac.be/handle/2268/197081). [The full text is also available online](http://orbi.ulg.ac.be/handle/2268/197090).

# Teaching material

## Discrete optimisation
Due to my teaching assistant role, I have developed an exercise book for the discrete optimisation course. It also contains a set of final answers and worked-out solutions, so that the book may readily be used in different contexts. It is [freely available on GitHub](https://github.com/dourouc05/OptimisationTeachingKit) (under a CC-NC 4 license). 

## Robotics

Thanks to my teaching assistant role, I had the opportunity to contribute to Renaud Detry's robotics courseware, [teaching robotics with a simulator](https://github.com/ULgRobotics/trs). My role has been to ease the first steps with MATLAB and the simulator, by splitting the main demonstration script into smaller units (work done with [Mathieu Baijot](https://www.esat.kuleuven.be/micas/index.php/mathieu-baijot-cv)) and by creating videos showing the use of the simulator (they are being finalised). 

# Development projects

## Car on the Hill (now: [CovoitULiège](https://covoituliege.ulg.ac.be/))

The ULg campuses are not exactly the best in class when it comes to mobility. This is partly due to its highly decentralised organisation: some faculties are localised in the city centre (in different areas of the city), but also remote from the city (the Sart-Tilman campus). Public transportation is a partial answer to this problem, especially in the city centre, where the bus offer is extensive. However, only two buses serve the Sart-Tilman campus, and these are over-crowded during rush time.

The goal of the Car on the Hill project is to better exploit the capacity of the cars, i.e. to organise a carsharing activity at the scale of the university, exclusively for university staff and students. As such, drivers propose to drive other persons, and passengers indicate their needs. The platform then proposes to match drivers and passengers based on their respective constraints (origin, destination, precise time of arrival, and delay tolerances).

My part in the project was to develop a prototype for this application as a website that could also be used as a mobile application, during the summer 2015. It was programmed in Python using the Django Web framework. An API has been developed to interact with the application; it was used for a master thesis in 2015-2016 about the development of a native Android application. The actual development of the application started in September 2016.

This project has had also some impact on the teaching activities of the department, as it was also the subject of [the integrated software project 2015-2016](http://web.archive.org/web/20160811161723/http://www.montefiore.ulg.ac.be/~proj0010/) (a large software development project for computer science master students). Its algorithmic part was a project<!-- http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2015/P2_statement.pdf --> for the discrete optimisation course. 

The prototype has now developed and has been [deployed at the scale of the university](https://covoituliege.ulg.ac.be/).

