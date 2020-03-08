function [m A eigenfaces pr_img] = eigenface_core(database_path)
  
  count = numel(dir(fullfile(database_path, '*.jpg')));
  T = zeros(200*200,count);
  m = zeros(200*200,1);
  for i = 1:count
    file = sprintf('/%d', i);
    file = strcat(file, '.jpg');
    file = strcat(database_path, file);
    image = double(rgb2gray(imread(file)));
    T(:, i) = reshape(image', [200 * 200], [1]);
  endfor
  m = mean(T,2);
  A = T - m;
  I = A' * A;
  [V S] = eig(I);
  [S perm] = sort(diag(S), 'descend');
  S = S(S > 1);
  k = size(S, 1);
  V = V(:, perm);
  V = V(:, 1:k);
  eigenfaces = A*V;
  pr_img = eigenfaces' * A;
  
end