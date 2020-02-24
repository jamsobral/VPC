function [img1] = ImageFilter(img0, h)
    size_matrix = size(h);
    x = fix(size_matrix(1)/2);
    y = fix(size_matrix(1)/2);
    %zeros around image with modular matrix
    B = padarray(img0,[x y], 0);
    %allocate mem for output img1
    %img1 = Zeros(size(img0));               
    %convultion
    for i = x:size(B,1)-x                   %first dimension
        for j = y:size(B,2)-y               %second dimension
            Temp = B(i:i+x,j:j+y);
            img1(i,j) = sum(Temp(:));
        end
    end
end