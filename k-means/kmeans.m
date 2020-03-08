function [centroids indices X] = kmeans()
X = randi([-20 20],50, 3);
K = 3;

max_iterations = 10000;
centroids = initCentroids(X, K);

for i=1:max_iterations
  indices = getClosestCentroids(X, centroids);
  centroids = computeCentroids(X, indices, K);
end
endfunction