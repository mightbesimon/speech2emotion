



% percentage of data for training
% (the rest for testing)
train_ratio = 0.8;

% index at 80%
train_index = ceil( size(audio_male, 2) * train_ratio );



% maximum likelihood estimation
% using the first 80% of data
% short-time energy
% phat_ste_male(emotion, file_number)
% phat_male(emotion, feature, file_number)
% phat(gender, emotion, feature, file_numer) gender = male, female, both
phat_ste_male(1, :) = mle(ave_ste_male(1, 1:train_index));
phat_ste_male(2, :) = mle(ave_ste_male(2, 1:train_index));
phat_ste_male(3, :) = mle(ave_ste_male(3, 1:train_index));
phat_ste_male(4, :) = mle(ave_ste_male(4, 1:train_index));

% zero-crossing rate
phat_zcr_male(1, :) = mle(ave_zcr_male(1, 1:train_index));
phat_zcr_male(2, :) = mle(ave_zcr_male(2, 1:train_index));
phat_zcr_male(3, :) = mle(ave_zcr_male(3, 1:train_index));
phat_zcr_male(4, :) = mle(ave_zcr_male(4, 1:train_index));


P_prior = 0.25;

