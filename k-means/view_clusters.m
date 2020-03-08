% outputs a graphical representation of the clustering solution
function view_clusters(points, centroids)
	% TODO graphical representation coded here 
	figure
	indices = getClosestCentroids(points,centroids);
	m = size(points);
	n = size(centroids,1);
	hold on
	T = [points indices];
	centroids;
	for i = 1:m
    if T(i,4) == 1
        scatter3(points(i,1),points(i,2),points(i,3), 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'red')
    elseif T(i,4) == 2
        scatter3(points(i,1),points(i,2),points(i,3), 'MarkerEdgeColor', 'k', 'MarkerFaceColor','yellow')
    elseif T(i,4) == 3
        scatter3(points(i,1),points(i,2),points(i,3), 'MarkerEdgeColor', 'k', 'MarkerFaceColor','green')
    endif
	endfor

	%for i = 1:n
    %	scatter3(centroids(i,1),centroids(i,2),centroids(i,3), 100, 'MarkerFaceColor', 'r','filled')
	%endfor

grid on
xlabel('x')
ylabel('y')
zlabel('z')
title('K-means')
view(-39,25)

end

