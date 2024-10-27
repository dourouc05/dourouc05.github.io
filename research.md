---
title: Research topics
permalink: research
layout: page
---

{% include card_begin.html title="Research topics" id="research-topics" %}

## Machine learning

### Reinforcement learning for combinatorial optimisation

Reinforcement learning is a paradigm in machine learning where an agent learns an algorithm to make good decisions that are not known beforehand (unlike supervised learning, where the expected result of the model are known in advance, or unsupervised learning, where no decisions are made). Combinatorial optimisation achieves the same goal of making good decisions while relying on human experience to derive a mathematical model or to design heuristics. 

I am currently involved in a team effort to bring these two worlds together. Each of them has its own drawbacks and advantages: combinatorial optimisation algorithms can make good decision in large dimension (but the computation times can grow impractical) while reinforcement learning cannot natively deal with the huge dimensionality of combinatorial sets; reinforcement learning cannot enforce constraints in the same way combinatorial optimisation models can; heuristics for combinatorial optimisations are designed by humans whereas reinforcement learning learns better policies over time. 

The application domain is middle-mile logistics, a very hard combinatorial problem. Middle mile logistics is concerned by the transportation of goods between warehouses, sitting between  the first and last miles of the supply chain. The major constraint is timing (goods must be present at the destination hub at the right time for the next step of the supply chain). While first and last miles assign one shipment to a single vehicle and its route through customers, middle mile is about finding a path for one shipment through several vehicles along predefined routes. We tried approaching the problem as a whole (finding a good path for each shipment through the entire graph) -- as presented at [a NeurIPS workshop](https://hal.science/hal-04755187) and at the [EURO conference](https://hal.science/hal-04755188) -- or decomposing it and solving the individual components using reinforcement learning (finding feasible paths in a time-expanded graph and covering the shipments with paths). I also presented a summary of published and unpublished results [at a CNRS and Google joint event](https//hal.science/hal-04015496).

Along the way, we also developed an instance generator for middle-mile logistics: [MilleMiglia](https://github.com/or-tools/millemiglia). This generator can create new random instances with any level of hardness; it does so while defining an exchangeable data format to compare solvers easily (in the same way routing problems has formats such as [TSPLIB, CARP, NEARP, or LiLim](http://vrp.galgos.inf.puc-rio.br/index.php/en/)). This work has been presented at the [EURO conference](https://hal.science/hal-04755189).

**List of publications**: 

* {% include reference.md key='rl_or_cnrs2024' %}
* {% include reference.md key='data_mm_euro2024' %}
* {% include reference.md key='rl_mm_euro2024' %}
* {% include reference.md key='rl_mm_neurips2023' %}

### Reinforcement learning: Combinatorial bandits

Machine-learning algorithms are often based on optimisation techniques, but do not always take the most of them. For instance, in reinforcement learning, the combinatorial-bandit paradigm corresponds to situations where the agent makes decision that are chosen in a combinatorial space (a router decides for the path of an incoming packet, a website decides which ads should be shown, etc.). These decisions have a very specific structure, as they are made of many individual components (for instance, a path is a sequence of edges: the cost of the path is obtained as the sum of the cost of each edge). This field generalises online combinatorial optimisation. 

Most algorithms for combinatorial bandits use mathematical-optimisation tools in some way. However, current algorithms either have an excellent operational performance (but taking a decision takes a very long time: these algorithms include [ESCB](https://papers.nips.cc/paper/5831-combinatorial-bandits-revisited) and [OSSB](https://papers.nips.cc/paper/6773-minimal-exploration-in-structured-stochastic-bandits)) or have great computational properties (but the solutions they take can be arbitrarily worse than those played by the first algorithms, like [Thompson sampling](https://papers.nips.cc/paper/7670-an-information-theoretic-analysis-for-thompson-sampling-with-many-actions) or [CUCB](http://proceedings.mlr.press/v38/kveton15.html)). More precisely, the first kind of algorithm typically has an exponential computational complexity (with respect to the dimension of the problem, i.e. the number of components of a solution). 

Developing new advanced tools in the field of mathematical optimisation (solving nonlinear programs using budgeted linear problems), I reduce the bandit-problem complexity to polynomial in many useful cases, for two state-of-the-art algorithms (ESCB and OSSB). The result of this work is available as [open-source software](https://github.com/dourouc05/CombinatorialBandits.jl) (under an MIT license). The techniques behind a polynomial-time implementation of ESCB have been presented [at the SNAPP seminar](https://www.youtube.com/watch?v=7flMukHqfW4), [in an arXiv preprint](https://arxiv.org/abs/2002.07258), and at [the ACM SIGMETRICS conference](https://dl.acm.org/doi/10.1145/3447387). The ones for OSSB have been presented at [the ALT conference](http://proceedings.mlr.press/v132/cuvelier21a.html).

**List of publications**: 

* {% include reference.md key='phd' %}
* {% include reference.md key='bandits_amazon2021' %}
* {% include reference.md key='bandits_alt21' %}
* {% include reference.md key='bandits_sigmetrics2021' %}
* {% include reference.md key='bandits_sigmetrics2021_abstract' %}

### Active learning

Active learning is the field of supervised machine learning where the learning algorithm can query an oracle (a human user or another information source) for new labels of previously unlabelled samples. In particular, in stream-based active learning, samples are sequentially presented to the algorithm. This field is highly related to optimal experimental design.

We propose a new algorithm, RAL (reinforced active learning), for stream-based active learning based on reinforcement learning, more specifically on contextual bandits with expert advice, that can outperform current techniques. RAL uses bandit algorithms to merge several existing active-learning algorithms in an adaptive ensemble. We provide [a Python implementation of RAL](https://github.com/SAWassermann/RAL/). We studied RAL's performance and provided a theoretical analysis [at the IAL (interactive adaptive learning) workshop](https://hal.archives-ouvertes.fr/hal-02265426/). 

**List of publications**: 

* {% include reference.md key='ral_tnsm2020' %}
* {% include reference.md key='ral_sigcomm2020' %}
* {% include reference.md key='ral_cnsm2019' %}
* {% include reference.md key='ral_wiml2019' %}
* {% include reference.md key='ral_ecml2019' %}

## Operational research

### Network routing under uncertainty

In computer networks, traffic engineering concerns the efficient use of existing network equipment so that users get the best experience when using the network. Most of the parameters have some level of uncertainty: for instance, operators cannot predict with an extremely high accuracy the traffic that their network will have to withstand. Therefore, this uncertainty must be built into the mathematical models that are used when making traffic-engineering decisions. 

There are several ways to cope with the variability of parameters, such as robust optimisation. Oblivious routing is an often-disregarded paradigm, especially due to its computational cost. Other approaches include fairness, with the idea that a fair solution should withstand more traffic. 

My implementation of many network-routing models is [freely available on GitHub in the Seleroute.jl package](https://github.com/dourouc05/Seleroute.jl) (under an MIT license). Preliminary have been presented at [the TMA conference](hal.archives-ouvertes.fr/hal-02161708). Details of the Julia implementation have been discussed at [the Julia Days 2023](https://hal.science/hal-04231900).

**List of publications**: 

* {% include reference.md key='routing_juliadays2023' %}
* {% include reference.md key='routing_tma2019' %}
* {% include reference.md key='routing_tma2018' %}

### Electrical flexibility for the industry

The [InduStore research project](http://www.industore-project.be/) develops a methodology that helps industrialists add flexibility when using their plants, especially regarding the price of electricity on the day-ahead market.

These developments started with easing the modelling of industrial processes with generic block-diagram models and their associated mathematical formulation. Thanks to this kind of models, those processes can be used in mathematical-programming-based solutions for optimising plants. Currently, a seemingly good candidate for this modelling is the reservoir, which can model many kinds of processes.

Once the process models are developed, they should be integrated within a complete plant model to actually exploit the flexibility. Outside the processes, two elements must be considered: the order book, but also the workers, as they are at the heart of the production. Industrial sites tend to use shift work to be able to produce twenty-four hours a day; however, this requires to organise the shifts according to legal constraints. Our approach considers the two faces of the same coin: production and shift work. The first one exploits the flexibility, while the second optimises the schedule for the workers' well-being.

The source code of the integrated models is [freely available on GitHub](https://github.com/dourouc05/IndustrialProcessFlexibilisation.jl) (under an MIT license). The production-HR coupling has been presented [at the COMEX workshop](http://orbi.ulg.ac.be/handle/2268/209469) and [at the IFORS conference](http://orbi.ulg.ac.be/handle/2268/207330). The modelling methodology has been presented [at the DS3 summer school](http://orbi.ulg.ac.be/handle/2268/212703). 

**List of publications**: 

* {% include reference.md key='industore_snas2020' %}
* {% include reference.md key='industore_dsss2017' %}
* {% include reference.md key='industore_comex2017' %}
* {% include reference.md key='industore_ifors2017' %}

### Water reservoir management

Current dam management techniques that use optimisation either are based on mathematical programming and have a low level of detail, or heavily use metaheuristics to include physical phenomena. The latter completely lose the traditional convergence properties of mathematical optimisation, and both still lack provably reliable uncertainty modelling. 

More specifically, this research aims to include flooding models inside mathematical programming while including uncertainty. Floods are usually described by nonlinear differential models, and the goal is to make them fit into convex optimisation frameworks. 

For now, the models have a rather low level of detail, but include uncertainty in the inflow. 

The Julia source code of the integrated models is [freely available on GitHub](https://github.com/dourouc05/ReservoirManagement.jl) (under an MIT license). The uncertain models have been compared in [an article published in the Water Resources Management journal](http://hdl.handle.net/2268/219394). 

**List of publications**: 

* {% include reference.md key='dams_ishmm2019' %}
* {% include reference.md key='dams_wrm2018' %}

## Master's thesis: stochastic and robust programming

Formal optimisation can take into account the uncertainty in two main ways: either stochastic or robust programming. Both paradigms have their own strengths, based on quite different theoretical notions: stochastic optimisation considers the uncertain parameters are described by their probability density functoin, while robust optimisation regards them as belonging to an uncertainty set.

Those two approaches are quite different, but have rarely seen a direct comparison, be it for their actual performance when solving the resulting optimisation problems, but also for the robustness of their solution against unforeseen uncertainty.

My master's thesis was exactly about this comparison. [It was presented at the ORBEL30 conference](http://hdl.handle.net/2268/197081). [The full text is also available online](http://hdl.handle.net/2268/197090).

**List of publications**:

* {% include reference.md key='tfe_pgmo2018' %}
* {% include reference.md key='tfe_orbel2016' %}
* {% include reference.md key='tfe' %}

{% include card_end.html %}
{% include card_begin.html title="Books" id="books" %}

### Technical books

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

{% include card_end.html %}
