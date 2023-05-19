import numpy as np
import scipy.optimize as opt
from scipy.stats import linregress
import matplotlib.pyplot as plt
from matplotlib.colors import BoundaryNorm
from PIL import Image
import os

NB = np.array([32*(i+1) for i in range(32)])

GFlops = np.array([1.69763e+02, 2.78883e+02, 3.12497e+02, 3.22630e+02, 3.27859e+02, 3.33080e+02, 3.18223e+02, 3.22711e+02, 3.28030e+02, 3.28950e+02, 3.31591e+02, 3.32606e+02, 3.25862e+02, 3.28796e+02, 3.27181e+02, 3.30647e+02, 3.30198e+02, 3.31881e+02, 3.27809e+02, 3.25722e+02, 3.26803e+02, 3.31023e+02, 3.30652e+02, 3.32239e+02, 3.24675e+02, 3.25813e+02, 3.29419e+02, 3.29087e+02, 3.29633e+02, 3.30720e+02, 3.25493e+02, 3.28088e+02
])



#slope, intercept, rval, pval, stderr = linregress(N[8:], GFlops[8:])

fig,ax = plt.subplots() # figsize = (8,6)

plt.plot(NB, GFlops, '.', label="Performance for different blocking-factors")
# #plt.plot(np.linspace(N[7], 80000, 100), slope * np.linspace(N[7], 80000, 100) + intercept)
ax.set_title(r"Number 5: Performance for different blocking-factors")
ax.set_xlabel(r'Blocking-factor $N_B$')
ax.set_ylabel(r'Performance in GFlops/s')
# ax.hlines(352*0.95, xmin = N[0], xmax = 70000, label="y=352*0.95 GFlops/s = 95% of theoretical peak float performance"
#           )
# plt.vlines(63936, ymin = 320, ymax = 335) # Mit dem Auge schauen, wo sich die Treffen
# plt.rc ('xtick', labelsize = 20)
# plt.rc ('ytick', labelsize = 20)
ax.grid()
ax.legend(loc="lower right")
plt.savefig("Aufgabe_5" +".svg", bbox_inches = 'tight')

plt.show()
