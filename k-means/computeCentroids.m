function centroids = computeCentroids(X, indices, K)

  [m n] = size(X);
  centroids = zeros(K, n);
  
  for i=1:K
    xi = X(indices == i,:);
    count = size(xi,1);
    centroids(i, :) = (1/count) * [sum(xi(:,1)) sum(xi(:,2)) sum(xi(:,3))];
  end
end