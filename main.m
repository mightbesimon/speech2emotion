% ELECTENG 733
% University of Auckland
%
% Emotion Recognition
% Digital Signal Processing
% Practical Implementation Assignment 2
% May 2020
%
% by simon


% housekeeping
close  all
clear; clc

% constannts
gender = {
	'male',
	'female',
	'both',
};
emotions = {
	'angry',
	'excited',
	'happy',
	'sad',
};
features = {
	'short-time energy',
	'zero-crossing rate',
	'pitch',
	'spetral energy',
};


%==== TRAINING STAGE ====%

load_audio			% LOAD AUDIO FILES
					% convert into 20ms frames

extract_features	% EXTRACT AUDIO FEATURES
					%	- short-time energy
					%	- zero-crossing rate
					%	- pitch
					%	- spetral energy

train_model			% TRAIN ESTIMATION MODEL
					% maximum likelihood estimation


%==== TESTING STAGE ====%

test_model


prediction_analysis

