sim_jitter = function(samptime, samprate, bitdepth, signal_function, signal_params, jitter_rms)
{
    # samptime: sampling time (s)
    # samprate: sampling rate (samples/s)
    # bitdepth: sample bit depth
    # signal_function: function of the form f(t, params) that gives the ideal signal value at time t
    # signal_params: params as passed to the signal function.
    # jitter_rms: Jitter is distributed as N(0, jitter_rms)
    nsamps = samptime*samprate + 1
    jitter = rnorm(nsamps, mean = 0, sd = jitter_rms)
    x = seq(0, samptime, length.out = nsamps)
    xj = x + jitter
    y = do.call(signal_function, list(t = xj, params = signal_params))
    if (is.finite(bitdepth))
        yd = round(y * 2^(bitdepth-1))/2^(bitdepth-1)
    else
        yd = y
    yd
}


signal_function.1sine = function(t, params)  sin(t*2*pi*params$freq1)
signal_function.2sine = function(t, params) (sin(t*2*pi*params$freq1) + sin(t*2*pi*params$freq2))/2
signal_function.complex = function(t, params)
{
    freqs = runif(params$complex.n, params$complex.lower, params$complex.upper)
    phases = runif(params$complex.n, 0, 2*pi)
    x = 0*t
    for (i in 1:params$complex.n)
        x = x + sin(t*2*pi*freqs[i] + phases[i])
    x / params$complex.n
}


calc_spectrum = function(signal, samprate)
{
    # Blackman–Nuttall window
    N = length(signal)-1
    window_x = seq(-N/2, N/2, length.out = N)
    window_n = seq(0, N)
    window_y = 0.3635819 - 0.4891775*cos(2*pi*window_n/N) + 0.1365995*cos(4*pi*window_n/N) - 0.0106411*cos(6*pi*window_n/N)
    windowed_signal = signal*window_y

    ft = fft(windowed_signal)
    y = abs(ft[1:((length(ft)+1)/2)])
    x = seq(0, samprate/2, length.out = length(y))
    y.db = 20*log10(y)
    y.db.rel = y.db - max(y.db)
    cbind(freq = x, spec = y.db.rel)
}


test.samprate = 100000
test.params = list(
    freq1 = 1000,
    freq2 = 1100,
    complex.n = 1000,
    complex.lower = 50,
    complex.upper = 5000)
test.samptime = 1
test.bitdepth = Inf

library(plyr)
design = expand.grid(signal_function = c("signal_function.1sine", "signal_function.2sine", "signal_function.complex"), jitter_rms = c(0, 5e-12, 100e-12, 2000e-12), stringsAsFactors = FALSE)
spectra = ddply(design, colnames(design), function(d) calc_spectrum(sim_jitter(test.samptime, test.samprate, test.bitdepth, d$signal_function, test.params, d$jitter_rms), test.samprate))

library(ggplot2)

ggplot(spectra[spectra$freq < 20000,], aes(x = freq, y = spec)) + geom_line() + facet_grid(signal_function ~ factor(jitter_rms)) + theme_bw() + ylim(-200, 0)
ggplot(spectra[spectra$freq < 1200,], aes(x = freq, y = spec)) + geom_line() + facet_grid(signal_function ~ factor(jitter_rms)) + theme_bw() + ylim(-200, 0)

# Conclusion is that the 5 ps RMS jitter as provided by the Kyocera K series oscillators is good enough.
# KC3225K24.5760C1GE00
