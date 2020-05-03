function [likelihood] = naive_bayes(test_data, phat)


% unpacking %
% phat into mean(mu) and standard deviation(sd)
mu = phat(1);
sd = phat(2);

likelihood = exp(-0.5 * (test_data-mu) .^ 2 / (sd^2)) / (sd * sqrt(2*pi));

end