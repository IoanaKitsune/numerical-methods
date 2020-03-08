function [] = plotKmeans()
clc
figure
[y indices X] = kmeans();
[m n] = size(X);
hold on
T = [X indices]
for i = 1:m
    if T(i,4) == 1
        scatter3(X(i,1),X(i,2),X(i,3), 'MarkerEdgeColor', 'k', 'MarkerFaceColor',[0 .75 .75])
    elseif T(i,4) == 2
        scatter3(X(i,1),X(i,2),X(i,3), 'MarkerEdgeColor', 'k', 'MarkerFaceColor','yellow')
    elseif T(i,4) == 3
        scatter3(X(i,1),X(i,2),X(i,3), 'MarkerEdgeColor', 'k', 'MarkerFaceColor','green')
    endif
endfor

for i = 1:n
    scatter3(y(i,1),y(i,2),y(i,3), 100, 'MarkerFaceColor', 'r','filled')
endfor

grid on
xlabel('x')
ylabel('y')
zlabel('z')
title('K-means')
view(-39,25)
endfunction