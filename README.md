## Quadrotor Control, Path Planning and Trajectory Optimization


Following [MEAM 620 Advanced Robotics](https://alliance.seas.upenn.edu/~meam620/wiki/) course at University of Pennsylvania. 

(For Penn students: *DO NOT* spoil the fun by looking at this repo and not working on your assignments! and most importantly, *DO NOT* violate the honor code!)

This repo includes matlab code for:
- Quadrotor PD controller
- Path planning algorithms (Dijkstra, A*)
- Trajectory optimizations (Minimum Snap/Acceleration Trajectory)

## PD Controller

- Run code: change trajectories in file `control/runsim.m` and run.
- See [quadrotor_dynamics.pdf](quadrotor_dynamics.pdf) for dynamic modeling of the quadrotor.
- See `control/controller.m` for implementation of the PD controller.


## Path Planning and Trajectory Optimization

- Run code: `traj_planning/runsim.m` and run path 1 or path 3.
- See [project_report.pdf](project_report.pdf) for more details about trajectory generation
- See `traj_planning/path_planning/dijkstra.m` for implementation of path finding algorithms (dijstra, A*).
- See `traj_planning/traj_opt7.m` for implementations of minimium snap trajectory.
- See `traj_planning/traj_opt5.m` for implementations of minimium acceleration trajectory.
- Visualization below.

## HELLO LAUREN

Run `control/test.m` to draw whatever you want. It samples what you draw and saves it to a file. Then run `control/runsim.m` to see the quadrotor work its magic. *Note, if the goal is moving too fast for the quadrotor to keep up with, go to `control/trajectories/goal_chase.m` and change `time_tol` to a different number.*

That being said, all the trajectory generation is being done in `control/trajectories/goal_chase.m`