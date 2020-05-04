%==== FEATURE EXTRACTION ====%

% short-time energy
% feature_male(feature)
% feature(gender, feature) gender = male, female
ste_male = cellfun(@short_time_energy,  audio_male, 'UniformOutput', false);

% zero-crossing rate
zcr_male = cellfun(@zero_crossing_rate, audio_male, 'UniformOutput', false);

% pitch


% spectral energy


% average short-time energy
% ave_feature_male(feature)
% ave_feature(gender, feature)
ave_ste_male = cellfun(@mean, ste_male);

% average zero-crossing rate
ave_zcr_male = cellfun(@mean, zcr_male);