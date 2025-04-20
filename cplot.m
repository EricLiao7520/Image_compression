function cplot(filename, upper,number)
A = imread(filename);
A = im2double(A);
[R G B] = imsplit(A);
[U S1 V] = svd(R);
[U S2 V] = svd(G); 
[U S3 V] = svd(B); 
[m n]=  size(S1);
if m<n
    t = m;
else 
    t = n;
end
for i = 1:t
R1(i) = sqrt(S1(i,i));
G1(i) = sqrt(S2(i,i));
B1(i) = sqrt(S3(i,i));
end
hold on
rplot(R1, upper, number,'red');
rplot(G1, upper, number,'green');
rplot(B1, upper, number,'blue');
hold off