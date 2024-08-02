function gaussian2_a2_focussed(mean_x, mean_y, rotation, variance_front, variance_right, variance_left, variance_rear)
limit = 1;
[x,y] = meshgrid(mean_x-limit:0.01:mean_x+limit,mean_y-limit:0.01:mean_y+limit);
alpha = atan2(y - mean_y, x - mean_x) - rotation + pi/2;
size_alpha = size(alpha);
for (i=1:size_alpha(1))
    for (j=1:size_alpha(2))
        if (alpha(i,j) > pi)
            alpha(i,j) = alpha(i,j) - 2*pi;
        elseif (alpha(i,j) < -pi)
            alpha(i,j) = alpha(i,j) + 2*pi;
        end
    end
end
for (i=1:size_alpha(1))
    for (j=1:size_alpha(2))
        if (alpha(i,j) <= 0)
            variance(i,j) = variance_rear;
        else
            variance(i,j) = variance_front;
        end
    end
end
for (i=1:size_alpha(1))
    for (j=1:size_alpha(2))
        if (alpha(i,j) >= pi/2  | alpha(i,j) <= -pi/2 )
            variance_sides(i,j) = variance_left;
        else
            variance_sides(i,j) = variance_right;
        end
    end
end
size(variance_sides);
ones_g = ones(size_alpha(1),size_alpha(2));
a = (cos(rotation)^2)./(2*variance) + (sin(rotation)^2)./(2*variance_sides);
b = sin(2*rotation)./(4*variance) - sin(2*rotation)./(4*variance_sides);
c = (sin(rotation)^2)./(2*variance)+ (cos(rotation)^2)./(2*variance_sides);
f = exp(-(a.*(x - mean_x).^2 + 2*b.*(x - mean_x).*(y - mean_y) + c.*(y - mean_y).^2));
contour(x,y,f,[0.80,0.80],'LineColor', [1, 0, 0]);
hold on;
contour(x,y,f,[0.87,0.87],'LineColor', [0, 1, 0]);
hold on;
contour(x,y,f,[0.93,0.93],'LineColor', [1, 1, 0]);