# Reading-movements

<img src="http://www.irimageco.com/wp-content/uploads/2019/01/Under-Construction-Sign-for-Locator-300x141.png" alt="construction"/>
Motor imagery signal processing and classifier basic MATLAB package. 
Summer 2021 Entertainment

1.- Introduction: Motor imagery signals
 
Motor imagery (MI) Brain computer interface employs the user's brain activity in the absence of any external stimuli. A standard concept in BCI is the translation of the user's intention via mental imagination of motor movement. The simple fact of intention helps in rehabilitation cases for patients with movement difficulties of mobility problems such as stroke patients. 
EEG signal do have a very low SNR. To improve the SNR the use of special filters and pre-processing signals may be a good stepping stone solution. An important part for BCI's is the characteristics extraction. Those characteristics are sent to a classifier to be able to tell which signal may be. On this script is meant to apply pre-processing and clasification of motor imagination EEG signals. 
The datasets used are from 3 users who are doing 3 different actions. (Word, right hand movement, left hand movement).

1.1.- Spectrum 
Function "calculo_espectro(input, fm)" calculates between 8-30Hz with a 2Hz resolution the spectrum from the input signal. As an example we could calculate the spectrum from a sinussoid signal with or without random noise. 

2.- EEG Processing
Use of the Processing_function

3.- Clasification
Use of the function clasification. 
