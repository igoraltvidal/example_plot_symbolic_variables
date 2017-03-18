clear; clc;

%parameters
syms y 
range_interval = 0.1;
final_x_axis = 6;
initial_x_axis = 1;

vector_y_axis = 1:(abs(final_x_axis - initial_x_axis)*(1/range_interval));
plot_input_x = initial_x_axis + range_interval:range_interval:final_x_axis;
x = initial_x_axis;

for i = 1:(abs(final_x_axis - initial_x_axis)*(1/range_interval))
        eqn = 1.3060e-04*(x)^2-4.5389e-05*(y-(25))-1.3004e-13*(y^4-25^4) == 0;  %equation with symbolic variable
        vector_aux(1:4) = vpa(solve(eqn, y));  %change the range of vector_aux to your function order [number 4 in this case]
        vector_y_axis(i) = vector_aux(2);  %change the vector_aux(2) to wich of the roots do you going to use
        x = x + range_interval;
end

plot(plot_input_x,vector_y_axis)
ylabel('Y');
xlabel('X');
title('Example');

hold on  %if you want to plot more than one graphic with different parameters
