import numpy as np
import matplotlib.pyplot as plt


number_of_nodes = np.array([1, 2, 4, 8, 16])

GFlops = np.array([5.98475e+02, 1.09448e+03, 2.62401e+03, 5.07126e+03, 9.38822e+03
])


fig, ax = plt.subplots()

ax.set_title(r"Number 6: Performance of a different number of nodes")
ax.set_xlabel(r"Number of nodes $n$")#
ax.set_ylabel(r"Performance in GFlop/s")
ax.grid()
#  ax.legend()
ax.plot(number_of_nodes, GFlops, 'o')


plt.tight_layout()

plt.savefig("Aufgabe_6"+".svg", dpi=300)
plt.show()
