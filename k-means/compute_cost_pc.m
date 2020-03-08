% computes a clustering solution total cost
function cost = compute_cost_pc(points, centroids)
	cost = 0; 
	% TODO compute clustering solution cost
	m = size(points,1);
	indices = get_closest_centroids(points,centroids);
	for i = 1 : m
		cost += norm((points(i,:) - centroids(indices(i),:)));
	endfor
end

