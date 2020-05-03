function [frames] = divide_signal(signal)

fs       = 44100;		% value specified in documentation
duration = 0.020; 		% value specified in documentation
spf = fs * duration;	% sameples per frame

num_frames = fix(numel(signal)/spf);

frames = reshape(signal(1:num_frames*spf), [num_frames, spf]);
						% reshapes the signal from [num_sample x 1]
						% to 2D matrix [num_frames x sample_per_frame]
						% each row is 1 frame (20ms)

end