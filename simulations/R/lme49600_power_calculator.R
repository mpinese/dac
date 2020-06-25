power_calc = function(V_raw, V_supply, V_load_pk, Z_load, I_q, T_amb_max, T_junction_max=120)
{
    # V_raw: Input voltage to regulators, single rail (V)
    # V_supply: Regulated supply voltage, single rail (therefore total rail-to-rail voltage is 2*V_supply) (V)
    # V_load_pk: Output voltage amplitude (V)
    # Z_load: Load impedance (assumes R only) (Ohm)
    # I_q: LME49600 quiescent current (A)
    # T_amb_max: Maximum ambient temperature (degC)
    # T_junction_max: Maximum allowable junction temperature (degC)
    #
    # Returns: list with members:
    # P_supply_avg: Power output of each supply rail (W)
    # P_load_avg: Power dissipated by load (W)
    # P_amp_avg: Power dissipated by LME49600 (W)
    # P_amp_avg2: Power dissipated by LME49600, following datasheet equation (W)

    I_load_pk = V_load_pk / Z_load
    V_load_rms = 1/sqrt(2)*V_load_pk
    I_load_rms = 1/sqrt(2)*I_load_pk
    P_load_avg = V_load_rms*I_load_rms

    I_supply_rms = I_load_rms/2 + I_q
    P_supply_avg = I_supply_rms*V_supply

    P_amp_avg = P_supply_avg*2 - P_load_avg

    # LME49600 datasheet equation. Not sure how this was derived. The I_q*2*V_supply
    # is fine, that's the quiescent power.  (2*V_supply)^2/(2*pi^2*Z_load) is essentially
    # P_avg = V_RMS^2/R, where R = 2*pi^2*Z_load, which seems to assume all power is
    # dissipated in the buffer, and none in the load.  It's also independent of signal
    # power, which is really odd for class AB...
    P_amp_avg2 = I_q*2*V_supply + (2*V_supply)^2/(2*pi^2*Z_load)

    # TO-263 theta_JA on 1 oz Cu
    theta_JA_area_amp = c( 0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 12,   16)*2.54^2      # Copper heatsink area in cm^2
    theta_JA_val_amp =  c(65, 52, 43, 35, 31, 27, 25, 24, 23, 22, 20.5, 20)             # Theta_JA in degC/W
    theta_JA_to_area_amp = approxfun(theta_JA_val_amp, theta_JA_area_amp, yright = 0, rule = 2:1)

    target_theta_JA_amp = (T_junction_max - T_amb_max) / P_amp_avg
    target_theta_JA2_amp = (T_junction_max - T_amb_max) / P_amp_avg2

    heatsink_area_amp = theta_JA_to_area_amp(target_theta_JA_amp)
    heatsink_area2_amp = theta_JA_to_area_amp(target_theta_JA2_amp)

    P_reg_avg = I_supply_rms*(V_raw-V_supply)
    target_theta_JA_reg = (T_junction_max - T_amb_max) / P_reg_avg

    list(P_supply_avg = P_supply_avg, P_load_avg = P_load_avg, P_amp_avg = P_amp_avg, 
        P_reg_avg = P_reg_avg,
        target_theta_JA_amp = target_theta_JA_amp, heatsink_area_amp = heatsink_area_amp,
        target_theta_JA_reg = target_theta_JA_reg)
}


# Some representative headphones / IEMs:
#                       Impedance       Sensitivity (dB/V)  SPL @ 1.228 V_RMS
# AKG K701              62              105                 107
# Grado SR-80           32              115                 117
# Sennheiser HD600      300             97                   99
# Beyerdynamic DT880    250             102                 104
# ATH-E50               44              121                 123

# {dB/V SPL} = {dB/mW SPL} - 10*log10(Z/1000)

# Equations for SPL: SPL = sens0 + 20*log10(1.228)

# Symphony orchestra peaks at about 105 dB SPL.  All cans are capable of hitting
# that, or close to it, with 1.228 V_RMS input.  Therefore no amplification needed,
# and 1.228 V_RMS = 1.736 V_pk is sufficient.

# It looks like an impedance limit of 16 Ohms is more than sufficient.

power_calc(12, 6, 1.736, 16, 0.018, 60)

