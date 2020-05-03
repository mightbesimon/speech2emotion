



% percentage of data for training
% (the rest for testing)
train_ratio = 0.8;

% index at 80%
index_male_angry   = ceil( numel(ave_ste_male_angry)   * train_ratio );
index_male_excited = ceil( numel(ave_ste_male_excited) * train_ratio );
index_male_happy   = ceil( numel(ave_ste_male_happy)   * train_ratio );
index_male_sad     = ceil( numel(ave_ste_male_sad)     * train_ratio );



% maximum likelihood estimation
% using the first 80% of data
% short-time energy
phat_ste_male_angry   = mle(ave_ste_male_angry  (1:index_male_angry  ));
phat_ste_male_excited = mle(ave_ste_male_excited(1:index_male_excited));
phat_ste_male_happy   = mle(ave_ste_male_happy  (1:index_male_happy  ));
phat_ste_male_sad     = mle(ave_ste_male_sad    (1:index_male_sad    ));

% zero-crossing rate
phat_zcr_male_angry   = mle(ave_zcr_male_angry  (1:index_male_angry  ));
phat_zcr_male_excited = mle(ave_zcr_male_excited(1:index_male_excited));
phat_zcr_male_happy   = mle(ave_zcr_male_happy  (1:index_male_happy  ));
phat_zcr_male_sad     = mle(ave_zcr_male_sad    (1:index_male_sad    ));


P_prior = 0.25;

