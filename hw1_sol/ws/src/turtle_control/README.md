# Package Description

# Inspection
1. `mkdir -p ws/src`
2. `wstool set crazy_turtle --git https://github.com/m-elwin/crazy_turtle`
3. `wstool set turtle_package --git git@github.com:ME495-Embedded-systems/`
4. `catkin_make`
5. `source devel/setup.bash`
6. `roslaunch crazy_turtle go_crazy_turtle.launch`
8. `rosnode list`
    ```
    /mover
    /roaming_turtle
    /rosout
    ```
7. `rostopic list`
   ```
    /rosout
    /rosout_agg
    /turtle1/cmd_vel
    /turtle1/color_sensor
    /turtle1/pose
    ```
9. `rostopic hz /turtle1/cmd_vel' (100 hz)
8. `rosservice list`
    ```
    /clear
    /kill
    /mover/get_loggers
    /mover/set_logger_level
    /reset
    /roaming_turtle/get_loggers
    /roaming_turtle/set_logger_level
    /rosout/get_loggers
    /rosout/set_logger_level
    /spawn
    /switch
    /turtle1/set_pen
    /turtle1/teleport_absolute
    /turtle1/teleport_relative
    ```
9. `rosservice info /switch`
    Type is `crazy_turtle/switch`
    Node that offers it is `/mover`
9. `rosparam list`
   ```
    background_b
    /background_g
    /background_r
    /mover/velocity
    /rosdistro
    /roslaunch/uris/host_fireboat__36003
    /rosversion
    /run_id
    ```
10. `rqt_graph`

    ![rqt_graph](./rosgraph.png)
11. `rospack depends1 crazy_turtle`
    ```
    rospy
    message_runtime
    turtlesim
    ```
12. `rossrv package crazy_turtle`
    ```
    crazy_turtle/Switch
    ```

13. `rosservice call /switch '{mixed_up: {x: 3, y: 3, theta: 1, linear_velocity: 1, angular_velocity: 1}}'.  It kills the turtle and spawns a new turtle at a new location, returning
 its new x and y coordinates.  The new coordinates are x = x * linear_velocity and  y = y * angular_velocity.

14. `rosparam get /mover/velocity` (the answer is 5).
15. `rosparam set /mover/velocity 10` (nothing happens to the turtle.
16. `rosnode kill /mover`
    ```
    killing /mover
    killed
    ```
17. `rosrun crazy_turtle mover.py cmd_vel:=/turtle1/cmd_vel`
18. The turtle starts moving but with a faster velocity.
