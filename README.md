# DIP  
**Digital Image Processing**

---

## 00. Certificate Upload
- **MATLAB Onramp:**  
  https://matlabacademy.mathworks.com/progress/share/certificate.html?id=709f15dd-a8ab-460c-aeef-5c5b1b88504b

- **Simulink Onramp:**  
  https://matlabacademy.mathworks.com/progress/share/certificate.html?id=e4268a38-b00e-423d-a433-77f08c7710b3

---

## 01. MATLAB Basic Operations
- Generate an **8×8 matrix** with values in the range **[0, 255]**
- Image operations:
  - Read and display image
  - RGB to grayscale conversion
  - Black & white image conversion
  - Histogram equalization using `histeq()` command
    
---

## 03. Histogram Equalization (Values & Image)
- Histogram equalization performed **manually without using `histeq()`**
- Steps followed:
  - Calculation of histogram from pixel intensity values
  - Computation of PDF and CDF
  - Intensity transformation using CDF
- Histogram equalization also performed using MATLAB’s **built-in `histeq()` function**
- Comparison shown between:
  - Original grayscale image
  - Manually equalized image
  - `histeq()` equalized image
  - Corresponding histograms
- This experiment demonstrates contrast enhancement on both **intensity values** and **image level**
