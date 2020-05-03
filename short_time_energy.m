function [energy_db] = short_time_energy(signal)

% energy = sum(frame .^ 2)
% signal_db = abs(mag2db( abs(signal) ));
% signal_db( signal_db==Inf ) = 0;

energy_db = mag2db(sum(signal .^ 2, 2));
% energy_db = sum(signal .^ 2, 2);
% energy_db = sum(signal_db .^ 2, 2);
						% sum() sum of amplitutde^2
						% mag2db() in decibels

end