function [MPM, bins] = dm_make_mpm(maps)

% generate the mpm for a subset of the binary digitmaps;
% Input:    maps    - 3d array of maps (n_rois x n_digits x n_subjets);
% Output:   MPM     - vector array of dominant digit (n_rois x 1);
%           bins    - binarised digits maps (n_rois x n_digits);
% go may 2020


fpm = mean(maps,3);
fpm_sum = sum(fpm,2);
mask = fpm_sum<0.5;

[val MPM] = max(fpm,[],2);
MPM(mask) = 0;

bins = zeros(size(maps,1),size(maps,2));

for ii = 1:size(maps,2)
    bins(MPM==ii,ii) = 1;
end