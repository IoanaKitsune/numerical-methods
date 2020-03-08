function task2()
   %TODO
   
   %Am facut graficele pentru imaginile 2 si 4

   %Primul grafic:
   %A = double(imread('in/images/image4.gif'));
   %s = svd(A);
   %v = 1:length(s);
   %plot(v, s, '-b');
   %print -dpdf task2_2;

   %Al doilea grafic
   %A = double(imread('in/images/image4.gif'));
   %s = svd(A);
   %[m n] = size(A);
   %k = 1:length(s);
   %sum1 = zeros(length(s),1);
   %sum1(1) = s(1);
   %sum2 = 0;
   %y = zeros(length(s),1);
   
   %for i = 1 : min(m,n)
   %   sum2 = sum2 + s(i);
   %endfor
   %for i = 2:length(s)
   %   sum1(i) = sum1(i - 1) + s(i);
   %   y(i) = sum1(i) / sum2;
   %endfor

   %plot(k, y, '-b');
   %print -dpdf task2_4;

   %Al treilea grafic:
   %A = double(imread('in/images/image4.gif'));
   %[m n] = size(A);
   %s = svd(A);
   %len = length(s);
   %k = 1:len;

   %U = zeros(m, len);
   %S = zeros(len);
   %V = zeros(len, n);
   
   %suma = 0;
   %error = zeros(len, 1);
   %for it = 1:len
   %   [m n] = size(A);
   %   [U S V] = svd(A);
   %   V = V';
   %   U_k = U(1:m,1:k(it));
   %   S_k = S(1:k(it),1:k(it));
   %   V_k = V(1:k(it),1:n);
   %   A_k = U_k*S_k*V_k;
      
   %   suma = sum(sum((A - A_k).^2));
   %   suma = suma / (m * n);
   %   error(it) = suma;
   %endfor

   %plot(k, error, '-b');
   %print -dpdf task2_6;
   
   %Al patrulea grafic:
   A = double(imread('in/images/image4.gif'));
   [m n] = size(A);
   len = length(svd(A));
   k = 1 : len;
   y = zeros(len,1);
   for i = 1:len
      y(i) = ((m + n + 1)*k(i))/(m * n);
   endfor
   plot(k, y, '-b');
   print -dpdf task2_8;
end