function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    % X is mxn matrix, y is mx1 vector, theta is nx1 vector
    % h_theta = X * theta, a mx1 vector
    % error_vector = h_theta - y, also a mx1 vector
    % theta = theta - (alpha/m)* (error_vector)*X)
    % theta = theta - ((X' * error_vector).*(alpha/m))%Rearraged to accomodate to formula
    h_theta = X * theta;
    error_vector = h_theta - y;
    theta = theta - ((X' * error_vector).*(alpha/m));
    
    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
