---
title: Talks
permalink: talks
layout: page
---

{% include card_begin.html title="Talks" id="talks" %}

## OR-Tools' Vehicle Routing Solver: a Generic Constraint-Programming Solver with Heuristic Search for Routing Problems (23 February 2023, ROADEF)

OR-Tools is the general-purpose optimisation toolbox open-sourced by Google in 2015, being in development since 2008. This toolkit provides a uniform interface to several solvers, both first- and third-party. In particular, it offers a high-level interface for vehicle-routing problems (VRPs). OR-Tools contains several solvers, in particular two CP solvers, CP* (since the first open-source release) and CP-SAT (gold-medal winner at several MiniZinc competitions, developed since 2009), but also two linear solvers: the simplex-based Glop (since 2014), and PDLP, a first-order large-scale linear solver. OR-Tools is being actively developed, with approximately quarterly releases. Outside Google, the solver suite is easily accessible via Google Cloud, either for solving VRPs or mixed-integer linear programs, although the latter API is not yet in general access.

<!-- TODO: {% include reference_box.md key="ral_wiml2019" %} -->

## Improving Stream-Based Active Learning with Reinforcement Learning (8 December 2019, WiML workshop)

One of the main challenges associated with supervised learning under dynamic scenarios is that of periodically getting access to labels of fresh, previously unseen  samples. Labeling ne  data is usually an expensive and cumbersome process, while not all data points are equally valuable. Active learning aims at labeling only the  most informative samples to reduce cost. In this paradigm, a learner can choose from which new samples it wants to learn, and can obtain the ground truth by asking an oracle for the corresponding labels. We introduce RAL – Reinforcedstream-based Active Learning –, a new active-learning approach, coupling stream-based active learning with reinforcement-learning concepts. In particular, we model active learning as a contextual-bandit problem, in which rewards are based on the usefulness of the system's querying behavior. Empirical evaluations on multiple datasets confirm that RAL outperforms the state of the art, both by improving learning accuracy andby reducing the number of requested labels. As an additional contribution, we release RAL as an open-source Python package to the machine-learning community.

{% include reference_box.md key="ral_wiml2019" %}

## Operation rules of the Vesdre reservoir revisited (24 July 2020, International Symposium on Hydrological Modelling of the Meuse basin)

{% include reference_box.md key="dams_ishmm2019" %}

## Comparing Oblivious and Robust Routing Approaches (20 November 2018, PGMO Days)

Network routing is an already well-studied problem: the routers in the network know which path a packet must follow in order to reach its destination. Traffic engineering attempts to tune the routing to meet some requirements, such as avoiding congestion or a reducing end-to-end delays. Several approaches have been devised to perform these adaptations, but only few of them deal with the uncertainty in some parameters. Mostly, the uncertainty lies in the demand, the total amount of traffic that goes through the network; however, links and nodes may also fail.
Robust routing approaches have been proposed to tackle this issue: indeed, they consider that traffic matrices are not know precisely but that they lie in an uncertainty space that can be analytically described.

Oblivious routing is the extreme case where the uncertainty space is the whole set of possible traffic matrices and the prescribed routing must be as close as p ossible to the optimum routing, whatever traffic matrix effectively occurs. It has been proved that oblivious routing achieves a polylogarithmic competitive ratio with respect to congestion.

Several variants of robust or oblivious routing approaches will be considered and compared on series of realistic instances, some of which are based on Orange network topologies. Future works include dealing with other sources of uncertainty (for instance, survivability to failures) within a common robustness framework. 

{% include reference_box.md key="tfe_pgmo2018" %}

## Retour d’expérience sur Julia pour la recherche et l’enseignement en recherche opérationnelle (21 February 2018, ROADEF)

Julia is a recent programming language with a dynamic community, especially in operational research and mathematical optimisation in particular. Albeit new, it already has many advantages over its competitors, both for research and teaching. This presentation offers some feedback on several years of using Julia.

In French. 

{% include reference_box.md key="julia_roadef2018" %}

## Voyage incertain : découvrir l’optimisation stochastique et robuste (5 February 2018, Orange Labs)

Stochastic and robust optimisation are the two main approaches to take into account the uncertainty within mathematical optimisation. This presentation highlights the main ideas about each paradigm, the algorithms that are used, and gives examples of their use, mostly in a networking context. 

In French. 

{% include reference_box.md key="tfe_orange2018" %}

## Optimising workforce and energy costs by exploiting production flexibility (20 July 2017, IFORS)

