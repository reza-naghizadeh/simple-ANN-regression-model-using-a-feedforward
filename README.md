## Overview

This MATLAB script demonstrates the use of a feedforward neural network to approximate a nonlinear function. Specifically, it models a function defined as:

\[
t = \sin(p) + p \cdot \cos(3p)
\]

using a neural network with 18 hidden neurons. The network is trained using the resilient backpropagation (`trainrp`) algorithm and is evaluated based on its ability to fit the function.

This code was developed as part of my Artificial Neural Networks (ANN) course project at IASBS.

## Key Features
- **Function Generation**: The target function combines sinusoidal and cosine components.
- **Feedforward Neural Network**: A single hidden layer with 18 neurons.
- **Training Algorithm**: Resilient backpropagation (`trainrp`) for efficient optimization.
- **Data Splitting**: The data is randomly divided into training (60%), validation (20%), and testing (20%) sets.
- **Performance Monitoring**: Training progresses up to 1000 epochs with a maximum of 20 validation failures.

## Prerequisites
- MATLAB installed on your machine.
- The Neural Network Toolbox for MATLAB.

## Output

- A plot comparing the original function (`t`) and the neural network's approximation (`Y`).

## Customization

- **Network Size**: Modify the number of hidden neurons in the line `net = fitnet(18,'trainrp');`.
- **Training Algorithm**: Change `'trainrp'` to other algorithms like `'trainlm'` or `'trainscg'`.
- **Training Parameters**: Adjust `epochs` or `max_fail` to control the training process.

