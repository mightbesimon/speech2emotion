




%==== male angry ====%

% feature = ste
likelihood_ste_male_angry(1,1:12) = naive_bayes(ave_ste_male_angry(index_male_angry+1:end), phat_ste_male_angry  );
likelihood_ste_male_angry(2,1:12) = naive_bayes(ave_ste_male_angry(index_male_angry+1:end), phat_ste_male_excited);
likelihood_ste_male_angry(3,1:12) = naive_bayes(ave_ste_male_angry(index_male_angry+1:end), phat_ste_male_happy  );
likelihood_ste_male_angry(4,1:12) = naive_bayes(ave_ste_male_angry(index_male_angry+1:end), phat_ste_male_sad    );

[p, idx] = max(likelihood_ste_male_angry);
emotions(idx)


%==== male excited ====%

% feature = ste
likelihood_ste_male_excited(1,1:12) = naive_bayes(ave_ste_male_excited(index_male_excited+1:end), phat_ste_male_angry  );
likelihood_ste_male_excited(2,1:12) = naive_bayes(ave_ste_male_excited(index_male_excited+1:end), phat_ste_male_excited);
likelihood_ste_male_excited(3,1:12) = naive_bayes(ave_ste_male_excited(index_male_excited+1:end), phat_ste_male_happy  );
likelihood_ste_male_excited(4,1:12) = naive_bayes(ave_ste_male_excited(index_male_excited+1:end), phat_ste_male_sad    );

[p, idx] = max(likelihood_ste_male_excited);
emotions(idx)


%==== male happy ====%

% feature = ste
likelihood_ste_male_happy(1,1:12) = naive_bayes(ave_ste_male_happy(index_male_happy+1:end), phat_ste_male_angry  );
likelihood_ste_male_happy(2,1:12) = naive_bayes(ave_ste_male_happy(index_male_happy+1:end), phat_ste_male_excited);
likelihood_ste_male_happy(3,1:12) = naive_bayes(ave_ste_male_happy(index_male_happy+1:end), phat_ste_male_happy  );
likelihood_ste_male_happy(4,1:12) = naive_bayes(ave_ste_male_happy(index_male_happy+1:end), phat_ste_male_sad    );

[p, idx] = max(likelihood_ste_male_happy);
emotions(idx)


%==== male sad ====%

% feature = ste
likelihood_ste_male_sad(1,1:12) = naive_bayes(ave_ste_male_sad(index_male_sad+1:end), phat_ste_male_angry  );
likelihood_ste_male_sad(2,1:12) = naive_bayes(ave_ste_male_sad(index_male_sad+1:end), phat_ste_male_excited);
likelihood_ste_male_sad(3,1:12) = naive_bayes(ave_ste_male_sad(index_male_sad+1:end), phat_ste_male_happy  );
likelihood_ste_male_sad(4,1:12) = naive_bayes(ave_ste_male_sad(index_male_sad+1:end), phat_ste_male_sad    );

[p, idx] = max(likelihood_ste_male_sad);
emotions(idx)


