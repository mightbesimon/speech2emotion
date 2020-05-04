




%==== male angry ====%

% feature = ste
% likelihood_ste_male(emotion_test_data, emotion_model, audio_file_number)
% likelihood_male(emotion_test_data, feature, emotion_model, file_number)
% likelihood = (gender, emotion_test_data, feature, emotion_model, file_number) gender = male,female,both
likelihood_ste_male(1, 1, 1:12) = naive_bayes(ave_ste_male(1, train_index+1:end), phat_ste_male(1, :));
likelihood_ste_male(1, 2, 1:12) = naive_bayes(ave_ste_male(1, train_index+1:end), phat_ste_male(2, :));
likelihood_ste_male(1, 3, 1:12) = naive_bayes(ave_ste_male(1, train_index+1:end), phat_ste_male(3, :));
likelihood_ste_male(1, 4, 1:12) = naive_bayes(ave_ste_male(1, train_index+1:end), phat_ste_male(4, :));

% [~, idx(1,:)] = max(likelihood_ste_male_angry);
% emotions(idx)
% hit_rate_male(1) = numel(idx( idx==1 )) / numel(idx)


%==== male excited ====%

% feature = ste
likelihood_ste_male(2, 1, 1:12) = naive_bayes(ave_ste_male(2, train_index+1:end), phat_ste_male(1, :));
likelihood_ste_male(2, 2, 1:12) = naive_bayes(ave_ste_male(2, train_index+1:end), phat_ste_male(2, :));
likelihood_ste_male(2, 3, 1:12) = naive_bayes(ave_ste_male(2, train_index+1:end), phat_ste_male(3, :));
likelihood_ste_male(2, 4, 1:12) = naive_bayes(ave_ste_male(2, train_index+1:end), phat_ste_male(4, :));

% [~, idx(2,:)] = max(likelihood_ste_male_excited);
% emotions(idx)
% hit_rate_male(2) = numel(idx( idx==2 )) / numel(idx)


%==== male happy ====%

% feature = ste
likelihood_ste_male(3, 1, 1:12) = naive_bayes(ave_ste_male(3, train_index+1:end), phat_ste_male(1, :));
likelihood_ste_male(3, 2, 1:12) = naive_bayes(ave_ste_male(3, train_index+1:end), phat_ste_male(2, :));
likelihood_ste_male(3, 3, 1:12) = naive_bayes(ave_ste_male(3, train_index+1:end), phat_ste_male(3, :));
likelihood_ste_male(3, 4, 1:12) = naive_bayes(ave_ste_male(3, train_index+1:end), phat_ste_male(4, :));

% [~, idx(3,:)] = max(likelihood_ste_male_happy);
% emotions(idx)
% hit_rate_male(3) = numel(idx( idx==3 )) / numel(idx)


%==== male sad ====%

% feature = ste
likelihood_ste_male(4, 1, 1:12) = naive_bayes(ave_ste_male(4, train_index+1:end), phat_ste_male(1, :));
likelihood_ste_male(4, 2, 1:12) = naive_bayes(ave_ste_male(4, train_index+1:end), phat_ste_male(2, :));
likelihood_ste_male(4, 3, 1:12) = naive_bayes(ave_ste_male(4, train_index+1:end), phat_ste_male(3, :));
likelihood_ste_male(4, 4, 1:12) = naive_bayes(ave_ste_male(4, train_index+1:end), phat_ste_male(4, :));

% [~, idx(4,:)] = max(likelihood_ste_male_sad);
% emotions(idx)
% hit_rate_male(4) = numel(idx( idx==4 )) / numel(idx)
[~, idx] = max(likelihood_ste_male, [], 2);


