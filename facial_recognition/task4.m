function [A_k S] = task4(image, k)
  A = double(imread(image));
  [m n] = size(A);
  A_k = zeros(m,n);
  miu = zeros(m, 1);
  
  for i = 1 : m
    miu(i) = sum(A(i,:)) ./ n;
  endfor
  
  A = A - miu;
  
  Z = (A * A') / (n - 1);
  [V S] = eig(Z); 
  
  [S perm] = sort(diag(S), 'descend');
  V = V(:, perm);
  W = V(:,1:k);
  Y = W'*A;
  A_k = W*Y + miu;
endfunction