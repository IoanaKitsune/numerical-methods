% computes the NC centroids corresponding to the given points using K-Means
function centroids = clustering_pc(points, NC)
	centroids = [];
	% TODO K-Means code 

	Points = points;
	cluster_no = NC;
	initial_centroids = first_centroids(Points, cluster_no);

	max_iterations = 100;

	for i=1:max_iterations
		indices = get_closest_centroids(Points, initial_centroids);
  		centroids = update_centroids(Points, indices, cluster_no);
		if(norm(centroids - initial_centroids) == 0)
			break;
		endif
		initial_centroids = centroids;
	endfor
end
