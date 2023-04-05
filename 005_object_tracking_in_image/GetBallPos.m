function [xc,yc] = GetBallPos(index)
%
%

persistent  imgBg
persistent firstRun

if isempty(firstRun)
    imgBg = imread('Img/bg.jpg'); %%첫번째로 배경 이미지를 불러옴
    firstRun=1;
end

xc = 0;
yc = 0;

imgWork = imread(['Img/',int2str(index),'.jpg'])%% 농구공이 있는 이미지 불러옴 
imshow(imgWork)

fore = imabsdiff(imgWork,imgBg); %%배경과 농구공을 분리
fore = (fore(:,:,1)>10 | fore(:,:,2)>10 | fore(:,:,3)>10);

L = logical(fore) %% fore안에 0인 원소는 false 그 이외의 원소는 True가 됨.
stats = regionprops(L,'area','centroid');
are_vector = [stats.Area];
[tmp,idx]=max(are_vector);

centroid = stats(idx(1)).Centroid;

xc = centroid(1)+15*randn;
yc = centroid(2)+15*randn;

