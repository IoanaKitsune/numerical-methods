function view_cost_vs_nc(file_points)
	% TODO compute cost for NC = [1..10] and plot 
	load(file_points);
	NC = 1:10
	x = zeros(10,1);
	for i = 1:10
		centroids = clustering_pc(points,i);
		x(i) = compute_cost_pc(points,centroids);
	endfor
	plot(NC, x, "-b");
	
end

