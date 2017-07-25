function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

reg_param = (lambda / (2 * m)) * sumsq(theta(2:end,:));

J = (1 / (2 * m)) * sumsq((X * theta - y)) + reg_param;

grad0 = (1 / m) * X' * (X * theta - y);
gradj = (1 / m) * X(:,2:size(theta))' * (X * theta - y) + (lambda / m) * theta(2:size(theta));
grad = [grad0(1); gradj];


% =========================================================================

grad = grad(:);

end
