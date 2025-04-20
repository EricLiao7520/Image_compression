function A = image_reduce(filename, rpercent, gpercent, bpercent)
A = imread(filename);
A = im2double(A);
%image processing toolbox
[R G B] = imsplit(A);
 R = reduce(R,rpercent);
 G = reduce(G,gpercent);
 B = reduce(B,bpercent);
 A(:,:,1) = R;
 A(:,:,2) = G;
 A(:,:,3) = B;
imshow(A);
%C{2} = X;
%montage(C);