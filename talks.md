---
title: Talks
permalink: talks
layout: page
---

{% include card_begin.html title="Talks" id="talks" %}

## RAL - Reinforcement Active Learning for Network Traffic Monitoring and Analysis (11 August 2020, SIGCOMM)

Network-traffic data usually arrives in the form of a data stream. Online monitoring systems need to handle the incoming samples sequentially and quickly. These systems regularly need to get access to ground-truth data to understand the current state of the application they are monitoring, as well as to adapt the monitoring application itself. However, with in-the-wild network-monitoring scenarios, we often face the challenge of limited availability of such data. We introduce RAL, a novel stream-based, active-learning approach, which improves the ground-truth gathering process by dynamically selecting the most beneficial measurements, in particular for model-learning purposes. 

{% include button.html url="https://hal.archives-ouvertes.fr/hal-02932839" title="See it on HAL" %}

## Feedback from a Julia user: Research and teaching activities in operational research (21 February 2018, ROADEF)

Julia is a recent programming language with a dynamic community, especially in operational research and mathematical optimisation in particular. Albeit new, it already has many advantages over its competitors, both for research and teaching. This presentation offers some feedback on several years of using Julia.

{% include button.html url="https://orbi.uliege.be/handle/2268/220267" title="See it on ORBi" %}

## Voyage incertain : découvrir l’optimisation stochastique et robuste (5 February 2018, Orange Labs)

Stochastic and robust optimisation are the two main approaches to take into account the uncertainty within mathematical optimisation. This presentation highlights the main ideas about each paradigm, the algorithms that are used, and gives examples of their use, mostly in a networking context. 

In French. 

{% include button.html url="https://orbi.uliege.be/handle/2268/219824" title="See it on ORBi" %}

## Optimising workforce and energy costs by exploiting production flexibility (20 July 2017, IFORS)

In a world where the electricity prices become more and more volatile, notably due to renewable energies, the industry is suffering from cost variations never seen before, especially when electro-intensive. Nevertheless, the plants can significantly reduce this impact: some electro-intensive factories could shift their production to time periods where the electricity is cheaper, resulting in large savings. At the same time, the grid operator can remunerate this consumption adaptation as a flexibility service.

Our research goal is to optimise the operations of a factory around this flexibility. We compute a production plan that adapts to price forecasts, but also flexibility levers that adjust this plan to react to unexpected price changes. We propose the unifying concept of reservoir to provide sufficiently good models for the plant's processes.

Nevertheless, this methodology implies to have frequent production plan changes, which directly impacts the workers, as they may be asked to follow barely predictable schedules. This has a significant detrimental effect on their quality of life. As a consequence, the human aspect of flexibility must also be considered: we seek for production plans that consider both workforce and energy costs, and we then assign workers to work shifts while ensuring their well-being. This HR orientation is the most innovative contribution of this research project.

{% include button.html url="http://orbi.ulg.ac.be/handle/2268/207330" title="See it on ORBi" %}

## Modelling the industrial flexibility from the electricity consumption and HR points of view (21 April 2017, COMEX)

Electro-intensive companies are very sensitive to electricity price variations. This is why flexibility is very important to them: they adapt their production to the price fluctuations, and can thus decrease their costs by a large amount. However, most studies of flexibility tend to ignore the human aspect of flexibility. Our approach reconciles both aspects: electricity costs and human resources management. 

{% include button.html url="http://orbi.ulg.ac.be/handle/2268/209469" title="See it on ORBi" %}

## A Journey through Julia (17 November 2016, [Geeks anonymes](https://www.recherche.uliege.be/cms/c_9463913/fr/geeks-anonymes); 17 May 2017, [IEEE Student Branch Liège](https://ieee.ulg.ac.be/en/))

[Julia](http://www.julialang.org/) is a programming language that aims at being both dynamic and fast — and it does so. This small journey will take you from some guiding principles in Julia (those that make it fast), and then to the many packages the community created, so that you can make the most of it without spending hours in the documentation. 

{% include button.html url="http://orbi.ulg.ac.be/handle/2268/203491" title="See it on ORBi" %}

{% include card_end.html %}
{% include card_begin.html title="Posters" id="posters" %}

## Characterising industrial sites' flexibility with reservoir models (29 August 2017)

Electro-intensive industrial sites are very dependent on electricity prices to remain competitive. Nevertheless, they can often tune their processes in order to decrease their electricity consumption during the most critical periods, for example by using decision support systems based on mathematical modelling of their processes. Our goal is to estimate the flexibility potential of a complete site, not to tune each process very precisely.

To this end, we propose a generic paradigm to help conceiving such models: reservoirs are the basic building block, which allows for great expressiveness while being close to the physics. More specifically, we do not need very precise models for our purposes, but ones that can be efficiently included in optimisation models.

Our first results show that the obtained reservoir models can give sufficiently good approximations for metallurgical and other processes.

{% include button.html url="http://orbi.ulg.ac.be/handle/2268/212703" title="See it on ORBi" %}

{% include card_end.html %}
