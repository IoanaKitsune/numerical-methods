function indices = getClosestCentroids(X, centroids)
  K = size(centroids, 1);
  m = size(X,1);
  indices = zeros(m, 1);
  

  for i=1:m
    k = 1;
    %printf("min_dist : [%d %d %d] - [%d %d %d] \n", X(i,:), centroids(1,:));
    min_dist = norm(X(i,:) - centroids(1,:));
    for j=2:K
        %printf("dist : [%d %d %d] - [%d %d %d] \n", X(i,:), centroids(j,:));
        dist = norm(X(i,:) - centroids(j,:));
        if(dist < min_dist)
          min_dist = dist;
          k = j;
        end
    end
    indices(i) = k;
  end
end