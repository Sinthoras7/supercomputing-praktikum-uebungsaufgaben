import numpy as np
import scipy.optimize as opt
from scipy.stats import linregress
import matplotlib.pyplot as plt
from matplotlib.colors import BoundaryNorm
from PIL import Image
import os

N = np.array([14592, 20736, 25344, 29376, 32832, 35904, 38784, 41472, 43968, 46272, 48576,
              50688, 52800, 54912, 56832, 58560, 60480, 62208, 63936, 65472])

GFlops = np.array([3.20178e+02, 3.26254e+02, 3.28349e+02, 3.29645e+02, 3.30673e+02, 3.31193e+02,
                   3.31630e+02, 3.32068e+02, 3.32366e+02, 3.32690e+02, 3.33039e+02,
    3.33160e+02, 3.33358e+02, 3.33609e+02, 3.33649e+02, 3.33785e+02, 3.34109e+02, 3.34150e+02, 3.34306e+02, 3.34189e+02
# Bis 50688
])

#slope, intercept, rval, pval, stderr = linregress(N[8:], GFlops[8:])

fig,ax = plt.subplots() # figsize = (8,6)

plt.plot(N, GFlops, '.', label="Performance for different N")
#plt.plot(np.linspace(N[7], 80000, 100), slope * np.linspace(N[7], 80000, 100) + intercept)
ax.set_title(r"Number 3: Performance for different problem sizes")
ax.set_xlabel(r'Problem size $N$')
ax.set_ylabel(r'Performance in GFlops/s')
ax.hlines(352*0.95, xmin = N[0], xmax = 70000, label="y=352*0.95 GFlops/s = 95% of theoretical peak float performance"
          )
# plt.vlines(63936, ymin = 320, ymax = 335) # Mit dem Auge schauen, wo sich die Treffen
plt.rc ('xtick', labelsize = 20)
plt.rc ('ytick', labelsize = 20)
ax.grid()
ax.legend(loc="lower right")
plt.savefig("Aufgabe_3" +".svg", bbox_inches = 'tight')

plt.show()
