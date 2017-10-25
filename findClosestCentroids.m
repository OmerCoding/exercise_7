function idx = findClosestCentroids(X, centroids)


K = size(centroids, 1);

idx = zeros(size(X,1), 1);


m = size(X, 1);

for i = 1:m
  example = X(i, :);
  distance_matrix = (centroids .- example);
  distance_matrix = (distance_matrix .^ 2);
  sum_dis_mat = sum(distance_matrix');
  [min_val, ind] = min(sum_dis_mat);
  idx(i) = ind;
end


end

