function [rate] = zero_crossing_rate(signal)

% num_crossings = sum(abs(diff(sign(frame))));
num_crossings = sum( abs( diff(sign(signal), 1, 2) ), 2 );
						% sign() converts the values to -1, 0 or 1
						% diff() takes the difference between two adjacent values
						%		arg1 - first order difference
						%		arg2 - along the second dimension
						%	differences exist only when signs change
						% asb() takes the absolute value of the difference
						%	for counting the num of changes
						% sum() num of changes

% rate of zero-crossing per second
% num / time = rate
rate = num_crossings / 0.020;

end