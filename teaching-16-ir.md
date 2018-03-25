---
title: Introduction to intelligent robotics (INFO0948), 2016-2017
permalink: teaching-2016-2017-intelligent-robotics
layout: page
---

# Introduction to intelligent robotics (INFO0948), 2016-2017

## General information

Lecturers: [B. Boigelot](http://www.montefiore.ulg.ac.be/~boigelot/), Ph. Latour, A. Lejeune, R. Marée, M. Van Droogenbroeck, [L. Wehenkel](http://montefiore.ulg.ac.be/~lwh/).

Teaching assistants: M. Baijot (I.83), Th. Cuvelier (I.76b).

Coordinator: [L. Wehenkel](http://montefiore.ulg.ac.be/~lwh/).

[Course specifications](http://progcours.ulg.ac.be/cocoon/cours/INFO0948-2.html).

## Schedule for the lessons

Several theoretical lessons make up this course. Their main purpose is to help realising the project, but they will also give an overview of the field. 

<table class="table table-bordered">
    <thead>
        <tr>
            <th>#</th>
            <th>Date</th>
            <th>Agenda</th>
            <th>Downloads</th>
            <th>Supplements</th>
        </tr>
    </thead>
    <tbody>
        <tr id="course-1">
            <td rowspan="2">1</td>
            <td rowspan="2">9 February 2017</td>
            <td>Introduction to the course (ch. 1), L. Wehenkel</td>
            <td markdown="span">[Slides (last updated 2017-02-09 15:30)](/files/info0948-2016/1-intro%202017.key.pdf)</td>
            <td class="small" markdown="span">[Reference book](http://petercorke.com/RVC1/chaps/1/)</td>
        </tr>
        <tr>
            <td>Positions and Orientations (ch. 2), A. Lejeune</td>
            <td markdown="span">[Slides](http://www.montefiore.ulg.ac.be/~tcuvelier/files/info0948-2016/2-pose.pdf)</td>
            <td class="small" markdown="span">
                [Reference book](http://petercorke.com/RVC1/chaps/2/)<br/>
                Peter Corke's Robotics Toolbox: [3D transforms](http://www.petercorke.com/RTB/r9/html/#3dtransforms), [quaternions](http://www.petercorke.com/RTB/r9/html/#quaternion), [homogeneous coordinates](http://www.petercorke.com/RTB/r9/html/#homogeneouspointsandlines)<br/>
                MATLAB Robotics Toolbox: [coordinate system transforms](http://fr.mathworks.com/help/robotics/coordinate-system-transformations.html)
            </td>
        </tr>
        <tr id="course-2">
            <td rowspan="2">2</td>
            <td rowspan="2">16 February 2017</td>
            <td>Time and Motion, Mobile Robots (ch. 3 and 4), B. Boigelot</td>
            <td markdown="span">
                [Slides](http://www.montefiore.ulg.ac.be/~tcuvelier/files/info0948-2016/time-motion.pdf)
            </td>
            <td class="small" markdown="span">
                Reference book for [Chapter 3](http://petercorke.com/RVC1/chaps/3/) and [Chapter 4](http://petercorke.com/RVC1/chaps/4/)<br/>
                Peter Corke's Robotics Toolbox: [trajectory interpolation](http://www.petercorke.com/RTB/r9/html/#trajectorygeneration)
            </td>
        </tr>
        <tr>
            <td>Simulator presentation, M. Baijot and Th. Cuvelier</td>
            <td colspan="2">
                <span markdown="span">[Slides](http://www.montefiore.ulg.ac.be/~tcuvelier/files/info0948-2016/02_Project_and_simulator.pdf). Videos: </span>
                <ul>
                  <li markdown="span">[V-REP interface description](https://www.youtube.com/watch?v=6Oq55YYLwQs); [back-up link](/files/info0948-2016/V-REP%20overall.mp4)</li>
                  <li markdown="span">[Starting a simulation](https://www.youtube.com/watch?v=SgUfqFveJwQ) (last updated 2014-03-23 14:30); [back-up link](/files/info0948-2016/V-REP%20simulation.mp4)</li>
                  <li markdown="span">[Moving the camera](https://www.youtube.com/watch?v=FRN_Gj_lSqU); [back-up link](http://www.montefiore.ulg.ac.be/~tcuvelier/files/info0948-2016/V-REP%20camera.mp4)</li>
                  <li markdown="span">[Moving objects and getting positions](https://www.youtube.com/watch?v=O8HNW9cXY6Q); [back-up link](http://www.montefiore.ulg.ac.be/~tcuvelier/files/info0948-2016/V-REP%20objects.mp4)</li>
                </ul>
            </td>
        </tr>
        <tr id="course-3">
            <td>3</td>
            <td>23 February 2017</td>
            <td>Navigation (ch. 5), B. Boigelot</td>
            <td markdown="span">[Slides](http://www.montefiore.ulg.ac.be/~tcuvelier/files/info0948-2016/control-navigation.pdf)</td>
            <td class="small" markdown="span">
                [Reference book](http://petercorke.com/RVC1/chaps/5/)<br/>
                Peter Corke's Robotics Toolbox: [http://www.petercorke.com/RTB/r9/html/#pathplanning](http://www.petercorke.com/RTB/r9/html/#pathplanning), [angle difference (`angdiff`)](http://www.petercorke.com/RTB/r9/html/angdiff.html)<br/>
                MATLAB Robotics Toolbox: [path planning and occupancy grids](http://fr.mathworks.com/help/robotics/ug/occupancy-grids.html), [probabilistic roadmap (PRM)](http://fr.mathworks.com/help/robotics/ug/probabilistic-roadmaps-prm.html), [PurePursuit controller](http://fr.mathworks.com/help/robotics/ref/robotics.purepursuit-class.html)
            </td>
        </tr>
        <tr id="course-4">
            <td>4</td>
            <td>2 March 2017</td>
            <td>Localization and Kalman Filter (ch. 6), L. Wehenkel</td>
            <td markdown="span">[Slides](http://www.montefiore.ulg.ac.be/~tcuvelier/files/info0948-2016/6-localization.pdf)</td>
            <td class="small" markdown="span">
                [Reference book](http://petercorke.com/RVC1/chaps/6/)<br/>
                Peter Corke's Robotics Toolbox: [localisation with Kalman filter and particle filter](http://www.petercorke.com/RTB/r9/html/#localization), [[map of landmarks](http://www.petercorke.com/RTB/r9/html/Map.html)<br/>
                MATLAB Robotics Toolbox: [particle filter](https://fr.mathworks.com/help/robotics/ug/particle-filter-parameters.html), [probabilistic roadmap (PRM)](http://fr.mathworks.com/help/robotics/ug/probabilistic-roadmaps-prm.html), [PurePursuit controller](http://fr.mathworks.com/help/robotics/ref/robotics.purepursuit-class.html)
            </td>
        </tr>
        <tr id="course-5">
            <td>5</td>
            <td>9 March 2017</td>
            <td>Fitting and Shape Matching (not in the reference book), Ph. Latour</td>
            <td markdown="span">[Slides](http://www.montefiore.ulg.ac.be/~tcuvelier/files/info0948-2016/10-fitting.pdf)</td>
            <td class="small">
                <span markdown="span">**To go further**</span><br/>
                For shape matching: 
                <ul>
                    <li markdown="span">[total least squares](https://en.wikipedia.org/wiki/Total_least_squares) (avoid simple linear regression: see [Chapter 1](http://people.cas.uab.edu/~mosya/cl/IHO.pdf) of [Circular and linear regression: Fitting circles and lines by least squares, N. Chernov](https://www.crcpress.com/Circular-and-Linear-Regression-Fitting-Circles-and-Lines-by-Least-Squares/Chernov/p/book/9781439835906))</li>
                    <li markdown="span">[Hausdorff distance](https://en.wikipedia.org/wiki/Hausdorff_distance)</li>
                </ul>
                <span markdown="span">An efficient data structure to work with many points: [the k-d tree](https://en.wikipedia.org/wiki/K-d_tree).</span><br/><br/>
                <span markdown="span">**For the project**</span><br/>
                Peter Corke's Machine Vision Toolbox: 
                <ul>
                    <li markdown="span">[fitting points to a model with RANSAC](http://www.petercorke.com/MVTB/r3/html/ransac.html)</li>
                    <li markdown="span">[point cloud alignment with ICP](http://www.petercorke.com/MVTB/r3/html/icp.html)</li>
                </ul>
                MATLAB Computer Vision System Toolbox: 
                <ul>
                    <li markdown="span">[fitting point clouds to geometric shapes with RANSAC](https://fr.mathworks.com/help/vision/functionlist.html?s_cid=doc_ftr#bux46dr-1)</li>
                    <li markdown="span">[fitting point clouds with ICP](https://fr.mathworks.com/help/vision/ref/pcregrigid.html)</li>
                </ul>
                MATLAB Statistics and Machine Learning Toolbox: 
                <ul>
                    <li markdown="span">[PCA (can be used to initialise ICP)](https://fr.mathworks.com/help/stats/pca.html)</li>
                </ul>
            </td>
        </tr>
        <tr id="course-6">
            <td>6</td>
            <td>16 March 2017</td>
            <td colspan="3">Q &amp; A for the project, M. Baijot and T. Cuvelier</td>
        </tr>
        <tr id="milestone-a1">
            <td></td>
            <td>23 March 2017</td>
            <td colspan="3">
                {% include danger.html %} Milestone A1<br/><br/>
                You are expected to produce a 5-minute video of your robot that explores the map and eventually shows the map, with an audio comment explaining your implementation (why you chose a given path finding algorithm, how you decide the next point to explore, rather than what function you called). Ideally, the video should also show how your robot is making decisions (for example, show the map being built, the next point to explore, the trajectory). <br/>
                Your submission must include both <em>your</em> source code and the video (either directly as a file, or a link to an external website where you hosted your video — in this case, make sure that we can access the video at any time after your submission). 
            </td>
        </tr>
        <tr id="course-7">
            <td>7</td>
            <td>30 March 2017</td>
            <td>Image Processing (ch. 12), M. Van Droogenbroeck</td>
            <td markdown="span">[Slides](http://www.montefiore.ulg.ac.be/~tcuvelier/files/info0948-2016/11-image-processing.pdf)</td>
            <td class="small">
                <span markdown="span">**To go further**</span><br/>
                <span markdown="span">[Reducing Errors in Object-Fetching Interactions through Social Feedback](http://h2r.cs.brown.edu/social-feedback-icra-2017/): [video](https://www.youtube.com/watch?v=xuPZ9zKVIfw), [article](http://h2r.cs.brown.edu/wp-content/uploads/2017/03/whitney17.pdf).</span><br/><br/>
                <span markdown="span">**For the project**</span><br/>
                <span markdown="span">[Reference book](http://petercorke.com/RVC1/chaps/12/)</span><br/>
                MATLAB Image Processing Toolbox: 
                <ul>
                    <li markdown="span">display an image: [imshow](https://fr.mathworks.com/help/images/ref/imshow.html), [the coordinate system](https://fr.mathworks.com/help/images/image-coordinate-systems.html)</li>
                    <li markdown="span">colour space transformation: [from RGB to HSV](https://fr.mathworks.com/help/matlab/ref/rgb2hsv.html) and [the reverse operation](https://fr.mathworks.com/help/matlab/ref/hsv2rgb.html)</li>
                    <li markdown="span">[morphological operations](https://fr.mathworks.com/help/images/morphological-filtering.html), [Gaussian filtering](https://fr.mathworks.com/help/images/ref/imgaussfilt.html)</li>
                    <li markdown="span">[edge detection](https://fr.mathworks.com/help/images/ref/edge.html), [circles detection](https://fr.mathworks.com/help/images/ref/imfindcircles.html)</li>
                </ul>
            </td>
        </tr>
        <tr id="course-8">
            <td>8</td>
            <td>20 April 2017</td>
            <td>
                Feature Extraction, Bag-of-features for Image Classification (ch. 13), R. Marée <br/>
                {% include danger.html label="The course begins at 9:30" %}
            </td>
            <td>
                <span markdown="span">[Slides (20 MB)](http://www.montefiore.ulg.ac.be/~tcuvelier/files/info0948-2016/slides-maree.pdf) ([previous version](http://www.montefiore.ulg.ac.be/~tcuvelier/files/info0948-2016/12-features.pdf))</span>
            </td>
            <td class="small">
                <span markdown="span">[Reference book](http://petercorke.com/RVC1/chaps/13/)</span><br/><br/>
                Peter Corke's Machine Vision Toolbox: 
                <ul>
                    <li markdown="span">Feature extraction: [SIFT](http://www.petercorke.com/MVTB/r3/html/isift.html), [SURF](http://www.petercorke.com/MVTB/r3/html/isurf.html), [corner detector](http://www.petercorke.com/MVTB/r3/html/icorner.html)</li>
                </ul>
                MATLAB Computer Vision System Toolbox (high level): 
                <ul>
                    <li markdown="span">[Image Category Classification Using Bag of Features](https://fr.mathworks.com/help/vision/examples/image-category-classification-using-bag-of-features.html)</li>
                    <li markdown="span">[bagOfFeatures](https://fr.mathworks.com/help/vision/ref/bagoffeatures-class.html)</li>
                </ul>
                MATLAB Computer Vision System Toolbox (low level): 
                <ul>
                    <li markdown="span">[Local Feature Extraction](https://fr.mathworks.com/help/vision/local-feature-extraction.html)</li>
                </ul>
                MATLAB Statistics and Machine Learning Toolbox: 
                <ul>
                    <li markdown="span">[Classification](https://fr.mathworks.com/help/stats/classification.html)</li>
                </ul>
            </td>
        </tr>
        <tr id="course-9">
            <td></td>
            <td>27 April 2017</td>
            <td colspan="3">
                Project follow-up: first a brief tour of what you have achieved so far since the first deadline (deeper for groups that had problems), then time for questions<br/>
                {% include danger.html label="The session begins at 10:00" %}
            </td>
        </tr>
        <tr id="submission">
            <td></td>
            <td>13 June 2017</td>
            <td colspan="3">
                {% include danger.html %} Project submission<br/><br/>
                You are expected to submit: 
                <ul>
                    <li>your source code for the whole project.</li>
                    <li>a PDF report (between five and ten pages) explaining which milestones you have implemented, the ideas behind your algorithms, why you think they should work in general for a map that respects the hypotheses of the project, what ideas you rejected (and why). Basically, everything that you would like to present during your defence should be in your report. If you want to, you may include links to videos.</li>
                </ul>
                {% include note.html %} If you want to, you can submit your project beforehand: such a late deadline does not mean we expect you to work full steam until mid-June, but rather that you should decide when you work on the project so that it does not interfere with your other academic requirements. For students with a heavy exam session, it would be preferable to hand in your project at the end of May, but the choice is up to you.
            </td>
        </tr>
        <tr id="examination">
            <td></td>
            <td>14 June 2017</td>
            <td colspan="3">
                {% include danger.html %} Project presentations<br/><br/>
                
                <p markdown="span">The exam will mainly consist of a live demo of your solution on a house that differs from the one provided for training. Be ready to run your code on a laptop, with a different VREP file. Please also prepare videos showing the key elements of your solution, in case there is not enough time to run a full simulation sequence. Prepare two or three slides describing the key elements of your work. This defence shall last approximately ten to fifteen minutes per group.</p>
                
                <p markdown="span">One examiner residing in the USA, a videoconferencing system will be used, namely [Skype](https://www.skype.com/en/). Please have it installed on your computer beforehand and test screen sharing with your project running in the simulator (only one computer per group is required, make sure it is powerful enough well in advance; contact us if the computers of all group members are not able to withstand Skype with the simulator). Also, be present at least 15 minutes in advance to ensure the examinations go smoothly (testing shared screens, uploading the exam map, etc.).</p>
                
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Hour</th>
                            <th>Group names</th>
                            <th>First group member</th>
                            <th>Second group member</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>15:00</td>
                            <td>PitzAmraoui</td>
                            <td>Adrien Pitz</td>
                            <td>Issam Amraoui</td>
                        </tr>
                        <tr>
                            <td>15:15</td>
                            <td>MorelleScarlata</td>
                            <td>clément Morelle</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>15:30</td>
                            <td>s101052s150793</td>
                            <td>Michaël Paquay</td>
                            <td>Bryan Peeters</td>
                        </tr>
                        <tr>
                            <td>15:45</td>
                            <td>Group9999</td>
                            <td>Enrico Ghidoli</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>16:00</td>
                            <td>SWassermann</td>
                            <td>Sarah Wassermann</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>16:15</td>
                            <td>VanheeTasset</td>
                            <td>Maxime TASSET</td>
                            <td>Laurent Vanhee</td>
                        </tr>
                        <tr>
                            <td>16:30</td>
                            <td>group42</td>
                            <td>Florian Peters</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>16:45</td>
                            <td>s131529s133011</td>
                            <td>Joris Sébastien</td>
                            <td>Martin Castin</td>
                        </tr>
                        <tr>
                            <td>17:00</td>
                            <td>PierreAntoine</td>
                            <td>Antoine Germay</td>
                            <td>Pierre Nicolay</td>
                        </tr>
                        <tr>
                            <td>17:15</td>
                            <td>Mastrodicasarauw</td>
                            <td>Rauw Stephane</td>
                            <td>Simon Mastrodicasa</td>
                        </tr>
                        <tr>
                            <td>17:30</td>
                            <td>BoileauWauquaire</td>
                            <td>Quentin Boileau</td>
                            <td>Odile Wauquaire</td>
                        </tr>
                        <tr>
                            <td>17:45</td>
                            <td>paaur</td>
                            <td>Pascal Leroy</td>
                            <td>Aurelien Werenne</td>
                        </tr>
                        <tr>
                            <td>18:00</td>
                            <td>s134961s122239</td>
                            <td>Florian Merchie</td>
                            <td>quentin Diprima</td>
                        </tr>
                        <tr>
                            <td>18:15</td>
                            <td>DuboisWehenkel</td>
                            <td>Antoine Wehenkel</td>
                            <td>Dubois Antoine</td>
                        </tr>
                        <tr>
                            <td>18:30</td>
                            <td>RaletBricmont</td>
                            <td>Bricmont Jordan</td>
                            <td>ARNAUD RALET</td>
                        </tr>
                    </tbody>
                </table>

                {% include note.html %}
                The group names, member names, and member orders have been taken from the submission platform. 
            </td>
        </tr>
    </tbody>
</table>

The chapter numbers follow those of the reference book, [Robotics, Vision and Control](http://petercorke.com/RVC1/), first edition ([freely available when connected from the university network](https://link.springer.com/book/10.1007/978-3-642-20144-8)).

[The second edition is out since June 2017, 22](http://petercorke.com/wordpress/rvc/): the numbering may have evolved, but the book is still be valuable for this course ([it is also freely available when connected from the university network](https://link.springer.com/book/10.1007%2F978-3-319-54413-7)).

The slides that were used the previous years are still available [on Renaud Detry's website](http://renaud-detry.net/teaching/info0948/private/slides.php). (Use the university's cabled network, or a password will be required.) 

## Project

[Project statement](http://ulgrobotics.github.io/trs/project.html), [list of milestones](http://ulgrobotics.github.io/trs/project.html#milestones), [installation procedure](http://ulgrobotics.github.io/trs/setup.html#install). The project should be done in groups of two. If you have questions about the project, you can ask any teaching assistant. [Submissions must be done on the dedicated platform](https://submit.montefiore.ulg.ac.be/) (all the members of your group must register on the platform so that you can make a group). Deadlines: 


  - 23 March: milestone A1 and short presentation of your robot exploring the room to produce a map
  - 13 June: final submission
  - 14 June: final examination

You may find the following software useful during the project (for MATLAB only):

  - [Peter Corke's Robotics Toolbox](http://petercorke.com/wordpress/toolboxes/robotics-toolbox), also [on GitHub](https://github.com/petercorke/robotics-toolbox-matlab) (however, be cautious: it will not always work as expected); it is automatically installed when you perform the installation steps for the project (when running the script `startup_robot.m`)
  - [MATLAB Robotics Toolbox](https://fr.mathworks.com/products/robotics.html) (available since R2015a, not by default in all MATLAB editions)

A few links more specifically about the simulator and the code you will have to write:

  - [Complete demo of the youBot (MATLAB)](https://github.com/dourouc05/trs/blob/master/youbot/youbot.m), [more focused demos (MATLAB)](https://github.com/dourouc05/trs/tree/master/youbot/focused)
  - [List of forbidden functions](http://ulgrobotics.github.io/trs/project.html#api)
  - [Simulator help](http://www.coppeliarobotics.com/helpFiles/)

Would you choose not to use MATLAB, here are a few links that you might find useful:

  - [the list of V-REP bindings](http://www.coppeliarobotics.com/helpFiles/en/remoteApiClientSide.htm) (the same commands are used for all bindings, whatever the programming language)
  - For C++: [Robotics Library](http://www.roboticslibrary.org/) (for motion planning), [OpenCV](http://opencv.org/) (for image processing, feature extraction, and machine learning), [mlpack](http://www.mlpack.org/) (for machine learning)
  - For Octave: Peter Corke's robotics toolbox is partially useable with Octave

## FAQ

### The simulator shows a black screen and gives incorrect position/angle for the robot. What happened?

Usually, when the simulator outputs NaN values, it means that it got invalid inputs, usually as velocities. Graphically, the impact of the NaN values is a black screen. 

### How to update VLFeat? 

By default, the script `startup_robot` downloads an outdated version of VLFeat (0.9.9, while the current one is 0.9.20), which lacks many features (such as an SVM implementation). To update it, you can download the latest version on the official website, including binaries (on [VLFeat's download page](http://www.vlfeat.org/download.html), the file is currently under the link VLFeat 0.9.20 binary package). Extract this archive on your computer (for example, in the directory `matlab/rvctools/contrib/vlfeat-0.9.20`, along with the embedded version of VLFeat, `matlab` containing the `startup_robot.m` file).

Before using VLFeat, you must use a script that sets up the needed paths (very much like `startup_robot`), each time you start MATLAB. If you followed the previous instructions, that script is `matlab/rvctools/contrib/vlfeat-0.9.20/toolbox/vl_setup.m`.

If you get strange errors when trying to use some functions, you may have to recompile the MEX files of VLFeat. To this end, you must at least have [a C compiler installed that is recognised by MATLAB](https://fr.mathworks.com/help/matlab/matlab_external/what-you-need-to-build-mex-files.html): for example, on Windows, [Visual C++ (included with Visual Studio Community)](https://www.visualstudio.com/free-developer-offers/) or [MinGW](https://fr.mathworks.com/help/matlab/matlab_external/install-mingw-support-package.html). Once you have a compiler, start the compilation by launching the script `matlab/rvctools/contrib/vlfeat-0.9.20/toolbox/vl_compile.m`.

With Visual C++, you might still get errors when compiling:

```
Error using mex
vl_fisher.c
C:\Programs Files ( x86)\Windows Kits\10\include\10.0.10150.0\ucrt\stdio.h(1925): warning C4005:
'snprintf': macro redefinition

C:\Robotics\matlab\rvctools\contrib\vlfeat-0.9.20\vl\host.h(315): note: see previous
definition of 'snprintf'

C:\Program Files (x86)\Windows Kits\10\include\10.0.10150.0\ucrt\stdio.h(1927): fatal error
C1189: #error: Macro definition of snprintf conflicts with Standard Library function declaration

Error in vl_compile (line 140)
mex(cmd{:}) ;
```

[In this case](https://github.com/vlfeat/vlfeat/issues/137), edit the file `matlab/rvctools/contrib/vlfeat-0.9.20/vl/host.h` to comment out the lines 315 and 335 (they look like `# define snprintf _snprintf`). (Another solution is to use [the master branch](https://github.com/vlfeat/vlfeat) of VLFeat.) Restart `matlab/rvctools/contrib/vlfeat-0.9.20/toolbox/vl_compile.m`.

## How to use the simulator? 

For the projet in this course, you will be asked to use [the simulator V-REP](http://www.coppeliarobotics.com/). It emulates a complete robot (the [youBot](http://www.youbot-store.com/)) evolving in its environment: it will move around, place its arm, grasp objects, take pictures within the simulator.

For the installation, please follow [the TRS tutorial](http://ulgrobotics.github.io/trs/setup.html). It is highly recommended to use MATLAB as a programming environment.

When following the tutorial, if you have an error executing the statement `binding_test()` (step 3.2), make sure you have started the simulation in V-REP.

In order to shoot videos from V-REP, you can use the option *[Tools > Video recorder](http://www.coppeliarobotics.com/helpFiles/en/aviRecorder.htm)*; however, the video will not contain any MATLAB overlay. In order to record your voice, you may have to use separate software for video making, such as [KDEnlive](https://kdenlive.org/). Other tools allow you to capture your screen (including MATLAB windows), such as [OBS Studio (free and open-source software)](https://obsproject.com/) or [Camtasia (the trial version is sufficient)](https://www.techsmith.com/camtasia.html).

