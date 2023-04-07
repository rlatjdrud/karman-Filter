import numpy as np
from sympy import *

dt = symbols('dt')
a = Matrix([[1,dt,0,0],
              [0,1,0,0],
              [0,0,1,dt],
              [0,0,0,1]])

H = Matrix([[1,0,0,0],
             [0,0,1,0]])

H1 = Matrix([[0,1,0,0],
             [0,0,0,1]])
Q = np.eye(4)

P = 100*np.eye(4)

Pp = a*P*np.transpose(a)+Q

R=50*eye(2)

b=(H*Pp*H.transpose()+R)
c=b.inv()
print('Pp:')
print(np.array(Pp))
print('\n')

print('Pp*H\':')
print(np.array(Pp*H.transpose()))
print('\n')

print('Pp*H1\':')
print(np.array(Pp*H1.transpose()))
print('\n')

print('H*Pp*H\'+R:')
print(np.array(H*Pp*H.transpose()+R))
print('\n')

print('H1*Pp*H1\'+R:')
print(np.array(H1*Pp*H1.transpose()+R))
print('\n')

print('INV(H*Pp*H\'+R:)')
print(np.array(c))
print('\n')

print('k : ')
print(np.array(Pp*H.transpose()*c))

