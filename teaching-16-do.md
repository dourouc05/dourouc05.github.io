---
title: Discrete Optimisation (MATH0462), 2016-2017
permalink: teaching-2016-2017-discrete-optimisation
---

# Discrete Optimisation (MATH0462), 2016-2017

## General information

Professor: [Q. Louveaux](http://www.montefiore.ulg.ac.be/~louveaux).

[Course page](http://progcours.ulg.ac.be/cocoon/cours/MATH0462-1.html).

The practical part of this course is two-fold:

  - exercise sessions to help you understand the theory;
  - projects to give you some experience about the real-world practice of optimisation.

Indeed, these projects focus on modelling and implementing models, which are the most important skills to get from this course; only the first one is evaluated during the exam.

### How to use Julia on the university machines? 

  - Thalès compute server address: `thales02.montefiore.ulg.ac.be`. Credentials (login starting with `od_group`) will be provided for the second project. To get access to the required tools, first type this command: `GUROBI_HOME=/usr/ julia -E "Pkg.add(\"JuMP\"); Pkg.add(\"CPLEX\"); Pkg.add(\"Gurobi\")"`. Julia is then available as `julia`.
  - [Lab accounts (MS800)](http://www.student.montefiore.ulg.ac.be/accounts.php). An old version of Julia is installed on these computers (0.3), along with the necessary tools for this course (albeit outdated).

### What online courses do you recommend? 

  - In English: Coursera's [Discrete Optimization](https://www.coursera.org/learn/discrete-optimization) and [Advanced Modeling for Discrete Optimization](https://www.coursera.org/learn/advancedmodeling)
  - In French: [EnsROtice](http://www.unit.eu/cours/EnsROtice/module_me/co/Mon_Module_1.html)

You may also have a look at [a French portal on operational research](http://perso.ensta-paristech.fr/~diam/ro/), with many interesting links. It also includes [a Julia section](http://perso.ensta-paristech.fr/~diam/ro/?id=main#lang_julia). 

## Publicly available slides for the theoretical course

  - [Introduction](/files/math0462-2016/OD_Cours1_2016.pdf)
  - [Formulations](/files/math0462-2016/OD_introFormulationsH.pdf)
  - [Branch-and-bound algorithm](/files/math0462-2015/OD_BranchAndBound.pdf)

## Exercise book

An exercise book is being prepared for this course. The current version is [already available](/files/math0462-2016/exercise_book.pdf), and contains the exercises done during the exercise sessions and some supplementary ones. Not all exercises are part of the course syllabus; please refer to the contents of the exercise sessions.

[Download current version (last edition: June 29 2017 12:41:32).](/files/math0462-2016/exercise_book.pdf)

## Exercise sessions

<table>
        <thead>
            <tr>
                <th>#</th>
                <th>Date</th>
                <th>Agenda</th>
                <th>Downloads</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>1</td>
                <td>23 September 2016</td>
                <td>A Gentle Introduction to Julia for Optimisation. </td>
                <td>
                    <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R1_julia.pdf">Slides</a><br/>
                    <span class="small"><a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R1_julia_full.pdf">More complete slides</a>. These also contain conic constraints and the Convex.jl modelling layer, which may be useful for the second project.</span>
                </td>
            </tr>
            <tr>
                <td>2</td>
                <td>30 September 2016</td>
                <td>MILP modelling</td>
                <td>
                    <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R2_modelling.pdf">Statement</a><br/>
                    <span class="small"><a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R2_julia.zip">Julia files</a>: </span>
                    <ul class="small">
                        <li><a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R2_hospital.jl">Data for exercise 1</a>. <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R2_hospital_model.jl">Solution</a>.</li>
                        <li><a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R2_nurses.jl">Data for exercise 2</a>. <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R2_nurses_model_part1.jl">Solution to part 1</a>. <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R2_nurses_model_part2.jl">Solution to part 2</a>.</li>
                        <li><a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R2_groups.jl">Data for exercise 3</a>. <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R2_groups_model.jl">Solution</a>.</li>
                        <li><a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R2_beams.jl">Data for exercise 4</a>. <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R2_beams_model_part1.jl">Solution to part 1</a>. <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R2_beams_model_part2.jl">Solution to part 2</a>.</li>
                        <li><a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R2_meat.jl">Data for exercise 5</a>. <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R2_meat_model.jl">Solution</a>.</li>
                                                    </ul>
                </td>
            </tr>
            <tr>
                <td>3</td>
                <td>7 October 2016</td>
                <td>Advanced MILP modelling, presentation of the first project</td>
                <td>
                    <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R3_modelling.pdf">Statement</a><br/>
                    <span class="small"><a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R3_julia.zip">Julia files</a>: </span>
                    <ul class="small">
                        <li><a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R3_attic.jl">Data for exercise 10</a>. <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R3_attic_data.jl">Data generator</a>. <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R3_attic_model.jl">Solution</a>.</li>
                    </ul>
                    <span class="small"><a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R3_figures.zip">Figures</a>: </span>
                    <ul class="small">
                        <li><a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R3_not.pdf">Illustration of the NOT constraint (exercise 1)</a>: y = NOT x. </li>
                        <li><a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R3_or.pdf">Illustration of the OR constraints (exercise 2)</a>, <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R3_or.cdf">interactive 3D plot</a> <sup><a href="#cdf">CDF?</a></sup>: z = x OR y. </li>
                        <li><a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R3_and.pdf">Illustration of the AND constraints (exercise 3)</a>, <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R3_and.cdf">interactive 3D plot</a> <sup><a href="#cdf">CDF?</a></sup>: z = x AND y. </li>
                        <li><a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R3_implication.pdf">Illustration of the implication (exercise 4)</a>: x IMPLIES y. </li>
                        <li><a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R3_if-then.pdf">Illustration of the if-then constraints (exercise 5) for M = 100 (tightest choice)</a>, <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R3_if-then-50.pdf">M = 50 (too small: some points are not feasible while they should)</a>, <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R3_if-then-200.pdf">M = 200 (too large: the formulation is not as tight as possible)</a>: IF y = 1 THEN x = 100. </li>
                        <li><a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R3_binary-activation.pdf">Illustration of the binary activation (exercise 6)</a>: IF y = 1 THEN x >= 100 ELSE x = 0. </li>
                        <li><a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R3_semicontinuous.pdf">Illustration of a semicontinuous variable (exercise 7)</a>: x IN 0 OR [50, 100]. </li>
                        <li><a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R3_if-greater-than.pdf">Illustration of a threshold detection (exercise 8)</a>: y = 1 IF x >= 50 ELSE 0. </li>
                    </ul>
                    <span class="small">See also: <a href="https://yalmip.github.io/tutorial/bigmandconvexhulls/">big M and convex hull</a>. </span>
                </td>
            </tr>
            <tr>
                <td>4</td>
                <td>14 October 2016</td>
                <td>Branch-and-bound algorithm</td>
                <td>
                    <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R4_bnb.pdf">Statement</a><br/>
                    <span class="small"><a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R4_figures.zip">Figures</a>: </span>
                    <ul class="small">
                        <li>Graphical B&amp;B (exercise 1): <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R4_BB_graphical_0.png"/>feasible region</a>, <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R4_BB_graphical_1.png"/>first branching</a>, <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R4_BB_graphical_2.png"/>second branching</a>, <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R4_BB_graphical_3.png"/>third branching</a>, <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R4_BB_graphical_4.png"/>fourth branching</a>, <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R4_BB_graphical_tree.png"/>B&amp;B tree</a>. </li>
                        <li><a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R4_BB_tree.pdf"/>B&amp;B tree exploration node by node (exercise 2)</a>. </li>
                        <li>B&amp;B inefficiency (exercise 3): <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R4_BB_inefficient_0.png">step 0 (feasible area)</a>, <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R4_BB_inefficient_1.png">step 1 (simplex solution)</a>, <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R4_BB_inefficient_2.png">step 2 (after branching)</a>, <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R4_BB_inefficient_3.png">step 3 (simplex solution)</a>, <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R4_BB_inefficient_4.png">step 4 (after branching)</a>, <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R4_BB_inefficient_5.png">step 5 (simplex solution)</a>, <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R4_BB_inefficient_6.png">step 6 (after branching)</a>, <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R4_BB_inefficient_7.png">step 7 (simplex solution)</a>, <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R4_BB_inefficient_8.png">step 8 (after branching)</a>, <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R4_BB_inefficient_9.png">step 9 (simplex solution)</a>. </li>
                    </ul>
                    <span class="small">See also: </span>
                    <ul class="small">
                        <li><a href="http://www.gurobi.com/resources/getting-started/mip-basics">basic principles behind a modern MIP solver</a> (includes branch and bound, but also more advanced topics covered in the following lectures)</li>
                    </ul>
                </td>
            </tr>
            <tr>
                <td>5</td>
                <td>21 October 2016</td>
                <td>Formulation comparison</td>
                <td>
                    <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R5_comparison.pdf">Statement</a><br/>
                    <span class="small">Julia file: </span>
                    <ul class="small">
                        <li><a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R5_fl.jl">Data and solutions for exercise 1</a>.</li>
                    </ul>
                    <span class="small">See also: </span>
                    <ul class="small">
                        <li>
                            About the TSP: 
                            <ul>
                                <li><a href="https://spokutta.wordpress.com/2012/01/05/1311/">no polynomial formulation exists</a></li>
                                <li><a href="http://www.cs.uleth.ca/~benkoczi/OR/read/tsp-dantzig-fulkerson-johnson-54.pdf">original formulation (subtour elimination) due to Dantzig, Fulkerson, Johnson</a></li>
                                <li><a href="http://eprints.lse.ac.uk/9349/1/WP67_A_Survey_of_DifferentFormulationsoftheTSPJuly20051LSEROVERSION.pdf">a survey of various models</a></li>
                            </ul>
                        </li>
                    </ul>
                </td>
            </tr>
            <tr>
                <td>6</td>
                <td>28 October 2016</td>
                <td>Advanced solver usage, Q&amp;A for the project and the exercise sessions</td>
                <td>
                    <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R6_solver.pdf">Slides</a><br/>
                    <span class="small">Julia files: </span>
                    <ul class="small">
                        <li><a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R6_iis.jl">small infeasible problem</a> (<a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R6_iis.lp">corresponding LP file</a>, <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R6_iis.ilp">IIS in LP format</a>),</li>
                        <li><a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R6_subtour.jl">solving the TSP with subtour elimination constraints added lazily</a>.</li>
                    </ul>
                    <span class="small">See also: </span>
                    <ul class="small">
                        <li>
                            About MIP start: 
                            <ul>
                                <li><a href="https://www.gurobi.com/documentation/7.0/examples/mip_starts.html">Gurobi example (C and Python)</a></li>
                                <li><a href="http://www.ibm.com/support/knowledgecenter/SSSA5P_12.6.3/ilog.odms.cplex.help/CPLEX/UsrMan/topics/discr_optim/mip/para/49_mipStarts.html">CPLEX documentation</a></li>
                            </ul>
                        </li>
                        <li>
                            About infeasibility detection: 
                            <ul>
                                <li><a href="http://www.sce.carleton.ca/faculty/chinneck/docs/GuieuChinneck.pdf">algorithms to analyse the cause of infeasibility</a></li>
                                <li><a href="https://github.com/JuliaOpt/JuMP.jl/blob/master/examples/iis.jl">complete example of IIS retrival within JuMP using Gurobi</a></li>
                            </ul>
                        </li>
                        <li>
                            About lazy constraints and cutting planes: 
                            <ul>
                                <li><a href="http://orinanobworld.blogspot.be/2012/08/user-cuts-versus-lazy-constraints.html">cutting planes vs lazy constraints</a></li>
                                <li><a href="http://iaindunning.com/blog/mip-callback.html">worked example of lazy constraints</a> (old version of JuMP; <a href="#julia-syntax-differences">syntax translation guide</a>)</li>
                                <li><a href="http://sbebo.github.io/blog/blog/2015/06/10/julia/">worked example of user cut</a> (old version of JuMP; <a href="#julia-syntax-differences">syntax translation guide</a>)</li>
                            </ul>
                        </li>
                    </ul>
                </td>
            </tr>
            <tr>
                <td rowspan="2">7</td>
                <td>4 November 2016</td>
                <td>Constraint programming</td>
                <td>
                    <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R7_cp.pdf">Statement</a><br/>
                    <span class="small">
                        <a href="http://www.eclipseclp.org/">ECLiPSe</a> is a constraint-programming modelling environment based on Prolog. Download it: 
                    </span>
                    <ul class="small">
                        <li><a href="http://eclipseclp.org/Distribution/6.1_222/x86_64_nt/ECLiPSe_6.1_222_x86_64_nt.exe">ECLiPSe Windows x64</a>,</li>
                        <li><a href="http://eclipseclp.org/Distribution/6.1_222/x86_64_linux/eclipse_basic.tgz">ECLiPSe Linux and macOS x64</a>.</li>
                    </ul>
                    <span class="small">ECLiPSe solutions: </span>
                    <ul class="small">
                        <li>sudoku (exercise 1): <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R7_sudoku.ecl">skeleton</a>, <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R7_sudoku_solution.ecl">solution</a>,</li>
                        <li>magic squares (exercise 2): <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R7_magic_solution.ecl">solution</a>,</li>
                        <li>N queens (exercise 3): <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R7_queens_solution.ecl">solution</a>.</li>
                    </ul>
                    <span class="small"><a href="http://sofdem.github.io/gccat/gccat/sec5.html">A catalogue of existing global constraint with propagator algorithms and existing implementations</a></span>
                </td>
            </tr>
            <tr>
                <td>4 November 2016</td>
                <td colspan="2"><span class="label label-danger">Danger</span> Deadline for the first project</td>
            </tr>
            <tr>
                <td></td>
                <td>11 November 2016</td>
                <td colspan="2"><span class="label label-info">Info</span> Day off.</td>
            </tr>
            <tr>
                <td>8</td>
                <td>18 November 2016</td>
                <td>Correction of the first project, cuts and valid inequalities</td>
                <td>
                    <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R8_cuts.pdf">Statement</a><br/>
                    <span class="small"><a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R8_figures.zip">Figures</a>: </span>
                    <ul class="small">
                        <li><a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R8_1_1.png"/>Exercise 1.1</a>. </li>
                        <li><a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R8_1_2.png"/>Exercise 1.2</a>. </li>
                        <li><a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R8_1_3.png"/>Exercise 1.3</a>. </li>
                    </ul>
                </td>
            </tr>
            <tr>
                <td rowspan="2">9</td>
                <td>25 November 2016</td>
                <td>Cuts and valid inequalities</td>
                <td>
                    <span class="label label-info">Info</span> No theoretical course on this day: the exercise session begins at 14:00.<br/>
                    <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R9_cuts.pdf">Statement</a><br/>
                    <span class="small">Julia files: </span>
                    <ul class="small">
                        <li>PCTSP: <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R9_pctsp.jl">skeleton</a>, <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R9_pctsp_solution.jl">solution</a>.</li>
                    </ul>
                </td>
            </tr>
            <tr>
                <td>25 November 2016</td>
                <td colspan="2"><span class="label label-danger">Danger</span> Deadline for the first part of the second project</td>
            </tr>
            <tr>
                <td>10</td>
                <td>2 December 2016</td>
                <td>Correction of the second project, modelling with flows</td>
                <td>
                    <span class="label label-info">Info</span> The course will exceptionnally take place in the R75 room. <br/>
                    <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R10_flows.pdf">Statement</a>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>9 December 2016</td>
                <td colspan="2"><span class="label label-info">Info</span> No exercise session. </td>
            </tr>
            <tr>
                <td rowspan="2">11</td>
                <td>16 December 2016</td>
                <td>Solving flow problems</td>
                <td>
                    <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/math0462-2016/R11_flows.pdf">Statement</a><br/>
                    <span class="small">See also real implementations of these algorithms: </span>
                    <ul class="small">
                        <li><a href="http://juliagraphs.github.io/LightGraphs.jl/latest/flowcut/">LightGraphs.jl, in Julia</a></li>
                        <li><a href="https://networkx.readthedocs.io/en/stable/reference/algorithms.flow.html">NetworkX, in Python</a></li>
                        <li><a href="http://www.boost.org/doc/libs/1_62_0/libs/graph/doc/graph_theory_review.html#sec:network-flow-algorithms">Boost Graph Library, in C++</a></li>
                    </ul>
                </td>
            </tr>
            <tr>
                <td>16 December 2016</td>
                <td colspan="2"><span class="label label-danger">Danger</span> Deadline for the second part of the second project</td>
            </tr>
            <tr>
                <td></td>
                <td>23 December 2016</td>
                <td colspan="2"><span class="label label-danger">Danger</span> Project presentations</td>
            </tr>
        </tbody>
    </table>

Those exercises come in large part from Sébastien Mathieu's work, and have been modified with his consent. 

### How to open CDF files? 

You may use Mathematica ([the university offers a license for students](http://www.ulg.ac.be/cms/c_6690851/fr/mathematica-instructions-pour-les-etudiants)) or the [CDF Player](https://www.wolfram.com/cdf-player/). 

## Projects

### Project 1: modelling within games

This first project is about the video game Anno 1404. Available files:

  - [the statement](/files/math0462-2016/P1_statement.pdf),
  - [the code skeleton](/files/math0462-2016/P1_skeleton.jl),
  - [the data file](/files/math0462-2016/P1_data.jl).

The project must be submitted on the [submission platform](http://submit.run.montefiore.ulg.ac.be/). The platform is not yet updated for this year. Submissions will be accepted till 4 November, 2016, 23:59:59. 

[An implementation of a solution is available](/files/math0462-2016/P1_solution.jl). 

### Project 2: paper scheduling

This second project is about scheduling in the paper industry. Available files:

  - [the statement](/files/math0462-2016/P2_statement.pdf),
  - [a first (very simple) instance #0](/files/math0462-2016/P2_instance_0.zip),
  - [the set of instances](/files/math0462-2016/P2_instances.zip) (from the easiest one #0 to the hardest one #7),
  - [a code skeleton that implements one possible public interface for your program](/files/math0462-2016/P2_skeleton.jl).

### General comments

When asking for help with your code: give a meaningful snippet, allowing easy testing; precise whether the tests were carried out on the MS800 machines or your own (with platform and bitness, if relevant).

Don't assume knowledge about your model, only use names defined in the given files: I don't have access to your code before you submit it, I can only guess what is the meaning of all those nice symbols.

Interesting link: [How NOT to go about a programming assignment](http://di002.edv.uniovi.es/~cernuda/noprog_ENG.html).

Modelling tricks:

  - [Express boolean logic operations in zero-one integer linear programming (ILP)](http://cs.stackexchange.com/a/12118)
  - [Formulating Integer Linear Programs: A Rogues’ Gallery](http://faculty.nps.edu/dell/docs/Formulettes060425.pdf)
  - [Applications of optimization with Xpress-MP](http://www.maths.ed.ac.uk/hall/Xpress/FICO_Docs/Xpress-booka4.pdf)
  - [MOSEK Modeling Cookbook](http://docs.mosek.com/MOSEKModelingCookbook-letter.pdf) (also in HTML: [integer programming](https://docs.mosek.com/modeling-cookbook/mio.html), [linear programming](https://docs.mosek.com/modeling-cookbook/linear.html))

Debugging a MIP model: [Detecting the Sources of Model Infeasibility using Gurobi](https://nathanbrixius.wordpress.com/2012/09/28/detecting-the-sources-of-model-infeasibility-using-gurobi/).

## Julia

### Julia Step by Step

#### How to install Julia and JuMP?

[Julia](http://julialang.org/) is a technical computing programming language, completely free and open-source. Its syntax should be very familiar to MATLAB users. Its environment includes a strong mathematical optimisation community, [JuliaOpt](http://www.juliaopt.org/).

**Hint:** a working version of Julia is available on the MS800 machines, albeit far from recent. It is not necessary to follow this procedure on those computers (including Gurobi with a network license). This version of Julia should be sufficient for most of your work (except the new JuMP syntax or lazy constraints). 

First, download Julia 0.4 for your platform [from their webpage](http://julialang.org/downloads/oldreleases.html) and [install it](https://julialang.org/downloads/platform.html):

  - For Windows: download the 64-bit package, follow the wizard steps; Julia will be accessible from the Start menu/screen.
  - For OS X: download the DMG image, mount it, copy the application to your Applications folder.
  - For Linux: select the right package type.

Then, install the optimisation packages: [JuMP](https://github.com/JuliaOpt/JuMP.jl) as a modelling layer, [Cbc](https://projects.coin-or.org/Cbc) as a free open-source solver. From the Julia prompt: 

```julia
julia> Pkg.update()
julia> Pkg.add("JuMP")
julia> Pkg.add("Cbc")
```

As a final step, you might be interested in installing a much faster (even though closed-source) solver, such as [Gurobi](http://gurobi.com/). First, [download the solver (64-bit version) and ask for an academic user license](http://www.gurobi.com/academia/for-universities) (you must register using your student email address and activate the solver from a university network; a license is only valid for one physical computer). Then, install the Julia wrapper from a Julia shell:

```
julia> Pkg.add("Gurobi")
```

For an introduction to the language, see [the documentation](http://docs.julialang.org/en/release-0.4/#manual) or [Andrew Collier's Month of Julia](http://www.exegetic.biz/blog/tag/monthofjulia/). For an introduction to JuMP, [see the documentation](http://jump.readthedocs.org/en/latest/). More detailed examples are available as [notebooks (they are not necessarily MILPs!)](http://www.juliaopt.org/notebooks/index.html).

Julia also has a more comfortable way of working than a text editor and a console: [Juno](http://junolab.org/) is a recent IDE for Julia (there is no need to reinstall the packages within Juno), there is also [an experimental Eclipse extension for Julia](https://github.com/JuliaComputing/JuliaDT). 

#### How to use JuMP?

The first step is to import the required modules, at least JuMP (and a solver if autodetection does not work):

```
julia> using JuMP
julia> using Cbc # If installed and autodetection does not work
julia> using Gurobi # If installed and autodetection does not work
```

Then create a model (and associate the solver if needed):

```
julia> m = Model() # No solver: only use autodetected one
julia> m = Model(solver=CbcSolver()) # Use Cbc
julia> m = Model(solver=GurobiSolver()) # Use Gurobi
```

Create variables using the `@variable` macro (it will automatically create Julia variables):

```
julia> @variable(m, x) # Variable x, continuous, no bounds
julia> @variable(m, y[0:1] >= 10, Int) # Variables y[0] to y[1], integer, greater or equal to 10
julia> @variable(m, z[0:1, 0:1], Bin) # Variables z[0][0], z[0][1], z[1][0], and z[1][1], booleans
```

Add some constraints with the `@constraint` macro:

```
julia> @constraint(m, sum(y) >= x)
```

Add an objective using the `@objective` macro:

```
julia> @objective(m, Max, sum(z))
```

Print the model with the `print()` function:

```
julia> print(m)
Max z[0,0] + z[1,0] + z[0,1] + z[1,1]
Subject to
 y[0] + y[1] - x ≥ 0
 y[i] ≥ 10, integer, for all i in {0,1}
 z[i,j] in {0,1} for all i in {0,1}, j in {0,1}
 x free
```

Solve the model with the `solve()` function:

```
julia> solve(m)
```

Get the values for the variables with the `getvalue()` function:

```
julia> getvalue(x)
20.0

julia> getvalue(y)
y: 1 dimensions:
[0] = 10.0
[1] = 10.0

julia> getvalue(z)
z: 2 dimensions:
[0,:]
  [0,0] = 1.0
  [0,1] = 1.0
[1,:]
  [1,0] = 1.0
  [1,1] = 1.0
```

### What are the differences in syntax between JuMP 0.12- and 0.13+?

Between the versions 0.12 and 0.13, JuMP changed its syntax. Using the old syntax still works with the new versions, but emit warnings; however, the new syntax does not work with the older versions. The difference is important, as an old version of JuMP is installed on the MS800 machines: only the old syntax works there. 

<table>
    <thead>
        <tr>
            <th>Meaning</th>
            <th>JuMP 0.12-</th>
            <th>JuMP 0.13+</th>
        <tr>
    </thead>
    <tbody>
        <tr>
            <td>Defining a variable</td>
            <td><code>@defVar(model, variable, class)</code></td>
            <td><code>@variable(model, variable, class)</code></td>
        <tr>
        <tr>
            <td>Defining a constraint</td>
            <td><code>@addConstraint(model, constraint)</code></td>
            <td><code>@constraint(model, constraint)</code></td>
        <tr>
        <tr>
            <td>Defining the objective function</td>
            <td><code>@setObjective(model, sense, expression)</code></td>
            <td><code>@objective(model, sense, expression)</code></td>
        <tr>
        <tr>
            <td>Getting the value of a variable after optimisation</td>
            <td><code>getValue(variable)</code></td>
            <td><code>getvalue(variable)</code></td>
        <tr>
        <tr>
            <td>Getting the objective value after optimisation</td>
            <td><code>getObjectiveValue(model)</code></td>
            <td><code>getobjectivevalue(model)</code></td>
        <tr>
    </tbody>
</table>

### Some tricks

In the REPL, type `;` to have access to a standard UNIX shell; type `?` for the help mode (equivalent to using the `help()` function). 
