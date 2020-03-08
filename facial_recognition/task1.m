function A_k = task1(image, k)

  A = double(imread(image));
  [m n] = size(A);
  U = zeros(m, k);
  S = zeros(k);
  V = zeros(k, n);
  [U S V] = svd(A);
  V = V';
  U_k = U(1:m,1:k);
  S_k = S(1:k,1:k);
  V_k = V(1:k,1:n);
  A_k = U_k*S_k*V_k;
end