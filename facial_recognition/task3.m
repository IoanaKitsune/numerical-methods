function [A_k S] = task3(image, k)
  A = double(imread(image));
  [m n] = size(A);
  A_k = zeros(m,n);
  S = zeros(k);
  miu = zeros(m, 1);
  
  for i = 1 : m
    miu(i) = sum(A(i,:))/n;
  endfor
  A = A - miu;

  Z = A' ./(sqrt(n-1));
  [U S V] = svd(Z);
  W = V(:,1:k);
  Y = W'*A;
  X = W*Y;
  A_k = X + miu;
endfunction