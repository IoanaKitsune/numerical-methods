function [min_dist output_img_index] = face_recognition(image_path, m, A, eigenfaces, pr_img)
  
  image = double(rgb2gray(imread(image_path)));
  vect = reshape(image', [200 * 200], [1]);
  T = vect - m;
  pr_test_img = eigenfaces' * T;
  min_dist = inf;

  for i = 1:10
    if min_dist > norm(pr_img(:,i) - pr_test_img);
      min_dist = norm(pr_img(:,i) - pr_test_img);
      output_img_index = i;
    endif
  endfor
end