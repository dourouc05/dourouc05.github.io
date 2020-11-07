---
title: Discrete Optimisation (MATH0462), 2015-2016
permalink: teaching-2015-2016-discrete-optimisation
layout: page
---

# Discrete Optimisation (MATH0462), 2015-2016

## General information

Professor: [Q. Louveaux](http://www.montefiore.ulg.ac.be/~louveaux).

[Course page](http://progcours.ulg.ac.be/cocoon/cours/MATH0462-1.html).

[Lab accounts (MS800)](http://www.student.montefiore.ulg.ac.be/accounts.php).

The practical part of this course is two-fold: first, exercise sessions to help you understand the theory; second, projects, to give you some experience about the real-world practice of optimisation. Indeed, these projects focus on modelling and implementing models, which are the most important skills to get from this course; only the first one is evaluated during the exam.

## Publicly available slides for the theoretical course

[Introduction](/files/math0462-2015/OD_Cours1_2015.pdf)

## Resit 

For the resit, the written exam has the same modalities as the first session. It will take place on September 2nd, 8:30. For those who did not present the projects, only the second one must be handed in, with only one report for the two parts. An oral presentation is also required; contact me to organise the schedule. The project must be sent by email for September 5th at the latest; oral presentations will not happen after this date.

## Exercise sessions

<table class="table table-bordered">
    <thead>
        <tr>
            <th>#</th>
            <th>Date</th>
            <th>Agenda</th>
            <th>Statement</th>
            <th>Other files</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>1</td>
            <td>18th September 2015</td>
            <td>MILP modelling, JuMP installation and first examples</td>
            <td markdown="span">[PDF](/files/math0462-2015/R1_modelling.pdf)</td>
            <td markdown="span">[Data files (Julia)](/files/math0462-2015/R1_data.tar), [spoons example](/files/math0462-2015/R1_spoons_model.jl)</td>
        </tr>
        <tr>
            <td>2</td>
            <td>25th September 2015</td>
            <td>Branch-and-bound, presentation of the first project, modelling</td>
            <td markdown="span">[PDF](/files/math0462-2015/R2_bnb_modelling.pdf)</td>
            <td markdown="span">[Data file for the teams](/files/math0462-2015/R2_teams.jl)</td>
        </tr>
        <tr>
            <td>3</td>
            <td>2nd October 2015</td>
            <td>Q&amp;A about the project, branch-and-bound implementation</td>
            <td markdown="span">[PDF](/files/math0462-2015/R3_bnb.pdf)</td>
            <td markdown="span">[Branch-and-bound skeleton](/files/math0462-2015/R3_bnb_skeleton.jl) and [implementation](/files/math0462-2015/R3_bnb.jl)</td>
        </tr>
        <tr>
            <td>4</td>
            <td>9th October 2015</td>
            <td>Modelling, formulation comparison</td>
            <td markdown="span">[PDF](/files/math0462-2015/R4_comparison_modelling.pdf)</td>
            <td markdown="span"></td>
        </tr>
        <tr>
            <td></td>
            <td>11th October 2015</td>
            <td colspan="3"><span class="label label-danger">Danger</span> Deadline for the first project</td>
        </tr>
        <tr>
            <td>5</td>
            <td>16th October 2015</td>
            <td>Correction of the first project, formulation comparison</td>
            <td markdown="span">[PDF](/files/math0462-2015/R5_comparison.pdf)</td>
            <td></td>
        </tr>
        <tr>
            <td>6</td>
            <td>23rd October 2015</td>
            <td>Nothing</td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>7</td>
            <td>30th October 2015</td>
            <td>Cuts and valid inequalities</td>
            <td markdown="span">[PDF](/files/math0462-2015/R7_cuts.pdf)</td>
            <td></td>
        </tr>
        <tr>
            <td>8</td>
            <td>13th November 2015</td>
            <td>Cuts and valid inequalities</td>
            <td markdown="span">[PDF](/files/math0462-2015/R8_cuts.pdf)</td>
            <td markdown="span">[Prize-collecting travelling salesman problem implementation](/files/math0462-2015/R8_pctsp.jl) and [knapsack base problem](/files/math0462-2015/R8_knapsack.jl)</td>
        </tr>
        <tr>
            <td>9</td>
            <td>20th November 2015</td>
            <td>Dynamic programming</td>
            <td markdown="span">[PDF](/files/math0462-2015/R9_dp.pdf)</td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td>22nd November 2015</td>
            <td colspan="3"><span class="label label-danger">Danger</span> Deadline for the second project, first part</td>
        </tr>
        <tr>
            <td>10</td>
            <td>27th November 2015</td>
            <td>Project correction; flow algorithms</td>
            <td markdown="span">[PDF](/files/math0462-2015/R10_flows.pdf)</td>
            <td></td>
        </tr>
        <tr>
            <td>11</td>
            <td>4th December 2015</td>
            <td>Matching and assignment algorithms</td>
            <td markdown="span">[PDF](/files/math0462-2015/R11_matching.pdf)</td>
            <td></td>
        </tr>
        <tr>
            <td>12</td>
            <td>11th December 2015</td>
            <td>Constraint programming, project Q&amp;A</td>
            <td markdown="span">[PDF](/files/math0462-2015/R12_cp.pdf)</td>
            <td markdown="span">[ECLiPSe Windows x64](http://www.mirrorservice.org/sites/eclipseclp.org/Distribution/Current/6.1_216_x86_64_nt/ECLiPSe_6.1_216_x86_64_nt.exe), [ECLiPSe Linux x64](http://www.mirrorservice.org/sites/eclipseclp.org/Distribution/Current/6.1_216_x86_64_linux/eclipse_basic.tgz)<br/>
            [skeleton for the sudokus](/files/math0462-2015/R12_sudoku.ecl), [solution for the sudokus](/files/math0462-2015/R12_sudoku_solution.ecl), [solution for the magic squares](/files/math0462-2015/R12_magic_solution.ecl), [solution for the n queens](/files/math0462-2015/R12_queens_solution.ecl)</td>
        </tr>
        <tr>
            <td></td>
            <td>13th December 2015</td>
            <td colspan="3"><span class="label label-danger">Danger</span> Deadline for the second project, second part</td>
        </tr>
        <tr>
            <td></td>
            <td>18th December 2015</td>
            <td colspan="3">Project presentations</td>
        </tr>
    </tbody>
</table>

Those exercises come in large part from Sébastien Mathieu's work, and have been modified with his consent. 

## Projects

### Project 1: modelling

This first project is about lorry dispatching. Available files:

  - [the statement](/files/math0462-2015/P1_statement.pdf)
  - [the data structures for the input data and outputs, including a first data set](/files/math0462-2015/P1_data.jl)
  - [a stub defining the name of the functions to write](/files/math0462-2015/P1_stub.jl)
  - [the test file that will be used to load the data and call the functions to hand in (the only executable file)](/files/math0462-2015/P1_test.jl)

Updated: 30th September. Slightly clarified statement, modified data structures and stub to provide solution for the bonus; provided files are now compatible with both 32- and 64-bit Julia.

The project must be submitted on [the submission platform](http://submit.run.montefiore.ulg.ac.be/). Submissions will be accepted till 11th October, 2015, 23:59.

### Project 2: Car on the Hill

This second project is about carsharing. Available files:

  - [the statement](/files/math0462-2015/P2_statement.pdf)
  - an example of input: the graph ([nodes](/files/math0462-2015/P2_graph_nodes.csv) and [edges](/files/math0462-2015/P2_graph_edges.csv)) and [some users](/files/math0462-2015/P2_users.csv)
  - [more test inputs](/files/math0462-2015/testcases.7z)

The project must be submitted on the submission platform. Submissions will be accepted till 22nd November, 2015, 23:59 for the first part, and 13th December, 2015, 23:59 for the second part.

Your program should take as input three file names: the nodes, the edges, then the users, using the previous format. For users, drivers and passengers are mixed in the same file, with a bit to distinguish them. The missing information for passengers is filled with `-1`s. To read the files with Julia, you can use the `readdlm` function:

```julia
readdlm("….csv", ',')
```

You should test your program on larger graphs with more users than the provided test case. If you write code to generate those files (for example, by accessing OpenStreetMap or Google Maps), you should include it as well as the generated instances on which you tested your code.

### General comments

When asking for help with your code: give a meaningful snippet, allowing easy testing; precise whether the tests were carried out on the MS800 machines or your own (with platform and bitness, if relevant).

Don't assume knowledge about your model, only use names defined in the given files: I don't have access to your code before you submit it, I can only guess what is the meaning of all those nice symbols.

Interesting link: [How NOT to go about a programming assignment](http://di002.edv.uniovi.es/~cernuda/noprog_ENG.html).

Modelling tricks: [Applications of optimization with Xpress-MP](http://www.maths.ed.ac.uk/hall/Xpress/FICO_Docs/Xpress-booka4.pdf), [Formulating Integer Linear Programs: A Rogues’ Gallery](http://faculty.nps.edu/dell/docs/Formulettes060425.pdf).

Debugging a MIP model: [Detecting the Sources of Model Infeasibility using Gurobi](https://nathanbrixius.wordpress.com/2012/09/28/detecting-the-sources-of-model-infeasibility-using-gurobi/).

## Julia

### How to install Julia and JuMP? 

[Julia](http://julialang.org/) is a technical computing programming language, completely free and open-source. Its syntax should be very familiar to MATLAB users. Its environment includes a strong mathematical optimisation community, [JuliaOpt](http://www.juliaopt.org/).

**Hint:** a working version of Julia is available on the MS800 machines. It is not necessary to follow this procedure on those computers (including Gurobi with a network license).

First, download Julia 0.3 for your platform [from their webpage](http://julialang.org/downloads/oldreleases.html) and [install it](https://julialang.org/downloads/platform.html):

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

For an introduction to the language, see [the documentation](http://docs.julialang.org/en/release-0.3/#manual) or [Andrew Collier's Month of Julia](http://www.exegetic.biz/blog/tag/monthofjulia/). For an introduction to JuMP, [see the documentation](http://jump.readthedocs.org/en/latest/). More detailed examples are available as [notebooks (they are not necessarily MILPs!)](http://www.juliaopt.org/notebooks/index.html).

Julia also has a more comfortable way of working than a text editor and a console: [Juno](http://junolab.org/) is a recent IDE for Julia (there is no need to reinstall the packages within Juno).

### How to use JuMP?

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

Create variables using the `@defVar` macro (it will automatically create Julia variables):

```
julia> @defVar(m, x) # Variable x, continuous, no bounds
julia> @defVar(m, y[0:1] >= 10, Int) # Variables y[0] to y[1], integer, greater or equal to 10
julia> @defVar(m, z[0:1, 0:1], Bin) # Variables z[0][0], z[0][1], z[1][0], and z[1][1], booleans
```

Add some constraints with the `@addConstraint` macro:

```
julia> @addConstraint(m, sum(y) >= x)
```

Add an objective using the `@setObjective` macro:

```
julia> @setObjective(m, Max, sum(z))
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

Get the values for the variables with the `getValue()` function:

```
julia> getValue(x)
20.0

julia> getValue(y)
y: 1 dimensions:
[0] = 10.0
[1] = 10.0

julia> getValue(z)
z: 2 dimensions:
[0,:]
  [0,0] = 1.0
  [0,1] = 1.0
[1,:]
  [1,0] = 1.0
  [1,1] = 1.0
```

### Some tricks

In the REPL, type `;` to have access to a standard UNIX shell; type `?` for the help mode (equivalent to using the `help()` function). 
