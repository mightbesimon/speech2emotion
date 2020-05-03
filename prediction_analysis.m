



figure('Name', 'hit rate bar graph')
hold on

title('hit rate (%) male')
ylim([0,120])

bar(	...
	categorical(emotions), 		...
	[	...
		hit_rate_male_angry,	...
		hit_rate_male_excited,	...
		hit_rate_male_happy,	...
		hit_rate_male_sad,		...
	]*100,	...
	.5	...
)