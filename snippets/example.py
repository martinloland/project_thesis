# -*- coding: utf-8 -*-
from numpy import cos as cos
from numpy import pi

def create(amp, hz, samplerate=100, totaltime=30):
    if len(amp) != len(hz):
        print "\nERROR: Amplitude and frequency list has to be equal length\n"
        return
    t = [ms for ms in range(0,totaltime*1000,1000/samplerate)]
    ys = [0]*len(t)
    
    for i in range(len(t)): # Each time step
        for A, freq in zip(amp,hz): # each defined sincurve
            ys[i] += A*cos(2*pi*freq*t[i]/1000)

    return t, ys