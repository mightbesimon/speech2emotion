

feature  = 'ste'
num_bars = 8
figure('Name', [feature ' histogram'])
hold on
histogram(ave_ste_male_angry,   num_bars)
histogram(ave_ste_male_excited, num_bars)
histogram(ave_ste_male_happy,   num_bars)
histogram(ave_ste_male_sad,     num_bars)