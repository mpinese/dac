calcV = function(R1, R2)
{
    VrefTyp = 1.188
    VrefMin = 1.
    IfbTyp = 3e-9         # nA, into the device

    Vout = ((R2+R1)*VrefTyp+IfbTyp*R1*R2)/R2
    Idiv = Vout/(R1+R2)
    IR2 = VrefMin/R2

    list(Vout = Vout, Imin = pmin(abs(Idiv), abs(IR2)))
}


jlc_resistors = c(10, 12, 15, 18, 22, 27, 33, 39, 47, 56, 68, 100, 120, 150, 220, 330, 470)*1000

target_voltage = 5
target_voltage_tolerance = 0.05

test = expand.grid(
    R1s1 = jlc_resistors, 
    R1s2p1 = c(0, jlc_resistors),
    R1s2p2 = c(jlc_resistors, Inf), 
    R2s1 = jlc_resistors, 
    R2s2p1 = c(0, jlc_resistors),
    R2s2p2 = c(jlc_resistors, Inf))
test$R1s2 = 1/(1/test$R1s2p1 + 1/test$R1s2p2)
test$R2s2 = 1/(1/test$R2s2p1 + 1/test$R2s2p2)
test$R1 = test$R1s1 + test$R1s2
test$R2 = test$R2s1 + test$R2s2
test$ndevices = (test$R1s1 != 0) + (test$R1s2p1 != 0) + is.finite(test$R1s2p2) + (test$R2s1 != 0) + (test$R2s2p1 != 0) + is.finite(test$R2s2p2)
temp = calcV(test$R1, test$R2)
test$Vout = temp$Vout
test$Imin = temp$Imin
test = test[test$Imin >= 5.5e-6 & test$Imin <= 20e-6 & test$Vout >= target_voltage-target_voltage_tolerance & test$Vout <= target_voltage+target_voltage_tolerance & test$ndevices < 4,]
test[order(test$ndevices, test$R1+test$R2),]
plot(test$R1, test$R2, col = test$ndevices)
