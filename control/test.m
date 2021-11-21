clear;

hFh = imfreehand();
xy = hFh.getPosition;
x = xy(:,1);
x = x(1:end-1);
y = xy(:,2);
y = y(1:end-1);
plot(x,y)
hold on

plot(x,y,'.')

% numberOfKnots = length(x);
% 
% samplingRateIncrease = 10;
% newXSamplePoints = linspace(1, numberOfKnots, numberOfKnots * samplingRateIncrease);
% yy = [0, x', 0; 1, y', 1];
% pp = spline(1:numberOfKnots, yy); % Get interpolant
% smoothedY = ppval(pp, newXSamplePoints);
% xFit = smoothedY(1, :);
% yFit = smoothedY(2, :);
% plot(xFit, yFit, 'b.-', 'MarkerSize', 5);

save('samplex.mat', 'x')
save('sampley.mat', 'y')