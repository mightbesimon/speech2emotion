% LOAD AUDIO FILES
%
% read the audio files and
% convert into 20ms frames


% define directories
dirAudio  = pwd;							% dir path to male/female folders
dirMale   = fullfile(dirAudio, 'male');	% male folder
dirFemale = fullfile(dirAudio, 'female');	% female folder


% read audio files
audio_male_angry   = read_audio(dirMale, 'angry'  );
audio_male_excited = read_audio(dirMale, 'excited');
audio_male_happy   = read_audio(dirMale, 'happy'  );
audio_male_sad     = read_audio(dirMale, 'sad'    );

% audio_female_angry   = read_audio(dirFemale, 'angry'  );
% audio_female_excited = read_audio(dirFemale, 'excited');
% audio_female_happy   = read_audio(dirFemale, 'happy'  );
% audio_female_sad     = read_audio(dirFemale, 'sad'    );


% convert signals to frames of 20ms
audio_male_angry    = cellfun(@divide_signal, audio_male_angry,   'UniformOutput', false);
audio_male_excited  = cellfun(@divide_signal, audio_male_excited, 'UniformOutput', false);
audio_male_happy    = cellfun(@divide_signal, audio_male_happy,   'UniformOutput', false);
audio_male_sad      = cellfun(@divide_signal, audio_male_sad,     'UniformOutput', false);

% audio_female_angry    = cellfun(@divide_signal, audio_female_angry,   'UniformOutput', false);
% audio_female_excited  = cellfun(@divide_signal, audio_female_excited, 'UniformOutput', false);
% audio_female_happy    = cellfun(@divide_signal, audio_female_happy,   'UniformOutput', false);
% audio_female_sad      = cellfun(@divide_signal, audio_female_sad,     'UniformOutput', false);