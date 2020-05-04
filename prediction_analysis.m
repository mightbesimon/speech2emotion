





emotionIdx(1:numel(emotions), 1) = 1:numel(emotions);
hit_rate_male = sum(idx==emotionIdx, 2) / size(idx, 2)


figure('Name', 'hit rate bar graph')
hold on

title('hit rate (%) male')
ylim([0,120])

bar(	...
	categorical(emotions), 		...
	hit_rate_male*100,	...
	.5	...
)