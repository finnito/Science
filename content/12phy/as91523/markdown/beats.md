---
title: Beats
subtitle: 12PHYS - Wave Systems
author: Finn LeSueur
date: 2020
weight: 3
theme: finn
colortheme: dolphin
font-size: 35px
text-align: center
katex: true
header-includes:
- \usepackage{graphicx}
- \usepackage[T1]{fontenc}
- \usepackage{lmodern}
- \usepackage{amsmath}
---

## Learning Outcomes

- Be able to calculate the frequency of beats
- Be able to calculate the velocity of a source using the beat frequency

---

## Sound Recap

- Recall that sound is the compression and rarefaction of air causing your eardrum to vibrate and you to hear sound!
- When compression (peak) meets compression, their amplitudes are combined (__constructive interference__)
- and when rarefaction (trough) meets compression, their amplitudes cancel out (__destructive interference__)

---

<iframe width="657" height="370" src="https://www.youtube.com/embed/uKrvTA4SKVU" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

---

![](../assets/interference.gif "")

---

## Beats

By changing the position of the waves over time, we can cause the interference to change.

This changing interference _can_ give rise to periodic changes in volume (amplitude)

---

![](../assets/beats.gif "")

---

### Beat Frequency

For beats to occur we need:

1. The amplitude to be the same
2. The difference in frequency to be small

\begin{align*}
    f_{b} = | f_{2} - f_{1} |
\end{align*}

This equation is not given to your in your formula sheet.

---

#### Example Calculation

Zak is standing still and holding a device emitting a frequency of $100Hz$. Josh walks past him holding a device emitting a frequency of $107Hz$.

Calculate the frequency of the beats observed by Anton.

---

##### Answer

\begin{align*}
    & f_{b} = | 100 - 107 | = | - 7 | = 7Hz \\
    & f_{b} = | 107 - 100 | = | 7 | = 7Hz
\end{align*}

> The $|$ symbol means absolute value. Which in practice means, make it positive.

---

Josh changes his device to be $100Hz$, the same as Zak. He walks past him again while Anton listens. Anton observes a beat frequency of $10Hz$.

1. __How fast is Josh walking ($v_{s}$)?__
2. We know $f$ and $f_{b}$, so we should use $f_{b} = | f_{2} - f_{1} |$
3. We don't know $f'$, but we don't need to, we can substitute in the Doppler equation $f' = f\frac{v_{w}}{v_{w} \pm v_{s}}$ and re-arrange to find $v_{s}$

---

\begin{align*}
    & f_{b} = | f' - f | \\
    & f_{b} = | f\frac{v_{w}}{v_{w} \pm v_{s}} - f | \\
    & 10 = 100 \times \frac{330}{330 - v_{s}} - 100 \\
    & 110 = 100 \times \frac{330}{330 - v_{s}} \\
    & 110 \times (330 - v_{s}) = 100 \times 330 \\
    & 330 - v_{s} = \frac{100 \times 330}{110} \\
    & v_{s} = \frac{100 \times 330}{110} - 330 = 30ms^{-1} \\
\end{align*}

---

## Homework

- Homework Booklet Question 8, due Monday August 3rd
- Tutorials Tuesday & Friday lunchtime in A3
