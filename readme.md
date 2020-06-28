# An (Almost) No Compromise USB Stereo DAC

This project describes the hardware and firmware for a high-quality DIY USB stereo digital to analogue converter (DAC) with optional integrated digital volume control and headphone amplifier.

## Background

I was after a DAC for my computer headphone setup. Although there are excellent readymade options available (eg https://www.henryaudio.com/), these need a separate amplifier and/or preamplifier, which starts to be quite a committment in terms of both cost and desk space. Seeing as I enjoy a bit of DIY hardware, I thought to have a go at designing the ideal DAC for me. This would be a high-quality but fairly compact single-box DAC, with integrated preamp and headphone amplifier. If stereo line out and digital (eg S/PDIF in) could be included with minimal effort that would be a bonus.

## Design philosophy

The design is balanced towards maximum audio quality while hopefully avoiding audiophile silliness. Close attention is paid to performance of the key components, gain structure, power rails, stability, and transfer characteristics in the 20-20kHz spectrum. However, you won't see esoteric materials (silk capacitors anyone?), valves, absurdly overspecified linear power supplies / space heaters, etc.

Key principles in the design were:
1. Use asynchronous mode USB audio. I want the PC to have as little influence as possible on the audio playback.
2. Keep the signal digital for as long as possible. For example, perform volume control digitally, rather than using an analogue attenuation stage, which can introduce issues with rolloff and noise.
3. Maintain a simple and clean analog signal path, ideally DC-coupled.
4. Have a solid justification for each design decision; try and avoid reflexive overkill approaches.
5. Where suitable, source components from the [JLCPCB SMT parts library](https://jlcpcb.com/parts/componentSearch). This is a practical and cost-saving measure that is well-worth it for non-critical things like pull-up resistors and decoupling caps.
6. Keep cost under control. Only use high-cost components if lower-cost alternatives are unsuitable.

I would have liked to add '0. Test everything, remove anything unnecessary' but unfortuantely I do not have the kind of test equipment needed to really challenge the design. Therefore some design choices, for example the supply decoupling or separate PSU enclosure, feel a bit over-the-top and can probably be optimised.

## Architecture

```
                                     Panel controls
                                           |
                                           v
                                     +--- MCU ---+
                                     |           |
                                     v           v
  Computer  -->  USB to I2S  -->  Receiver -->  DAC  -->  I2V  -->  Amplifier  -->  Headphones
                                  and ASRC                 |
                                     ^                     v
                                     |                  Line out
                                 Digital in            (3.472 Vpp)
```

* USB to I2S: [Amanero module](https://amanero.com/). A well-established solution for asynchronous USB to I2S conversion. I considered adopting a DIY approach for this stage, but there's no way I could replicate the Amanero's functionality without an investment of effort that far exceeds the cost of the module.
* Clock: Onboard 24.576 MHz oscillator driving both the ASRC and the DAC. The Amanero MCLK output is not used.
* Receiver and ASRC: SRC4392, converting input to fs=96 kHz. This stage also performs digital volume control / attenuation if required.
* DAC: PCM1792A running at fs=96 kHz, with slow rolloff reconstruction filter.
* I2V: Op-amp based, standard Philips architecture of dual transimpedance amplifiers followed by a difference stage. OPA1612 devices for minimum noise. Gain flat within 0.1 dB 20 Hz to 20 kHz. Phase linear within 5 deg to 20 kHz (group delay < 0.1 ms). Total noise < 700 nV RMS (20 Hz - 20 kHz), equivalent to -125 dB relative to +4 dBu output level.
* Amplifier: OPA1612 + LME49600 buffer in feedback loop, unity gain (therefore maximum output level is 3.472 Vpp, matching the line out). AC-coupled input to avoid headphone damage in the case of DC signal, -3 dB at 7.7 Hz, -0.6 dB at 20 Hz, -0.1 dB at 50 Hz and higher; group delay 2.6 ms at 20 Hz, < 0.5 ms at 50 Hz and higher.  Characterised down to 16 ohm headphones, stable for all reasonable capacitances.
* MCU: STM8S003F3P
* PSU: Switchmode modules for analog and digital supplies, in an external enclosure with LC filtering. In the main DAC enclosure, TPS7A linear postregulators for analog rails.

## Capabilities

* USB input: 
* Digital input: 
* Headphone output: 

## Options

The design is modular and modules can be left out to cut costs or change functionality.  The main modules are:

### Core DAC: essential

This is the only required module.  It performs USB --> stereo analog conversion.

#### Line out startup mute: optional

This module mutes the stereo output while the power rails are unstable (eg during startup).  It prevents the "thump" noise that can often happen when switching the DAC on or off.  However this may not be required in some configurations.

To disable this module, leave out components: 

### Volume control: optional (though highly recommended if headphones are used)

To disable this module, bridge ###

### Headphone amplifier: optional

Components: 

#### Headphone startup mute: optional

Components: 


## Licence

Hardware designs (schematics, PCB layouts, and enclosure plans), software, and documentation are licensed for reuse under the Creative Commons Attribution 4.0 Licence (CC BY 4.0). For more details on this licence, visit https://creativecommons.org/licenses/by/4.0/.

Component models (3D and 2D) under the design/pcbs/lib directory, and simulation models (`*.s*p`, `*.lib`, `*.tld`, `*.TSM` under the simulations directory) remain the property of their creators and are not covered by this CC BY 4.0 licence.

The Kicad BOM template bom2grouped_csv_jlcpcb.xsl was created bt arturo182, see https://gist.github.com/arturo182/a8c4a4b96907cfccf616a1edb59d0389.
