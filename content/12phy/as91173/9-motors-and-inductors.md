---
title: Motors & Inductors
subtitle: 12PHYS - Electricity
author: Finn LeSueur
date: 2019
theme: finn
weight: 9
katex: true
slug: motors-and-inductors
header-includes:
- \usepackage{graphicx}
- \usepackage[T1]{fontenc}
- \usepackage{lmodern}
- \usepackage{amsmath}
---

## Mahi Tuatahi

1. What is a magnetic field?
2. What is the symbol and unit for magnetic field?
3. What formula is used to calculate the size of the force?
4. How can you determine the direction of the force?

---

\begin{align*}
    & F = BIL
\end{align*}

Force on a current carrying wire in a magnetic field is given by this equation.

- Write what each letter stands for and its unit

---

1. What direction is the force on this current carrying wire?
2. What is the force if the field is $0.02T$, the current $2A$ and the length of wire $10cm$?

![](../assets/10-current-wire.png){width=60%}

---

What do you think happens to the force if the wire is on an angle?

![](../assets/10-angle-current-wire.png){width=80%}

---

\begin{align*}
    & F = BILsin(\theta)
\end{align*}

- $\theta$ is the angle between the current and the magnetic field
- Force is maximum when perpendicular
- Force is zero when parallel
- You are not required to do calculations with this equation, but need to know the previous two points.

---

## DC Motors

- What does a motor do?
- It takes power and turns it into rotational energy! How?

---

What direction is the force acting upon the four sides of this loop? What does this tell you?

![](../assets/10-dc-motor-rotate.png){width=80%}

---

![](../assets/10-dc-motor-explain.png){width=80%}

---

## Mahi Tuatahi 1

What direction is the magnetic force in these examples?

![](../assets/10-mahi tuatahi-1.png)

---

## Mahi Tuatahi 2

![](../assets/10-mahi tuatahi-2.png)

---

## Mahi Tuatahi 3

![](../assets/10-mahi tuatahi-3.png)

---

## Mahi Tuatahi 4

![](../assets/10-mahi tuatahi-4.png)

---

### Mahi Tuatahi Answers

Up, down, into the board, out of the board

---

### What happens if we pass a wire through a magnetic field?

---

We induce a voltage!

![](../assets/10-electromagnetic-induction.gif)

And if the circuit is complete, we induce a current!

---

__Induced voltage__ in a wire moving through a magnetic field:

\begin{align*}
    & V=BvL
\end{align*}

- $B$ is the magnetic field strength (T, Tesla)
- $v$ is the velocity of the wire ($ms^{-1}$)
- $L$ is the length of wire in the field ($m$)

---

### Pātai

A metal rod is moved in a magnetic field. The rod is $24cm$ long and moves at $8ms^{-1}$ through a magnetic field with strength $0.7T$. __Calculate the induced voltage and induced current__. Use $V=BvL$ first, and then Ohm's Law.

![](../assets/10-vbil-example.png)

---

#### Whakatika

\begin{align*}
    & V = BvL \newline
    & V = 0.7 \times 8 \times 0.24 \newline
    & V = 1.344V
\end{align*}

\begin{align*}
    & V = IR \newline
    & I = \frac{V}{R} \newline
    & I = \frac{1.344}{10} = 0.1344A
\end{align*}
---

### Thought Whakamātau

- Dragging a piece of wire through a magnetic field creates an __induced voltage__
- If the circuit is complete it creates an __induced current__
- What does a current in a magnetic field experience?
- Yes, a force! $F=BIL$

![](../assets/10-induction-example.png)

---

__Think, pair, share:__ If we drag the coil to the right, what will we observe?

![](../assets/10-induction-example.png)

---

- A current will be induced,
- That current will experience a force ($F=BIL$)
- That magnetic force will __oppose__ the externally applied force

![](../assets/10-induction-example.png)


---

## Lenz's Law

- __The induced current (and magnetic force) always opposes the change/action producing it__
- In our previous tauria the induced current causes a force which opposes the externally applied force
- This law is a result of __the conservation of energy__. Work must be done to generate electrical energy.

---

Continuing our tauria from earlier: a metal rod is moved in a magnetic field. The rod is $24cm$ long and moves at $8ms^{-1}$ through a magnetic field with strength $0.7T$. __Calculate the magnitude and direction of the opposing force acting upon the rod__.

![](../assets/10-vbil-example.png)

---

<iframe width="560" height="315" src="https://www.youtube.com/embed/pQp6bmJPU_0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

---

## Lenz' Law in Solenoids

- __Recall__: A solenoid is a coil of wire used as an electromagnet.
- __Question__: What happens if we pass a magnet through solenoid?
- __Answer:__ We induce a current in the coil.

---

- __Question__: What does that current do?
- __Answer__: It creates a magnetic field that opposes the original field.

---

## Lenz' Law in Solenoids

A magnet moving inside a solenoid will induce and current and therefore, magnetic field, which will oppose the original field. We can use our right hand rule to deduce the direction of the current flow.

![](../assets/lenz-law-in-solenoids.PNG){width=50%}

---

### Understanding Check 1

A magnet is dropped into a long copper tube with its North pole facing downwards. As the North pole approaches the top end of the tube, which way will the current flow, when viewed from above the top of the tube?

---

The current will flow anti-clockwise, creating a magnetic field pointing upwards, opposing the North pole falling down.

---

### Understanding Check 2

When the magnet has just left the bottom of the tube, in which sense does the current flow, again when viewed from above the top of the tube?

---

The current will be in the opposite sense now, i.e. clockwise. When the South pole leaves, Lenz's Law says that there must be a South pole induced at the bottom end of the tube, producing a force on the magnet in the upward direction, opposing its downwards motion.
