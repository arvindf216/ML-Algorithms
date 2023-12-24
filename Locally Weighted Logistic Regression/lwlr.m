function y = lwlr(X_train, y_train, x, tau)

%%% YOUR CODE HERE

n = size(X_train,2);

%%% Adding x_0 = 1
x = [1,x'];
one = ones(size(y_train'))';
X_train = [one, X_train];

%%% difference array and weights array 

diff = X_train - x;
diff = sum(diff.^2 , 2);
w = exp((-1/(2*tau^2))*diff);
lmbda = 1e-4;

%%% initializing theta and G

theta = zeros(n+1,1);
G = ones(n+1,1);

%%% newton's method
while norm(G)>1e-8
    hypot = (1 ./ (1 + exp( -1*X_train*theta )));
    D = diag(-1*w.*(hypot).*(1-hypot));
    H = X_train'*D*X_train - lmbda*eye(n+1);
    z = w.*(y_train-hypot);
    G = X_train'*z - lmbda*theta;
    theta = theta - H\G;
end

%%% prediction
y = (x*theta)>0;
