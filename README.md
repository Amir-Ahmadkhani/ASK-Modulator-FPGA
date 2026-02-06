# ASK Modulator Using HLS and VHDL

This repository presents an implementation of an Amplitude Shift Keying (ASK) modulator using a combination of High-Level Synthesis (HLS) and VHDL.

In this design, a binary input data stream controls the amplitude of a sinusoidal carrier. The carrier signal is generated using Vivado HLS, while the input data stream is produced by a VHDL-based data injector. The modulation is achieved by switching the carrier amplitude according to the input bit value.
