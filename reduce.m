function  A = reduce(X, p)
 [m n] = size(X);
 r = rank(X);
 [U E V]= svd(X);
 A2 = 0;
 k = 0;
f = 1;
 for i = 1:r
     A2 = A2 + E(i,i);
 end
 for d=1:r
     A1 = 0;
  for i = 1:d
     A1 = A1 + E(i,i);
  end
  t = abs(p - (A1/A2));
    if(f > t)
        f = t;
       k = d;
  end
 end
 %V = V';
 for i = 1:k
 U1(:,i) = U(:,i);
 E1(i,i) = E(i,i);
 V1(:,i) = V(:,i);
 end
 A = U1*E1*V1';

