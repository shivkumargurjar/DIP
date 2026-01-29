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

## 02. Histogram Equalization (Values & Image)
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
     
---

## 03. Bit Slicing

Bit slicing is a technique in digital image processing where an image is decomposed into its constituent bit planes. Each bit plane represents the binary bits at a particular position across all pixel values.  
- **Higher-order bit planes** contain most of the visual information.  
- **Lower-order bit planes** contain fine details or noise.  
- Applications: image compression, watermarking, and image enhancement.  

**Implementation:** MATLAB code extracts 8 bit planes, displays them, and allows reconstruction using all or selected planes.

---

## 04. Shannon–Fano Coding

Shannon–Fano coding is a lossless data compression algorithm. Symbols are assigned variable-length prefix codes based on their probabilities.  
- Higher probability symbols receive shorter codes.  
- Recursive partitioning of symbols creates the code tree.  
- Applications: data compression, information theory analysis.  

**Implementation:** MATLAB code assigns codes to 8 symbols (`m1`–`m8`) based on given probabilities and shows recursive computation steps.

---

## 05. Huffman Coding

Huffman coding is an optimal lossless compression algorithm that assigns variable-length prefix-free codes to symbols according to their probabilities.  
- Produces **minimum average code length**.  
- More efficient than Shannon–Fano coding.  
- Applications: file compression, communication systems, multimedia encoding.  

**Implementation:** MATLAB code includes both:  
- Step-by-step manual merging of least probable symbols  
- Automatic Huffman code generation using MATLAB's `huffmandict` function  
- Reconstruction of code table for symbols `m1`–`m8`.

---

## 06. Wavelet Transform

Wavelet Transform is a multi-resolution technique used in image processing. It decomposes an image into approximation and detail coefficients at multiple levels.  
- **Approximation (low-frequency)** contains major image structures.  
- **Details (high-frequency)** contain edges and textures.  
- Applications: image compression, denoising, feature extraction, pattern recognition.  

**Implementation:** MATLAB code performs 2-level 2D discrete wavelet transform (DWT) using `'haar'` wavelet. It displays all subbands and reconstructs the original image with minimal error.

---

## 07. Tambola (Housie) Ticket Generator
This program generates a valid **3×9 Tambola ticket** with **15 unique numbers**.  
Numbers are filled **column-wise** following standard Tambola ranges (1–9, 10–19, …, 80–90).  
Each column contains **1 or 2 numbers**, and each row is adjusted to have **exactly 5 numbers**, ensuring compliance with official Tambola rules.  
The ticket is generated **randomly** and displayed in **matrix form**.

---

## 08. Arithmetic Coding (Range-Based Digital Coding)
This program implements **Arithmetic Coding**, a method of **lossless data compression** that encodes a sequence of symbols into a **single fractional number** between 0 and 1.  
Each symbol is assigned a **probability**, and a **cumulative range** is calculated for all symbols.  
The message is encoded by **iteratively narrowing the interval** based on the symbol sequence, resulting in a final range.  
The **compressed code** is any number within this final interval, which represents the entire message efficiently.  
This method is particularly useful for **probabilistic source coding**, achieving **better compression than fixed-length codes** like Huffman for non-uniform distributions.

---

## 09. JPEG Image Compression
This program demonstrates **JPEG image compression** using both a **manual approach** and MATLAB’s **built-in functions**.  
In the manual approach, the image is first **level-shifted**, then divided into **8×8 blocks**.  
Each block undergoes a **Discrete Cosine Transform (DCT)**, followed by **quantization** using the standard JPEG quantization matrix.  
The quantized coefficients are then **dequantized** and the **inverse DCT** is applied to reconstruct the image.  
In the built-in approach, the **`imwrite` function** compresses the image directly into JPEG format at a specified quality factor.  
The results show that **compression introduces minor losses**, mainly in high-frequency components, while the visual quality remains largely preserved.

---

## 10. Hypothesis Testing (Z-Test for Statistical Decision)
This program performs **hypothesis testing** to evaluate statistical claims using the **one-sample Z-test** when the population standard deviation is known.  
Given a population mean claim, a sample mean, and the standard deviation, the program calculates the **Z-test statistic**.  
The **null hypothesis (H0)** and **alternative hypothesis (H1)** are defined according to the claim (e.g., left-tailed, right-tailed, or two-tailed test).  
The calculated Z value is then compared with the **critical Z value** at a specified significance level to **accept or reject the claim**.  
This method demonstrates how statistical evidence can be used to make **data-driven decisions** about population parameters.

