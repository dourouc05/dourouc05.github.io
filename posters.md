---
title: Posters
permalink: posters
---

# Posters {#posters}

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
