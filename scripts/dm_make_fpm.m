function fpm = dm_make_fpm(maps)

% generate the mpm for a subset of the binary digitmaps;
% Input:    maps    - 3d array of maps (n_rois x n_digits x n_subjets);
% Output:   fpm     - vector array of dominant digit (n_rois x n_digits);
%
% go may 2020

fpm = mean(maps,3);