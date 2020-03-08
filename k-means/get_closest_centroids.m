function indices = get_closest_centroids(points, centroids)
  K = size(centroids, 1);
  m = size(points,1);
  indices = zeros(m, 1);
  

  for i=1:m
    k = 1;
    min_dist = norm(points(i,:) - centroids(1,:));
    for j=2:K
        dist = norm(points(i,:) - centroids(j,:));
        if(dist < min_dist)
          min_dist = dist;
          k = j;
        end
    end
    indices(i) = k;
  end
end