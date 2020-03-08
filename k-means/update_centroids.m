function centroids = update_centroids(points, indices, NC)

  [m n] = size(points);
  centroids = zeros(NC, n);
  
  for i=1:NC
    check = points(indices == i,:);
    count = size(check,1);
    centroids(i, :) = (1/count) * [sum(check(:,1)) sum(check(:,2)) sum(check(:,3))];
  end
end