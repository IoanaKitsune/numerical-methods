% computes the NC centroids corresponding to the given points using K-Means
function centroids = clustering_pc(points, NC)
	centroids = [];
	% TODO K-Means code 

	Points = points;
	cluster_no = NC;
	initial_centroids = initCentroids(Points, cluster_no);

	max_iterations = 100;

	for i=1:max_iterations
		indices = getClosestCentroids(Points, initial_centroids);
  		centroids = computeCentroids(Points, indices, cluster_no);
		if(norm(centroids - initial_centroids) == 0)
			break;
		endif
		initial_centroids = centroids;
	endfor
end
