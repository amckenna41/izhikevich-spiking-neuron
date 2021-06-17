# Implementation of an Izhikevich Spiking Neuron model using Simulink and Xilinx tools. 

Implementing a spiking neuron model using Simulink components and realising it on an FPGA accelerator using Xilinx System Generator. 

Introduction
------------
Neuromorphic computer architectures attempt to model the behaviour of the human brain byconstructing networks of neurons.  Unlike the neurons used in artifical neural network (such as thoseused in deep learning), these neurons arespiking, and their networks known as Spiking NeuralNetworks (SNNs) [1].  The general structure of a neuron and its is shown in Figure 1. The dendrites act as inputs to the main cell body orsoma.  They transport streams of electrical current, in the form of potentials, from connected neurons.  These accumulate an action potential inthe soma.  When the voltage reaches a critical value, the soma discharges, its internal voltage and apotential spike is output of theaxonto neighbouring neurons [2]. An example model of this behaviour is the Izhikevich neuron, which has various types of neuron models, as shown in Figure 2.

<img align="center" alt="neuron" src="https://github.com/amckenna41/izhikevich-spiking-neuron/blob/main/images/izhikevich_neuron.png"  />




<img align="left" alt="izneuron" src="https://github.com/amckenna41/izhikevich-spiking-neuron/blob/master/images/izhikevich_neuron.png?raw=true"  />

In the Izhikevich spiking neuron the internal potential <em> v </em> is updated to its next value <em> v′ </em> by a stream of incoming voltages on the dendrites, according to:

```  
v' = v + [0.04v^2 + 5v - u + J + 140] 
u' = u + [a(bv - u)]

v' = -65 if v' > 30 else v' 
u' = u' + d if v' > 30 else u'
```

Inital coefficient values:
```
a = 0.02
b = 0.2
d = 8
v = -65
u = 0

```

The neuron was realised using Simulink and Xilinx System Generator components. Firstly, Simulink was used to create an untimed simulation of the model where any timing and overheads were not considered, such as type fo arthmetic used. Basic arthmetic components were used to implement the above equations to generate the spiking behaviour including adds, multiply's, subtract, divides etc. Below is what the untimed version of the model looked like:

<img align="left" alt="simulink" src="https://github.com/amckenna41/izhikevich-spiking-neuron/blob/master/images/simulink.png?raw=true"  />

Next, the same model was realised using Xilinx System Generator (https://www.xilinx.com/products/design-tools/vivado/integration/sysgen.html). It allowed for the neuron to be realised with timed components on an FPGA (field-programmable-gate-array), giving a more realistic implementation, taking into account the physical resource cost and performance of the individual components in the model [3]. The implementations were optimised using different variations of components as well as the best arthmetic type (floating or fixed-point). Each model was extracted into HDL so that its resource cost could be calculated using the Vivado Design Suite. An example of one of these models can be seen below:

<img align="left" alt="xilinx" src="https://github.com/amckenna41/izhikevich-spiking-neuron/blob/master/images/xilinx.png?raw=true"  />


Files
------
* `/izhikevichTest.slx` - Simulink model for untimed Izhikevich spiking neuron. 
* `/timedIzhikevichTest.slx` - Simulink model for timed Izhikevich spiking neuron after delay transfer.
* `/izhikevichTestFixed.slx` - Xilinx Sys Gen timed model using fixed-point arthmetic.
* `/izhikevichTestFloat.slx` - Xilinx Sys Gen timed model using double-precision floating-point arthmetic.
* `/izhikevichEnsemble.slx` - Xilinx Sys Gen ensemble model using 16 spiking neurons.
* `/izhikevichEnsembleOptimised` - Xilinx Sys Gen ensemble model optimised for resource cost and performance.
* `/createScript.tlc` - MATLAB script for creating the Izhikevich neuron model in Simulink.
* `/netlist_double` - HDL netlist of double-precision floating-point Xilinx Sys Gen model.
* `/netlist_fixed` - HDL netlist of fixed-point Xilinx Sys Gen model.
* `/netlist_optimised_ensemble` - HDL netlist of optimised ensemble model of Xilinx Sys Gen model.


References
-------------
[1] E. M. Izhikevich, "Simple model of spiking neurons," in IEEE Transactions on Neural Networks, vol. 14, no. 6, pp. 1569-1572, Nov. 2003, doi: 10.1109/TNN.2003.820440.
[2] Sidiropoulou, K., Pissadaki, E. K., & Poirazi, P. (2006). Inside the brain of a neuron. EMBO reports, 7(9), 886–892. https://doi.org/10.1038/sj.embor.7400789
[3] System generator model-based FPGA design optimization and hardware co-simulation for Lorenz
chaotic generator. Lei Zhang. Published June 2017.
https://ieeexplore.ieee.org/document/7986087?denied=. 

#add TCL scripitng from vivado
