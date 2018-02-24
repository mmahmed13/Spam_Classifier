function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

C = 1;
sigma = 0.3;

vec = [0.01 0.03 0.1 0.3 1 3 10 30];
err = zeros(8,8);
for i=1:8
    for j=1:8
        
        model= svmTrain(X, y, vec(1,i), @(x1, x2) gaussianKernel(x1, x2, vec(1,j)));
        predictions = svmPredict(model, Xval);
        err(i,j) = mean(double(predictions ~= yval));
    end
end

minError = min (err(:));
[i,j] = find (err==minError);
C = vec(1,i);
sigma = vec(1,j);

end
