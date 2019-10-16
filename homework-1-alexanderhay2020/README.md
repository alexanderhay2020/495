# homework-1-alexanderhay2020

Alexander Hay<br/>
ME495 - Homework 1
---------------------------------
## Overview

Part I - Complete<br/>
Part II - Incomplete<br/>
Part III - No Attempt<br/>

On the last steps of Part II (6 and 7) I managed to tweak my .srv file in such a way that catkin_make did not like, giving these CMake Errors:<br/>
Could not find messages which ~/maze_of_directories/src/turtle_control/srv/VelTranslate.srv depends on
<br/>
<br/>
Cannot locate message [Twist]: unknown package [geometry_msgs]<br/>
<br/>
It also cites the generate_messages line in the CMakeLists.txt file but I don't know why.
Running catkin lint gave no warnings
<br/>
I had already added geometry_msgs to the list of dependencies in the package.xml file and had successfully ran catkin_make. Prior to the issue. Google was only able to pull up 2 results, which leads me to believe it's either something incredibly specific to my setup and commands leading to it, or "one of those little things" that probably should or shouldn't have changed. My bet is on the latter.
<br/>
<br/>
I don't want to be that person to say "I finished it everything but a bug ruined my code at the last minute", but here I am. I was struggling enough that just finishing Part II was enough for me.

---------------------------------
## Part 1 Questions:

### 7) Which nodes are running?

input:<br/>
rosnode list<br/>
<br/>
output:<br/>
/mover<br/>
/roaming_turtle<br/>
/rosout<br/>

### 8) Which topics are running?

input:<br/>
rostopic list<br/>
<br/>
output:<br/>
/rosout<br/>
/rosout_agg<br/>
/turtle1/cmd_vel<br/>
/turtle1/color_sensor<br/>
/turtle1/pose<br/>

### 9) What is the frequency of /turtle1/cmd_vel?

input:<br/>
rostopic hz /turtle1/cmd_vel<br/>
<br/>
output: average rate 99.998<br/>

### 10) What are the services running?

input:<br/>
rosservice list<br/>
<br/>
output:<br/>
/clear<br/>
/kill<br/>
/mover/get_loggers<br/>
/mover/set_logger_lever<br/>
/reset<br/>
/roaming_turtle/get_loggers<br/>
/roaming_turtle/set_logger_level<br/>
rosout/get_loggers<br/>
rosout/set_logger_level<br/>
/rostopic_5873_1570297328519/get_loggers</br>
/rostopic_5873_1570297328519/set_logger_level</br>
/spawn</br>
/switch</br>
/turtle1/set_pen</br>
/turtle1/teleport_absolute</br>
/turtle1/teleport_relative</br>

### 11) What is the type and node of the /switch service?

input:</br>
rosservice info /switch</br>
</br>
output:</br>
Node: /mover</br>
Type: crazy_turtle/Switch

### 12) What parameters exist?

intput:</br>
rosparam list</br>
</br>
output:</br>
/background_b</br>
/background_g</br>
/background_r</br>
/mover/velocity</br>
/rosdistro</br>
/roslaunch/uris/host_xero_76__40129</br>
/rosversion</br>
/run_id</br>

### 13) Show an image of the ROS communication graph

![text](https://github.com/ME495-EmbeddedSystems/homework-1-alexanderhay2020/blob/master/pic1.png)

### 14) What are the immediate dependencies of crazy_turtle?

input:<br/>
rospack depends1 crazy_turtle<br/>
<br/>
output:<br/>
rospy<br/>
message_runtime<br/>
turtletim<br/>

### 15) What are the service types defined by crazy_turtle?

input:<br/>
<br/>
output:<br/>
<br/>

### 16) What does calling /switch return?

input:<br/>
rosservice call /switch [0,0,0,0,0]<br/>
<br/>
output:<br/>
CLI - x:0.0<br/>
CLI - y:0.0<br/>
<br/>
Effect: Turtle changes color and location

### 17) What is the value of the /mover/velocity parameter?

input:<br/>
rosparam get /mover/velocity<br/>
<br/>
output:<br/>
5<br/>

### 18) What happens if you change the /mover/velocity parameter to 10?

input:<br/>
rosparam set /mover/velocity 10<br/>
<br/>
output:<br/>
CLI - nothing<br/>
<br/>
Effect: nothing<br/>

### 19) Kill /mover node

input:<br/>
rosnode kill /mover<br/>
<br/>
output:<br/>
CLI - nothing<br/>
<br/>
Effect - turtle stops moving

### 20) Rerun /mover node, but from /turtle1/cmd_vel

input:<br/>
rosrun crazy_turtle mover cmd_vel:=trtle1/cmd_vel<br/>

### 21) What happened to the turtle's velocity?

output:<br/>
CLI - n/a<br/>
<br/>
Effect - turtle moves fast
