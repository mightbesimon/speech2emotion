




%==== male angry ====%

% feature = ste
% likelihood_ste_angry_male_angry
% likelihood_ste_happy_male_angry
likelihood_ste_male_angry(1,1:12) = naive_bayes(ave_ste_male_angry(index_male_angry+1:end), phat_ste_male_angry  );
likelihood_ste_male_angry(2,1:12) = naive_bayes(ave_ste_male_angry(index_male_angry+1:end), phat_ste_male_excited);
likelihood_ste_male_angry(3,1:12) = naive_bayes(ave_ste_male_angry(index_male_angry+1:end), phat_ste_male_happy  );
likelihood_ste_male_angry(4,1:12) = naive_bayes(ave_ste_male_angry(index_male_angry+1:end), phat_ste_male_sad    );

% cat(1, likelihood_ste_male_angry);
[p, idx] = max(likelihood_ste_male_angry);
emotions(idx)


% feature = zcr

