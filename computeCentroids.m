function centroids = computeCentroids(X, idx, K)



[m n] = size(X);

centroids = zeros(K, n);



for i = 1:K
  used_centroids = (idx == i);
  num_centroids = sum(used_centroids);
  compute_cent_mat = used_centroids .* X;
  centroids(i, :) = sum(compute_cent_mat) / num_centroids;
end




end

