import matplotlib.pyplot as plt
import matplotlib.testing.compare as test
import numpy as np
from PIL import Image
import unittest

class TestImageLikeness(unittest.TestCase):
    def test_image1_and_image2(self):
        img2 = Image.open('./images/plt2.png')
        img3 = Image.open('./images/plt3.png')
        img2_arr = np.asarray(img2)
        img3_arr = np.asarray(img3)
        rms_value = test.calculate_rms(img2_arr, img3_arr)
        self.assertTrue(rms_value <= 10)


if __name__ == "__main__":
    unittest.main()