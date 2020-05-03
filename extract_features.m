%==== FEATURE EXTRACTION ====%

% short-time energy
ste_male_angry   = cellfun(@short_time_energy,  audio_male_angry,   'UniformOutput', false);
ste_male_excited = cellfun(@short_time_energy,  audio_male_excited, 'UniformOutput', false);
ste_male_happy   = cellfun(@short_time_energy,  audio_male_happy,   'UniformOutput', false);
ste_male_sad     = cellfun(@short_time_energy,  audio_male_sad,     'UniformOutput', false);

% zero-crossing rate
zcr_male_angry     = cellfun(@zero_crossing_rate, audio_male_angry,   'UniformOutput', false);
zcr_male_excited   = cellfun(@zero_crossing_rate, audio_male_excited, 'UniformOutput', false);
zcr_male_happy     = cellfun(@zero_crossing_rate, audio_male_happy,   'UniformOutput', false);
zcr_male_sad       = cellfun(@zero_crossing_rate, audio_male_sad,     'UniformOutput', false);

% pitch


% spectral energy


% average short-time energy
ave_ste_male_angry   = cellfun(@mean, ste_male_angry  );
ave_ste_male_excited = cellfun(@mean, ste_male_excited);
ave_ste_male_happy   = cellfun(@mean, ste_male_happy  );
ave_ste_male_sad     = cellfun(@mean, ste_male_sad    );

% average zero-crossing rate
ave_zcr_male_angry   = cellfun(@mean, zcr_male_angry  );
ave_zcr_male_excited = cellfun(@mean, zcr_male_excited);
ave_zcr_male_happy   = cellfun(@mean, zcr_male_happy  );
ave_zcr_male_sad     = cellfun(@mean, zcr_male_sad    );