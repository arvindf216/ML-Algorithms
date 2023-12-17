Observations:

Optimum learning rate obtained was 0.001 for fastest convergence. The parameters do not converge at a learning rate of 0.01, whereas it takes a long time to converge at a learning rate of 0.0001.

- At a learning rate of 0.001 and precision value of 10^(-7), Batch Gradient Descent took around 2.2 seconds to give the correct plot in my local machine.
- Stochastic Gradient Descent took 0.1 seconds but gave a very poor plot, which shows that this method is ont good to go for small dataset size.
- Finally, Normal Equation took 0.1 seconds and gave a correct plot, highly similar to the one obtained using Batch GD.  
