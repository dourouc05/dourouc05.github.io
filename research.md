---
title: Research topics
permalink: research
layout: page
---

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

# Books

## [Créer des applications graphiques en Python avec PyQt5](https://www.d-booker.fr/qt-python/376-creer-des-applications-graphiques-en-python-avec-pyqt.html), T. Cuvelier, P. Denis

This book was written for anyone wanting to develop graphical user interfaces in Python, starting from a simple dialog to very elaborate applications with menus, toolbars, resizing, database access, etc. The reader is supposed to have little to no knowledge about Qt, but to be knowledgeable about Python and object-oriented programming, especially inheritance. 

Qt is a very complete multiplatform framework, written in C++. PyQt is a binding between Python and Qt, bringing the full Python environment to Qt. 

This book relies on PyQt version 5.6, which will be maintained in the long term, while also mentioning the differences with the next version, PyQt 5.7. 

Two programming paradigms are proposed: the imperative way, that assembles widgets, and the declarative way, with the QML language (Qt Quick). The same example application (library management) is developed with the two methodologies. To go further, a third part details interactive 2D rendering with graphics views (within a Qt Widget application) and different advanced rendering techniques for Qt Quick (Canvas, Qt 3D). 

Eric6 was chosen as default development environment. You will also use Qt Creator to develop in QML. 

ISBN-13: 978-2-8227-0518-9.

## [Créer des applications avec Qt 5 : les essentiels](https://www.d-booker.fr/110-qt-5-les-essentiels.html), G. Belz, T. Cuvelier, I. Diallo, L. du Verdier, V. Meyer, F. Renault

Qt 5 was out at the end of 2012 and marks a new step in multiplatform programmin. Taking into account the evolution of application development, the framework was refactored as a large and modular toolbox that can be used to create any kind of application, either for desktop or mobile devices. 

This book aims at covering all fundamental tools of Qt 5. 

As a newcomer or a seasoned user, as a designer or a developer, the book will guide you through the first steps with the new version of the framework. Through rich and various examples, it gives you all the keys to create applications, help you find the best graphical modules, take the most out of Qt Creator, optimise your development, or succeed in migrating from Qt 4. A large part of the book is dedicated to Qt QUick and QML, being the most prominent addition to Qt. 

Like the framework, this book is modular, meaning that it is made up of several relatively autonomous units, focused on specific items. Its objective is to directly answer learning goals and use cases, so that the reader may quickly find the most relevant bits. 

This book will present: 

  - what Qt 5 brings to the table
  - the needed elements to begin with Qt
  - Qt Quick
  - QGraphicsView
  - Qt Creator


ISBN-13: 978-2-8227-0108-2.

## Web sémantique : méthodes et outils pour le Web de données, T. Health and C. Bizier, translated by T. Cuvelier, J. Plu, A. Seilles

The World Wide Web has enabled the creation of a global information space comprising linked documents. As the Web becomes ever more enmeshed with our daily lives, there is a growing desire for direct access to raw data not currently available on the Web or bound up in hypertext documents. Linked data provides a publishing paradigm in which not only documents, but also data, can be a first class citizen of the Web, thereby enabling the extension of the Web with a global data space based on open standards - the Web of data. In this Synthesis lecture we provide readers with a detailed technical introduction to linked data. We begin by outlining the basic principles of linked data, including coverage of relevant aspects of Web architecture. The remainder of the text is based around two main themes - the publication and consumption of linked data. Drawing on a practical linked data scenario, we provide guidance and best practices on: architectural approaches to publishing linked data; choo ing URIs and vocabularies to identify and describe resources; deciding what data to return in a description of a resource on the Web; methods and frameworks for automated linking of data sets; and testing and debugging approaches for linked data deployments. We give an overview of existing linked data applications and then examine the architectures that are used to consume linked data from the Web, alongside existing tools and frameworks that enable these. Readers can expect to gain a rich technical understanding of linked data fundamentals, as the basis for application development, research or further study.

This book is a translation of Christian Bizer and Tom Heath's *Linked data: evolving the Web into a global data space*. 

ISBN-13: 978-2-7440-2519-8. 

# Development projects

## Car on the Hill (now: [CovoitULiège](https://covoituliege.ulg.ac.be/))

The ULg campuses are not exactly the best in class when it comes to mobility. This is partly due to its highly decentralised organisation: some faculties are localised in the city centre (in different areas of the city), but also remote from the city (the Sart-Tilman campus). Public transportation is a partial answer to this problem, especially in the city centre, where the bus offer is extensive. However, only two buses serve the Sart-Tilman campus, and these are over-crowded during rush time.

The goal of the Car on the Hill project is to better exploit the capacity of the cars, i.e. to organise a carsharing activity at the scale of the university, exclusively for university staff and students. As such, drivers propose to drive other persons, and passengers indicate their needs. The platform then proposes to match drivers and passengers based on their respective constraints (origin, destination, precise time of arrival, and delay tolerances).

My part in the project was to develop a prototype for this application as a website that could also be used as a mobile application, during the summer 2015. It was programmed in Python using the Django Web framework. An API has been developed to interact with the application; it was used for a master thesis in 2015-2016 about the development of a native Android application. The actual development of the application started in September 2016.

This project has had also some impact on the teaching activities of the department, as it was also the subject of [the integrated software project 2015-2016](http://web.archive.org/web/20160811161723/http://www.montefiore.ulg.ac.be/~proj0010/) (a large software development project for computer science master students). Its algorithmic part was a project<!-- http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2015/P2_statement.pdf --> for the discrete optimisation course. 

The prototype has now developed and has been [deployed at the scale of the university](https://covoituliege.ulg.ac.be/).

