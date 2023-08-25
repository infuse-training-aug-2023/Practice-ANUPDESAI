import numpy as np
from PIL import Image
import os
import sys

args = sys.argv
exec = os.environ.get('EXEC')
exec = True
if exec:
    arr = np.array([1, 2, 3, 4, 5,0])
    print('before manipulation')
    print(arr)
    print("")

    arr = np.reshape(arr, (2, 3))
    arr = np.resize(arr, (3, 3))

    print('after manipulation')
    print(arr)

    image = Image.open("./image.jpg")


    image = image.resize((int(sys.argv[1]), int(sys.argv[2])))
    image = image.rotate(int(sys.argv[3]))

    image.save("new_image.jpg")
