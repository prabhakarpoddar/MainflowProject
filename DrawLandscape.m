% Visualize the landscape 
close all
clear all
 

fobj = @ObjectiveFunction;

x = 0:0.01:2.5;
y = 0:0.01:2.5;

[x_new , y_new] = meshgrid(x,y);

for i = 1 : size(x_new , 1)
    for j = 1 : size (x_new , 2)
      currentX = [ x_new(i,j) , y_new(i,j) ] ;
      o(i,j) = fobj(currentX);  
    end
end

surfc(x_new , y_new , o)
shading  interp
 

xlabel('x_1')
ylabel('x_2')

 