In a world where the electricity prices become more and more volatile, notably due to renewable energies, the industry is suffering from cost variations never seen before, especially when electro-intensive. Nevertheless, the plants can significantly reduce this impact: some electro-intensive factories could shift their production to time periods where the electricity is cheaper, resulting in large savings. At the same time, the grid operator can remunerate this consumption adaptation as a flexibility service.

Our research goal is to optimise the operations of a factory around this flexibility. We compute a production plan that adapts to price forecasts, but also flexibility levers that adjust this plan to react to unexpected price changes. We propose the unifying concept of reservoir to provide sufficiently good models for the plant's processes.

Nevertheless, this methodology implies to have frequent production plan changes, which directly impacts the workers, as they may be asked to follow barely predictable schedules. This has a significant detrimental effect on their quality of life. As a consequence, the human aspect of flexibility must also be considered: we seek for production plans that consider both workforce and energy costs, and we then assign workers to work shifts while ensuring their well-being. This HR orientation is the most innovative contribution of this research project.

{% include reference_box.md key="industore_ifors2017" %}

## Modelling the industrial flexibility from the electricity consumption and HR points of view (21 April 2017, COMEX)

Electro-intensive companies are very sensitive to electricity price variations. This is why flexibility is very important to them: they adapt their production to the price fluctuations, and can thus decrease their costs by a large amount. However, most studies of flexibility tend to ignore the human aspect of flexibility. Our approach reconciles both aspects: electricity costs and human resources management. 

{% include reference_box.md key="industore_comex2017" %}

## A Journey through Julia (17 November 2016, [Geeks anonymes](https://www.recherche.uliege.be/cms/c_9463913/fr/geeks-anonymes); 17 May 2017, [IEEE Student Branch Liège](https://ieee.ulg.ac.be/en/))

[Julia](http://www.julialang.org/) is a programming language that aims at being both dynamic and fast — and it does so. This small journey will take you from some guiding principles in Julia (those that make it fast), and then to the many packages the community created, so that you can make the most of it without spending hours in the documentation. 

{% include reference_box.md key="julia_ieee2017" %}

{% include reference_box.md key="julia_geeks2017" %}

{% include card_end.html %}
{% include card_begin.html title="Posters" id="posters" %}

## RAL - Reinforcement Active Learning for Network Traffic Monitoring and Analysis (11 August 2020, SIGCOMM)

Network-traffic data usually arrives in the form of a data stream. Online monitoring systems need to handle the incoming samples sequentially and quickly. These systems regularly need to get access to ground-truth data to understand the current state of the application they are monitoring, as well as to adapt the monitoring application itself. However, with in-the-wild network-monitoring scenarios, we often face the challenge of limited availability of such data. We introduce RAL, a novel stream-based, active-learning approach, which improves the ground-truth gathering process by dynamically selecting the most beneficial measurements, in particular for model-learning purposes. 

{% include reference_box.md key="ral_sigcomm2020" %}

## Oblivious Routing: Static Routing Prepared Against Network Traffic and Link Failures (25 June 2019, TMA)

Network routing considers the problem of finding one or multiple paths to transfer packets from their source to their destination, ideally making the best use of the available resources (for instance, by minimising the congestion in the network). Oblivious routing is a technique that generates static routing schemes that are independent of the traffic, but still have strong theoretical guarantees about its performance (for instance, measured by link congestion). This work presents a numerical study of oblivious routing, in both synthetic and realistic networks. It also contains a novel extension to link failures, to which the routing should be immunised. 

{% include reference_box.md key="routing_tma2019" %}

## Oblivious Routing: Worst-Case Routing is not Breaking the Internet's Legs (25 June 2018, TMA)

{% include reference_box.md key="routing_tma2018" %}

## Characterising industrial sites' flexibility with reservoir models (29 August 2017)

Electro-intensive industrial sites are very dependent on electricity prices to remain competitive. Nevertheless, they can often tune their processes in order to decrease their electricity consumption during the most critical periods, for example by using decision support systems based on mathematical modelling of their processes. Our goal is to estimate the flexibility potential of a complete site, not to tune each process very precisely.

To this end, we propose a generic paradigm to help conceiving such models: reservoirs are the basic building block, which allows for great expressiveness while being close to the physics. More specifically, we do not need very precise models for our purposes, but ones that can be efficiently included in optimisation models.

Our first results show that the obtained reservoir models can give sufficiently good approximations for metallurgical and other processes.

{% include reference_box.md key="industore_dsss2017" %}

{% include card_end.html %}
