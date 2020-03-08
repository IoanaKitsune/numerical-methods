% computes a clustering solution total cost
function cost = compute_cost_pc(points, centroids)
	cost = 0; 
	% TODO compute clustering solution cost
	m = size(points,1);
	indices = getClosestCentroids(points,centroids);
	for i = 1 : m
		cost += sqrt(sum((points(i,:) - centroids(indices(i),:)) .^ 2));
	endfor
end

