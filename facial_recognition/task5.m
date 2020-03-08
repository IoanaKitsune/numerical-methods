function task5()
  %Primul grafic:

  %k = 100
  %[A_k S] = task3('in/images/image4.gif', k);
  %[m n] = size(A_k);
  %y = diag(S);
  %x = 1:length(y);
  %plot(x,y,'-b');
  %print -dpdf task5_2;

  %Al doilea grafic:
  
   %k = 100;
   %[A_k S] = task3('in/images/image4.gif', k);
   %s = diag(S);
   %[m n] = size(A_k);
   %t = 1:length(s);
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

   %plot(t, y, '-b');
   %print -dpdf task5_4;
   
   %Al treilea grafic:
   
   %t = 130;
   %A = double(imread('in/images/image4.gif'));
   %[m n] = size(A);
   %k = 1 : t;
   %suma = 0;
   %error = zeros(t, 1);
   %for it = 1:t
            
   %   for i = 1 : m
   %      miu(i) = sum(A(i,:))/n;
   %   endfor
   %   miu = sum(A,2) / n;
   %   A = A - miu;

   %   Z = A' ./(sqrt(n-1));
   %   [U S V] = svd(Z);
   %   W = V(:,1:it);
   %   Y = W'*A;
   %   X = W*Y;
   %   A_k = X + miu;

   %   suma = sum(sum((A - A_k).^2));
   %   suma = suma / (m * n);
   %   error(it) = suma;
   %endfor

   %plot(k, error, '-b');
   %print -dpdf task5_6;
   
   %Al patrulea grafic:
   t = 100;
   [A_k S] = task3('in/images/image4.gif', t);
   [m n] = size(A_k);
   len = length(diag(S));
   k = 1 : len;
   y = zeros(len,1);
   for i = 1:len
      y(i) = ((2 * k(i) + 1))/n;
   endfor
   
   plot(k, y, '-b');
   print -dpdf task5_8;
   

end