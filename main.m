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
 close all 
fclose all
clear; clc

% constannts
emotions = {
	'angry',
	'excited',
	'happy',
	'sad',
}


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



