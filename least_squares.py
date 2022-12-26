import matplotlib.pyplot as plt
import numpy as np
import math
from scipy.optimize import curve_fit

xdata = np.array([0.5,0.75,1.1,1.5,1.9])
ydata = np.array([2.92,3.15,3.29,3.5,3.81])

def func(x, a, b):
    return a*x+ b

popt, pcov = curve_fit(func, xdata, ydata)

print ("The optimal parameters of the line are:" + str(popt))

plt.figure()
plt.plot(xdata, ydata, 'ko', label="Original Data")
plt.plot(xdata, func(xdata, *popt), 'r-', label="Fitted Curve")
plt.ylabel('Arduino voltage (V)')
plt.xlabel('Alcohol concentration  (g/l)')
plt.legend(loc='best')
plt.show()