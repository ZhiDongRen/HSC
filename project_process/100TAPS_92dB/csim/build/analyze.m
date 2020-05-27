load input.txt
load output_double.txt
load output_fixed.txt
subplot(3,2,1);
plot(input);
title("Original Signal");
f=abs(fft(input));
subplot(3,2,2);
plot(f)
title("Frequency Spectra of Original Signal");
f=abs(fft(output_double));
subplot(3,2,3);
plot(output_double)
title("Filtered Signal (double)");
subplot(3,2,4);
plot(f)
title("Frequency Spectra of Filtered Signal (double)");
f=abs(fft(output_fixed));
subplot(3,2,5);
plot(output_fixed)
title("Filtered Signal (fixed point)");
subplot(3,2,6);
plot(f)
title("Frequency Spectra of Filtered Signal (fixed point)");

