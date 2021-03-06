---
title: Resistance
slug: resistance
subtitle: Electricity - 10SCIE
author: Finn LeSueur
date: 2021
theme: finn
weight: 5
header-includes:
- \usepackage{graphicx}
- \usepackage[T1]{fontenc}
- \usepackage{lmodern}
- \usepackage{amsmath}
- \usepackage{textcomp}
---

## Te Whāinga Ako

1. Describe how resistance controls the flow of electric current

<p class="instruction">Write the date and te whāinga ako in your book</p>

---

## Resistance {.c2}

- Resistance is a measure of <mark>how difficult it is for charges (electrons) to flow</mark> through a circuit component
- <mark>A higher resistance ➡ lower current</mark>
- <mark>A lower resistance ➡ higher current</mark>
- It is letter $R$ in equations
- It has the unit __Ohm__, given the Greek letter capital Omega: $\Omega$

![[Source](https://www.fluke.com/en-us/learn/blog/electrical/what-is-resistance)](https://dam-assets.fluke.com/s3fs-public/flukeig/articles/images-generals-web-cards/web-cards/training/6004180-dmm-whatis-resistance-715x360-1.jpg)

---

### {.c2}

![[Source](http://www.dynamicscience.com.au/tester/solutions1/electric/resistanceanalogy.htm)](http://www.dynamicscience.com.au/tester/solutions1/electric/ELECTRICTHINWIRE.gif)

- You can think of it as a skinny pipe which cannot carry as much water as a larger pipe
- When electrons move through a material with resistance, they <mark>lose some energy in the form of heat</mark> (and light, when hot enough)
- E.g. your toaster, filament lightbulbs, hair dryer, heater, hair straightener
- <mark>Materials with very high resistance are called __insulators__</mark>
- <mark>Materials with very low resistance are called __conductors__</mark>

---

<iframe width="1005" height="565" src="https://www.youtube.com/embed/RPvYjrSWCUo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

---

The amount of resistance in a component is related directly to the __voltage__ and __current__ flowing through it. This equation is known as <mark>__Ohm's Law__</mark>.

\begin{aligned}
    &V &&= &&&I &&&&\times &&&&&R \newline
    &\downarrow && &&&\downarrow &&&& &&&&&\downarrow \newline
    &voltage &&= &&&current &&&&\times &&&&&resistance \newline
    &\downarrow && &&&\downarrow  &&&& &&&&&\downarrow \newline
    &volts &&= &&&amperes &&&&\times &&&&&ohms \newline
    &\downarrow && &&&\downarrow &&&& &&&&&\downarrow \newline
    &V && &&&A &&&& &&&&&\Omega
\end{aligned}

---

### Pātai Tahi

An current of $1A$ flows through a resistor with resistance $2\Omega$. __Calculate the voltage consumed by the resistor__.

\begin{aligned}
    &\text{(Knowns)} \newline
    &\text{(Unknowns)} \newline
    &\text{(Formula)} \newline
    &\text{(Substitute + Solve)}
\end{aligned}

---

#### Whakatika

\begin{aligned}
    & I = 1A, R = 2\Omega && \text{(K)}  \newline
    & V = ? && \text{(U)} \newline
    & V = IR && \text{(F)} \newline
    & V = 1 \times 2 = 2V && \text{(S+S)}
\end{aligned}

---

### Pātai Rua

An current of $0.01A$ flows through a resistor with resistance $1000\Omega$. __Calculate the voltage consumed by the resistor__.

\begin{aligned}
    &\text{(Knowns)} \newline
    &\text{(Unknowns)} \newline
    &\text{(Formula)} \newline
    &\text{(Substitute + Solve)}
\end{aligned}

---

#### Whakatika

\begin{aligned}
    & I = 0.01A, R = 1000\Omega &&\text{(K)}  \newline
    & V = ? &&\text{(U)} \newline
    & V = IR &&\text{(F)} \newline
    & V = 0.01 \times 1000 = 10V &&\text{(S+S)}
\end{aligned}

---

### Pātai Toru

An current of $0.01A$ flows through a resistor with resistance $50000\Omega$. __Calculate the voltage consumed by the resistor__.

\begin{aligned}
    &\text{(Knowns)} \newline
    &\text{(Unknowns)} \newline
    &\text{(Formula)} \newline
    &\text{(Substitute + Solve)}
\end{aligned}

---

#### Whakatika

\begin{aligned}
    & I = 0.01A, R = 50000\Omega && \text{(K)}  \newline
    & V = ? && \text{(U)} \newline
    & V = IR && \text{(F)} \newline
    & V = 0.01 \times 50000 = 5000V && \text{(S+S)}
\end{aligned}

---

### Pātai Whā

An current of $0.01A$ flows through a $6V$ bulb. __Calculate the resistance of the bulb.__

\begin{aligned}
    &\text{(Knowns)} \newline
    &\text{(Unknowns)} \newline
    &\text{(Formula)} \newline
    &\text{(Substitute + Solve)}
\end{aligned}

---

#### Whakatika

\begin{aligned}
    & I = 0.01A, V = 6V && \text{(K)}  \newline
    & R = ? && \text{(U)} \newline
    & V = IR && \text{(F)} \newline
    & 6 = 0.01 \times R \text{(S+S)} \newline
    & \frac{6}{0.01} = R = 600\Omega
\end{aligned}

---

### Pātai Rimu

Calculate the current that flows through a $10V$ bulb with a resistance of $400\Omega$.

\begin{aligned}
    &\text{(Knowns)} \newline
    &\text{(Unknowns)} \newline
    &\text{(Formula)} \newline
    &\text{(Substitute + Solve)}
\end{aligned}

---

#### Whakatika

\begin{aligned}
    & V = 10V, R = 400\Omega && \text{(K)}  \newline
    & I = ? && \text{(U)} \newline
    & V = IR && \text{(F)} \newline
    & 10 = I \times 400 && \text{(S+S)} \newline
    & \frac{10}{400} = I = 0.025A
\end{aligned}

---

### Tūhura/Investigation: Ohm's Law

1. Open the [PhET Simulation](https://phet.colorado.edu/sims/html/ohms-law/latest/ohms-law_en.html) on Google Classroom.
2. The __voltage__ and __resistance__ sliders allow you to change those properties of the circuit.
3. __What impact does increasing the voltage have on the circuit?__ Extra: Why?
4. __What impact does increasing the resistance have on the circuit?__ Extra: Why?

---

#### Whakatika

1. __What impact does increasing the voltage have on the circuit?__ Extra: Why?<br>Increasing the voltage increases the current in the circuit. Because a higher "_pressure_" is exerted by the power source, causing more electrons to flow around the circuit.
2. __What impact does increasing the resistance have on the circuit?__ Extra: Why?<br>Increasing the resistance decreases the current in the circuit. Because there is more friction acting upon the electrons, stopping them from flowing as freely.
