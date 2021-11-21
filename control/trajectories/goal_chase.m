function [desired_state] = goal_chase(t, qn)
% DIAMOND trajectory generator for a diamond

% =================== Your code goes here ===================
% You have to set the pos, vel, acc, yaw and yawdot variables
persistent x
persistent y

if isempty(x)
    load('samplex.mat');
    load('sampley.mat');
    x = x - x(1);
    y = y - y(1);
end

time_tol = 50;
dt = 0.0001;

t_step=time_tol/length(x);
idx = ceil(t / t_step);
if idx == inf || idx == 0
    idx = 1;
end

    function [pos, vel] = get_pos_vel(t,t_step,idx)

        if t >= time_tol
            pos = [x(idx); y(idx); 0];
            vel = [0; 0; 0];
        elseif idx == 1
            [pos, vel, ~] = tj_from_line([0; 0; 0], [x(idx); y(idx); 0], idx*t_step, t);
        else
            [pos, vel, ~] = tj_from_line([x(idx-1); y(idx-1); 0], [x(idx); y(idx); 0], idx*t_step, t);
        end
    end
    
    if t >= time_tol
        pos = [x(end); y(end); 0];
        vel = [0; 0; 0];
        acc = [0;0;0];
    else
        [pos, vel] = get_pos_vel(t,t_step,idx);
        [~, vel1] = get_pos_vel(t+dt,t_step,idx);
        acc = (vel1-vel)/dt;
    end
    
yaw = 0;
yawdot = 0;

% =================== Your code ends here ===================

desired_state.pos = pos(:);
desired_state.vel = vel(:);
desired_state.acc = acc(:);
desired_state.yaw = yaw;
desired_state.yawdot = yawdot;

end
