function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.
% hypothesis function h_theta = theta'*X
% Since X is (m x n) matrix and theta = n x 1 matrix, we will need to multiply X and theta to get m X 1 vector
h_theta = X * theta;

%Cost function J_theta = 1/(2*m) * sum (error_sqr) 
% error_sqr = h_theta - y
J = (1/(2*m))* (h_theta - y);
% =========================================================================

end
