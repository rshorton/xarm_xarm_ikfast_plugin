# xarm_xarm_ikfast_plugin

Used the procedure at https://moveit.picknik.ai/galactic/doc/examples/ikfast/ikfast_tutorial.html

Noteworthy points:
* Had to revise package.xml dependencies to get moveit to recognize the plugin.  (It was missing \<depend\>class_loader\</depend\>.  This was painful to resolve.  Had to look at source to figure this one out.)
* Had to add LAPACK to the target dependencies in the CMakeLists.txt to avoid this runtime unresolved error:
      
      xarm_xarm_ikfast_plugin/lib/libxarm_xarm_ikfast_plugin.so: undefined symbol: dgetrf_
