function centroids = initCentroids(X, NC)
    centroids = zeros(NC,size(X,2));
    randX = randperm(size(X,1));
    centroids = X(randX(1:NC), :);
endfunction