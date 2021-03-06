---
title: Voltage & Power
subtitle: 12PHYS - Electricity
author: Finn LeSueur
date: 2019
weight: 3
theme: finn
colortheme: dolphin
font-size: 35px
text-align: center
slug: voltage-and-power
header-includes:
- \usepackage{graphicx}
- \usepackage[T1]{fontenc}
- \usepackage{lmodern}
- \usepackage{amsmath}
---

# Mahi Tuatahi

1. Draw a series circuit with 6V power supply, a bulb and a resistor. Indicate the positive and negative terminals on the power supply, and indicate the direction of conventional current and the actual movement of electrons.
2. What is the definition of current?
3. Give an equation that relates to the definition.
4. A circuit draws 0.4A and in total 2.5C goes past a certain point. How long did was the circuit on for?

---

## Circuit Diagram Symbols

You can find more symbols in your textbook (197-198) but here is the most basic few.

![](../assets/circuit-symbols.gif){width=50%}

---

Yesterday we talked about current and how it is the rate of transfer of charge per unit time.

\begin{aligned}
    & I = \frac{q}{t}
\end{aligned}

---

## Current Question

A current of $1.2A$ flows for $0.25s$. How much charge was transferred in that time?

---

### Answer

\begin{aligned}
    & I = \frac{q}{t} \\
    & q = I \times t \\
    & q = 1.2 \times 0.25 \\
    & q = 0.3 Coulombs (C)
\end{aligned}

---

# What is a circuit?

![Circuit Diagram](../assets/4-basic-circuit.png "Circuit Diagram"){ width=50% }

---

## Answer

A circuit is a way to deliver energy to different components!

Open this link and build a circuit with a power supply, light bulb, resistor and switch in series. What happens when you take out the resistor?

[PhET DC Circuit Construction Simulation](https://phet.colorado.edu/sims/html/circuit-construction-kit-dc/latest/circuit-construction-kit-dc_en.html)

---

# Voltage

- The __charge carriers__ flowing around a circuit are __energy carriers__
- The __charge carriers__ carry __electrical energy__ which comes from the power supply
- __Voltage is the amount of energy in one coulomb of charge__

\begin{aligned}
    & V = \frac{E_{p}}{q} \\
    & V = \text{ voltage measured in...} \\
    & E_{p} = \text{ electrical energy measured in... } \\
    & q = \text{ charge measured in...}
\end{aligned}

---

## Voltage Question 1

A system has electrical potential energy of $25J$ and has $0.5C$ of charge. What is the voltage of the system?

---

### Answer

\begin{aligned}
    & V = \frac{E_{p}}{q} \\
    & V = \frac{25}{0.5} \\
    & V = 12.5V \\
\end{aligned}

---

## Voltage Question 2

A system has a voltage of $12V$ and has $1.75C$ of charge inside it. What potential energy does the system have?

---

### Answer

\begin{aligned}
    & V = \frac{E_{p}}{q} \\
    & E_{p} = V \times q \\
    & E_{p} = 12 \times 1.75 \\
    & E_{p} = 21J \\
\end{aligned}

---

# Power

- The amount of energy transferred/transformed per second
- E.g. A 100W ($100 J/s, 100JS^{-1}$) light bulb transforms 100J of electrical energy per second into light and heat energy.

\begin{aligned}
    & P = IV \\
    & P = \text{ power measured in...} \\
    & I = \text{ current measured in...} \\
    & V = \text{ voltage measured in...}
\end{aligned}

---

## Power Question 1

A system has a current of $0.5A$ and voltage, $6V$. What is the power consumed by the system?

---

### Answer

\begin{aligned}
    & P = IV \\
    & P = 0.5 \times 6 \\
    & 3W = 3J/s = 3Js^{-1} \\
\end{aligned}

---

## Power Question 2

A washing machine has a power rating of 65W and the house is using a 12V system. What current is the washing machine drawing?

---

### Answer

\begin{aligned}
    & P = IV \\
    & I = \frac{P}{V} \\
    & I = \frac{65}{12} \\
    & I = 5.42A \\
\end{aligned}

---

# Voltage & Power Summary

By substituting these equations into each other we can begin to see how intertwined all of these concepts are.

\begin{aligned}
    & I = \frac{q}{t} \\
    & V = \frac{E_{p}}{q} \\
    & \\
    & P = I \times V = \frac{q}{t} \times \frac{E_{p}}{q} = \frac{E_{p}}{t}
\end{aligned}