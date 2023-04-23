import numpy as np
# import matplotlib.pyplot as plt

def compute_N(x, P, Q):
    return np.sqrt(x*P*Q*4*(2**30))

memory_usage_list = np.linspace(0.05, 1, 20)
# print(memory_usage_list)

N_list = np.int64(compute_N(memory_usage_list, 1, 1))

# print(N_list)


blocking_factor = 192
n_list_divisible = blocking_factor * np.int64(np.round(np.array(N_list) / blocking_factor))

print(n_list_divisible)
