import matplotlib.pyplot as plt
import matplotlib.testing.compare as test
import numpy as np
from PIL import Image
import unittest

class TestImageLikeness(unittest.TestCase):
    def test_image1_and_image2(self):
        our_sol = Image.open('./images/correct_solution.png')
        student_sol = Image.open('./images/student_solution.png')
        our_sol = np.asarray(our_sol)
        student_sol  = np.asarray(student_sol)
        rms_value = test.calculate_rms(our_sol, student_sol)
        self.assertTrue(rms_value <= 10)


if __name__ == "__main__":
    unittest.main()
