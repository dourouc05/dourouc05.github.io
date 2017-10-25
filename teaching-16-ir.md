---
title: Introduction to intelligent robotics (INFO0948), 2016-2017
permalink: teaching-2016-2017-intelligent-robotics
---

# Introduction à l'algorithmique numérique (MATH0500), 2016-2017

## General information

Lecturers: [B. Boigelot](http://www.montefiore.ulg.ac.be/~boigelot/), Ph. Latour, A. Lejeune, R. Marée, M. Van Droogenbroeck, [L. Wehenkel](http://montefiore.ulg.ac.be/~lwh/).

Teaching assistants: M. Baijot (I.83), Th. Cuvelier (I.76b).

Coordinator: [L. Wehenkel](http://montefiore.ulg.ac.be/~lwh/).

[Course specifications](http://progcours.ulg.ac.be/cocoon/cours/INFO0948-2.html).

## Schedule for the lessons

Several theoretical lessons make up this course. Their main purpose is to help realising the project, but they will also give an overview of the field. 

<table>
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
                <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/info0948-2016/time-motion.pdf">Slides</a>
            </td>
            <td class="small" markdown="span">
                Reference book for <a href="http://petercorke.com/RVC1/chaps/3/">Chapter 3</a> and <a href="http://petercorke.com/RVC1/chaps/4/">Chapter 4</a><br/>
                Peter Corke's Robotics Toolbox: <a href="http://www.petercorke.com/RTB/r9/html/#trajectorygeneration">trajectory interpolation</a>
            </td>
        </tr>
        <tr>
            <td>Simulator presentation, M. Baijot and Th. Cuvelier</td>
            <td colspan="2" markdown="span">
                <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/info0948-2016/02_Project_and_simulator.pdf">Slides</a>. Videos: 
                <ul>
                    <li><a href="https://www.youtube.com/watch?v=6Oq55YYLwQs">V-REP interface description</a>; <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/info0948-2016/V-REP%20overall.mp4">back-up link</a></li>
                    <li><a href="https://www.youtube.com/watch?v=SgUfqFveJwQ">Starting a simulation</a> (last updated 2014-03-23 14:30); <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/info0948-2016/V-REP%20simulation.mp4">back-up link</a></li>                                <li><a href="https://www.youtube.com/watch?v=FRN_Gj_lSqU">Moving the camera</a>; <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/info0948-2016/V-REP%20camera.mp4">back-up link</a></li>
                    <li><a href="https://www.youtube.com/watch?v=O8HNW9cXY6Q">Moving objects and getting positions</a>; <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/info0948-2016/V-REP%20objects.mp4">back-up link</a></li>
                </ul>
            </td>
        </tr>
        <tr id="course-3">
            <td>3</td>
            <td>23 February 2017</td>
            <td>Navigation (ch. 5), B. Boigelot</td>
            <td markdown="span">
                <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/info0948-2016/control-navigation.pdf">Slides</a>
            </td>
            <td class="small" markdown="span">
                <a href="http://petercorke.com/RVC1/chaps/5/">Reference book</a><br/>
                Peter Corke's Robotics Toolbox: <a href="http://www.petercorke.com/RTB/r9/html/#pathplanning">path planning</a>, <a href="http://www.petercorke.com/RTB/r9/html/angdiff.html">angle difference (<code>angdiff</code>)</a><br/>
                MATLAB Robotics Toolbox: <a href="http://fr.mathworks.com/help/robotics/ug/occupancy-grids.html">path planning and occupancy grids</a>, <a href="http://fr.mathworks.com/help/robotics/ug/probabilistic-roadmaps-prm.html">probabilistic roadmap (PRM)</a>, <a href="http://fr.mathworks.com/help/robotics/ref/robotics.purepursuit-class.html">PurePursuit controller</a>
            </td>
        </tr>
        <tr id="course-4">
            <td>4</td>
            <td>2 March 2017</td>
            <td>Localization and Kalman Filter (ch. 6), L. Wehenkel</td>
            <td>
                <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/info0948-2016/6-localization.pdf">Slides</a>
            </td>
            <td class="small">
                <a href="http://petercorke.com/RVC1/chaps/6/">Reference book</a><br/>
                Peter Corke's Robotics Toolbox: <a href="http://www.petercorke.com/RTB/r9/html/#localization">localisation with Kalman filter and particle filter</a>, <a href="http://www.petercorke.com/RTB/r9/html/Map.html">map of landmarks</a><br/>
                MATLAB Robotics Toolbox: <a href="https://fr.mathworks.com/help/robotics/ug/particle-filter-parameters.html">particle filter</a>, <a href="http://fr.mathworks.com/help/robotics/ug/probabilistic-roadmaps-prm.html">probabilistic roadmap (PRM)</a>, <a href="http://fr.mathworks.com/help/robotics/ref/robotics.purepursuit-class.html">PurePursuit controller</a>
            </td>
        </tr>
        <tr id="course-5">
            <td>5</td>
            <td>9 March 2017</td>
            <td>Fitting and Shape Matching (not in the reference book), Ph. Latour</td>
            <td>
                <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/info0948-2016/10-fitting.pdf">Slides</a>
            </td>
            <td class="small">
                <strong>To go further</strong><br/>
                For shape matching: 
                <ul>
                    <li><a href="https://en.wikipedia.org/wiki/Total_least_squares">total least squares</a> (avoid simple linear regression: see <a href="http://people.cas.uab.edu/~mosya/cl/IHO.pdf">Chapter 1</a> of <a href="https://www.crcpress.com/Circular-and-Linear-Regression-Fitting-Circles-and-Lines-by-Least-Squares/Chernov/p/book/9781439835906">Circular and linear regression: Fitting circles and lines by least squares, N. Chernov</a>)</li>
                    <li><a href="https://en.wikipedia.org/wiki/Hausdorff_distance">Hausdorff distance</a></li>
                </ul>
                An efficient data structure to work with many points: <a href="https://en.wikipedia.org/wiki/K-d_tree">the k-d tree</a>. <br/><br/>
                <strong>For the project</strong><br/>
                Peter Corke's Machine Vision Toolbox: 
                <ul>
                    <li><a href="http://www.petercorke.com/MVTB/r3/html/ransac.html">fitting points to a model with RANSAC</a></li>
                    <li><a href="http://www.petercorke.com/MVTB/r3/html/icp.html">point cloud alignment with ICP</a></li>
                </ul>
                MATLAB Computer Vision System Toolbox: 
                <ul>
                    <li><a href="https://fr.mathworks.com/help/vision/functionlist.html?s_cid=doc_ftr#bux46dr-1">fitting point clouds to geometric shapes with RANSAC</a></li>
                    <li><a href="https://fr.mathworks.com/help/vision/ref/pcregrigid.html">fitting point clouds with ICP</a></li>
                </ul>
                MATLAB Statistics and Machine Learning Toolbox: 
                <ul>
                    <li><a href="https://fr.mathworks.com/help/stats/pca.html">PCA (can be used to initialise ICP)</a></li>
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
                <span class="label label-danger">Danger</span> Milestone A1 (<a href="#project">details below</a>)<br/><br/>
                You are expected to produce a 5-minute video of your robot that explores the map and eventually shows the map, with an audio comment explaining your implementation (why you chose a given path finding algorithm, how you decide the next point to explore, rather than what function you called). Ideally, the video should also show how your robot is making decisions (for example, show the map being built, the next point to explore, the trajectory). <br/>
                Your submission must include both <em>your</em> source code and the video (either directly as a file, or a link to an external website where you hosted your video — in this case, smake sure that we can access the video at any time after your submission). 
            </td>
        </tr>
        <tr id="course-7">
            <td>7</td>
            <td>30 March 2017</td>
            <td>Image Processing (ch. 12), M. Van Droogenbroeck</td>
            <td>
                <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/info0948-2016/11-image-processing.pdf">Slides</a>
            </td>
            <td class="small">
                <strong>To go further</strong><br/>
                <a href="http://h2r.cs.brown.edu/social-feedback-icra-2017/">Reducing Errors in Object-Fetching Interactions through Social Feedback</a>: <a href="https://www.youtube.com/watch?v=xuPZ9zKVIfw">video</a>, <a href="http://h2r.cs.brown.edu/wp-content/uploads/2017/03/whitney17.pdf">article</a>. <br/><br/>
                <strong>For the project</strong><br/>
                <a href="http://petercorke.com/RVC1/chaps/12/">Reference book</a><br/>
                MATLAB Image Processing Toolbox: 
                <ul>
                    <li>display an image: <a href="https://fr.mathworks.com/help/images/ref/imshow.html">imshow</a>, <a href="https://fr.mathworks.com/help/images/image-coordinate-systems.html">the coordinate system</a></li>
                    <li>colour space transformation: <a href="https://fr.mathworks.com/help/matlab/ref/rgb2hsv.html">from RGB to HSV</a> and <a href="https://fr.mathworks.com/help/matlab/ref/hsv2rgb.html">the reverse operation</a></li>
                    <li><a href="https://fr.mathworks.com/help/images/morphological-filtering.html">morphological operations</a>, <a href="https://fr.mathworks.com/help/images/ref/imgaussfilt.html">Gaussian filtering</a></li>
                    <li><a href="https://fr.mathworks.com/help/images/ref/edge.html">edge detection</a>, <a href="https://fr.mathworks.com/help/images/ref/imfindcircles.html">circles detection</a></li>
                </ul>
            </td>
        </tr>
        <tr id="course-8">
            <td>8</td>
            <td>20 April 2017</td>
            <td>
                Feature Extraction, Bag-of-features for Image Classification (ch. 13), R. Marée <br/>
                <span class="label label-danger">The course begins at 9:30</span>
            </td>
            <td>
                <a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/info0948-2016/slides-maree.pdf">Slides (20 MB)</a> (<a href="http://www.montefiore.ulg.ac.be/~tcuvelier/files/info0948-2016/12-features.pdf">previous version</a>)
            </td>
            <td class="small">
                <a href="http://petercorke.com/RVC1/chaps/13/">Reference book</a><br/>
                Peter Corke's Machine Vision Toolbox: 
                <ul>
                    <li>Feature extraction: <a href="http://www.petercorke.com/MVTB/r3/html/isift.html">SIFT</a>, <a href="http://www.petercorke.com/MVTB/r3/html/isurf.html">SURF</a>, <a href="http://www.petercorke.com/MVTB/r3/html/icorner.html">corner detector</a></li>
                </ul>
                MATLAB Computer Vision System Toolbox (high level): 
                <ul>
                    <li><a href="https://fr.mathworks.com/help/vision/examples/image-category-classification-using-bag-of-features.html">Image Category Classification Using Bag of Features</a></li>
                    <li><a href="https://fr.mathworks.com/help/vision/ref/bagoffeatures-class.html">bagOfFeatures</a></li>
                </ul>
                MATLAB Computer Vision System Toolbox (low level): 
                <ul>
                    <li><a href="https://fr.mathworks.com/help/vision/local-feature-extraction.html">Local Feature Extraction</a></li>
                </ul>
                MATLAB Statistics and Machine Learning Toolbox: 
                <ul>
                    <li><a href="https://fr.mathworks.com/help/stats/classification.html">Classification</a></li>
                </ul>
            </td>
        </tr>
        <tr id="course-9">
            <td></td>
            <td>27 April 2017</td>
            <td colspan="3">
                Project follow-up: first a brief tour of what you have achieved so far since the first deadline (deeper for groups that had problems), then time for questions<br/>
                <span class="label label-danger">The session begins at 10:00</span>
            </td>
        </tr>
        <tr id="submission">
            <td></td>
            <td>13 June 2017</td>
            <td colspan="3">
                <span class="label label-danger">Danger</span> Project submission<br/><br/>
                You are expected to submit: 
                <ul>
                    <li>your source code for the whole project.</li>
                    <li>a PDF report (between five and ten pages) explaining which milestones you have implemented, the ideas behind your algorithms, why you think they should work in general for a map that respects the hypotheses of the project, what ideas you rejected (and why). Basically, everything that you would like to present during your defence should be in your report. If you want to, you may include links to videos.</li>
                </ul>
                <span class="label label-info">Note</span> If you want to, you can submit your project beforehand: such a late deadline does not mean we expect you to work full steam until mid-June, but rather that you should decide when you work on the project so that it does not interfere with your other academic requirements. For students with a heavy exam session, it would be preferable to hand in your project at the end of May, but the choice is up to you.
            </td>
        </tr>
        <tr id="examination">
            <td></td>
            <td>14 June 2017</td>
            <td colspan="3">
                <span class="label label-danger">Danger</span> Project presentations<br/><br/>
                The exam will mainly consist of a live demo of your solution on a house that differs from the one provided for training. Be ready to run your code on a laptop, with a different VREP file. Please also prepare videos showing the key elements of your solution, in case there is not enough time to run a full simulation sequence. Prepare two or three slides describing the key elements of your work. This defence shall last approximately ten to fifteen minutes per group.<br/>
                One examiner residing in the USA, a videoconferencing system will be used, namely <a href="https://www.skype.com/en/">Skype</a>. Please have it installed on your computer beforehand and test screen sharing with your project running in the simulator (only one computer per group is required, make sure it is powerful enough well in advance; contact us if the computers of all group members are not able to withstand Skype with the simulator). Also, be present at least 15 minutes in advance to ensure the examinations go smoothly (testing shared screens, uploading the exam map, etc.).<br/>
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
                <span class="label label-info">Note</span> The group names, member names, and member orders have been taken from the submission platform. 
            </td>
        </tr>
    </tbody>
</table>

