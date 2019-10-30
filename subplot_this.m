function[] = subplot_this(speech, range1a, range1b,range2a, range2b,range3a, range3b)
subplot(3,1,1);
x = (range1a:range1b);
y1 = speech(range1a:range1b);
plot(x,y1)
title('Subplot 1');

subplot(3,1,2);
x = (range2a:range2b);
y2 = speech(range2a:range2b);
plot(x,y2);
title('Subplot 2');

subplot(3,1,3);
x = (range3a:range3b);
y3 = speech(range3a:range3b);
plot(x,y3);
title('Subplot 3');
