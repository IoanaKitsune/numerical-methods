function centroids = first_centroids(points, NC)
    centroids = zeros(NC,size(points,2));
    randPoints = randperm(size(points,1));
    centroids = points(randPoints(1:NC), :);
endfunction