---
title: Electric Fields
subtitle: 12PHYS - Electricity
author: Finn LeSueur
date: 2020
theme: finn
colortheme: dolphin
font-size: 35px
text-align: center
header-includes:
- \usepackage{graphicx}
- \usepackage[T1]{fontenc}
- \usepackage{lmodern}
- \usepackage{amsmath}
---

---

# Starter

1. If a balloon has charge of $-3C$: did the balloon lose or gain electrons, and how many?
2. If Charlotte has charge of $0.2C$ did she lose or gain electrons and how many?

\newpage

---

## Starter: Answer

1. If a balloon has charge of $-3C$: did the balloon lose or gain electrons, and how many?

\begin{align*}
    & \text{Negative C means electrons are gained (negative charge)} \\
    & num_{e} = 3 \times (6.25 \times 10^{18}) \\
    & num_{e} = 1.875 \times 10^{19} && \text{ electrons gained}
\end{align*}

---

2. If Charlotte has charge of $0.2C$ did she lose or gain electrons and how many?

\begin{align*}
    & \text{Positive C means electrons are lost (positive charge)} \\
    & num_{e} = 0.2 \times (6.25 \times 10^{18}) \\
    & num_{e} = 1.25 \times 10^{18} && \text{ electrons lost}
\end{align*}

---

# Electric Fields

- __An electric field is an area of influence in which a charged object will feel a force due to the object being electrically charged__
- A field can exist in a vacuum or inside an substance.
- E.g. An electric field exists in the space around a Van der Graaf generator.

---

## Electric Fields & Forces

Electric fields exert a force on charged objects & particles.

\begin{align*}
    & \vec{E} = \frac{\vec{F}}{q} \\
    & \vec{Electric Field Strength} = \frac{Force}{Charge} \\
\end{align*}

Therefore $\vec{E}$ has units of $\frac{N}{C}$ or $NC^{-1}$

---

\newpage

## Question

Is electric field a scalar or a vector?

\newpage

---

### Answer

It is a vector, because one of the components the creates it is __Force__, and force has both direction and magnitude. Becase it is a vector we can give it the notation $\vec{E}$. You can use this notation with any other vector, too.

---

\newpage

### $\vec{E}$ Question 1

A small charge of $2 \times 10^{-4}C$ experiences a force of $1.5\times10^{-4}N$. Calculate the electric field strength.

\newpage

---

### $\vec{E}$ Question 1: Answer

A small charge of $2\times10^{-4}C$ experiences a force of $1.5\times10^{-4}N$. Calculate the electric field strength.

\begin{align*}
    & \vec{E} = \frac{\vec{F}}{q} \\
    & \vec{E} = \frac{1.5\times10^{-4}}{2\times10^{-4}} \\
    & \vec{E} = 0.75NC^{-1}
\end{align*}

---

## Electric Potential Energy

Electric potential energy is akin to gravitational potential energy. Moving a charged particle against the direction of the field is similar to lifting an object up in a gravitational potential field.

Gravity Field:

\begin{align*}
    & W = F \times d \\
    & W = mg \times h \\
    & W = mgh = E_{p-grav}
\end{align*}

---

Electric Field:

\begin{align*}
    & W = F \times d \\
    & W = Eq \times d \\
    & W = Eqd = E_{p-elec}
\end{align*}

---

\newpage

# Starter

An object with charge $25 \times 10^{-6}C$ is placed in an electric field with strength $3000NC^{-1}$.

1. Define _electric field_
2. Calculate the force experienced by the object inside the electric field
3. In the object moves __against__ the force by 2m, does it gain or lose electric potential energy? And how much?

\newpage

---

## Answers

1. An area of influence in where a charged object will feel a force

---

\begin{align*}
    & \vec{E} = \frac{\vec{F}}{q} \\
    & 3000 = \frac{\vec{F}}{25 \times 10^{-6}} \\
    & \vec{F} = 3000 \times 25 \times 10^{-6} \\
    & \vec{F} = 0.075N
\end{align*}

---

Because it moves against the field, it gains electric potential energy.

\begin{align*}
    & E_{p} = Eqd \\
    & E_{p} = 3000 \times 25 \times 10^{-6} \times 2 \\
    & E_{p} = 0.15J
\end{align*}

---

# Voltage of a Field

The electric potential energy stored __per unit of charge__. The amount of energy in one coulomb of charge.

\begin{align*}
    & V = \frac{E_{p}}{q}
\end{align*}

---

# Voltage between Plates

We can also calculate the electric field strength between two plates.

\begin{align*}
    & \vec{E} = \frac{V}{d} \\
    & \vec{E} = \text{ electric field strength} \\
    & V = \text{ voltage applied on the two plates} \\
    & d = \text{ distance between the two plates}
\end{align*}

---

\newpage

## Question

An object with charge $-4 \mu C$ is placed between two charged plates $2cm$ apart with a potential difference of $500V$.

1. Calculate the __electric field strength__ between the two charged plates
2. Calculate the size of the force experienced by the charged object

\newpage

---

## Question: Answer

1. Calculate the __electric field strength__ between the two charged plates

\begin{align*}
    & \vec{E} = \frac{\vec{V}}{d} \\
    & \vec{E} = \frac{500}{0.02} \\
    & \vec{E} = 25000NC^{-1}
\end{align*}

---

2. Calculate the size of the force experienced by the charged object

\begin{align*}
    & \vec{F} = \vec{E}q \\
    & \vec{F} = 25000 \times -4 \times 10^{-6} \\
    & \vec{F} = -0.1N
\end{align*}

---

## Electric Field Lines

Fields are __invisible__ but we can use a series of lines to visually _represent_ them. It is worth noting that a field is continuous and that lines only represent certain areas.

![Electric Field](assets/2-electric-field.jpg "Electric Field"){ width=50% }

---

In a __uniform__ field, force is felt in the direction of the field. In a curved field, force is felt at tangent to the field lines.

- Field lines never cross one-another
- The closer the field lines are together, the stronger the field
- Field lines originate and end at right angles to charged areas.

![Electric Field](assets/2-electric-field-2.jpg "Electric Field"){ width=50% }

---

![Parallel Plates](assets/2-parallel-plates.gif "Parallel Plates"){ width=50% }

- Field goes from __positive__ to __negative__
- Exits the positive plate at a right angle
- Enters the negative plate at a right angle
