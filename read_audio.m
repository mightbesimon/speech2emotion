function [audio] = read_audio(directory, emotion)

% get filenames
files     = dir(fullfile(directory, ['*' emotion '*.wav']));
filenames = string(fullfile(directory, {files.name}));

% read audio
audio = cellfun(@audioread, filenames, 'UniformOutput', false);

end