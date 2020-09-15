---
title: Energy & Hooke's Law
subtitle: 12PHYS - Mechanics
author: Finn LeSueur
date: 2019
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

# Mahi Tuatahi

---

# What is Energy?

We fundamentally understand that energy is what makes things happen. Driving a car, using a Bunsen burner and turning the lights on.

__Q.__ What is energy measured in?

__A.__ Joules (J)

---

## The Different Forms of Energy

- Light
- __Heat__
- __Sound__
- Electrical
- Radiation
- __Kinetic__
- Nuclear potential
- Chemical potential
- __Gravitational potential__
- __Elastic potential__

---

## Law of Conservation of Energy

Energy can neither be created nor destroyed, it can only be __transformed__ or __transferred__.

This tells us that: __the total energy in the system is always conserved__.

---

### Seeing it in Action

https://phet.colorado.edu/sims/html/energy-skate-park-basics/latest/energy-skate-park-basics_en.html

---

## What Energy Do We Care About?

- Kinetic
- Gravitational potential
- Elastic potential

---

## Kinetic Energy

\begin{align*}
    & E_{k} = \frac{1}{2}mv^{2} \\\\
    & \text{m = mass of the moving object} \\\\
    & \text{v = speed of the moving object}
\end{align*}

---

## Gravitational Potential Energy

\begin{align*}
    & E_{p} = mg \Delta h \\\\
    & \text{m = mass of the object} \\\\
    & \text{g = acceleration due to gravity } 9.8ms^{-2} \downarrow \\\\
    & \text{h = height of the object}
\end{align*}

---

## Combining Gravitational and Kinetic Energy

When an object falls from a height, its __gravitational potential energy__ is transformed into __kinetic energy__.

In the real world some energy is lost due to friction as heat, light or sound. In the ideal world 100% of the energy is transformed.

Therefore when comparing an object at the top of its fall, to the bottom of its fall we can say:

\begin{align*}
    & E_{k} = E_{p} && \text{they are equal} \\\\
    & \frac{1}{2}mv^{2} = m g \Delta h && \text{substitute in the equations} \\\\
\end{align*}

---

### Question 1

A bullet of mass $30g$ is fired with a speed of $400ms^{-1}$ into a sandbag. The sandbag has a mass of $10kg$ and is suspended by a rope so that it can swing.

Calculate the maximum height that the sandbag rises as it recoils with the bullet lodged inside.

---

### Question 1: Answer

__Step 1.__ Find kinetic energy of the bullet

\begin{align*}
    & E_{k} = \frac{1}{2}mv^{2} \\\\
    & E_{k} = \frac{1}{2} \times 0.03 \times 400^{2} && \text{substitute values} \\\\
    & E_{k} = 2,400J
\end{align*}

---

__Step 2.__ equate this with potential energy of sandbag & bullet

\begin{align*}
    & E_{k} = E_{p} && \text{they are equal} \\\\
    & E_{k} = m g \Delta h \\\\
    & 2400 = 10.03 \times 9.8 \times h && \text{substitute values} \\\\
    & 2400 = 98.294h \\\\
    & \Delta h = \frac{2400}{98.294} \\\\
    & \Delta h = 24.41m
\end{align*}

---

## Elastic Potential Energy

When a spring is compressed or stretched it gains some amount of potential energy. We can quantify the energy using this equation:

\begin{align*}
    & E_{p} = \frac{1}{2}kx^{2} \\\\
    & \text{k = spring constant} \\\\
    & \text{x = spring compression/stretch (displacement)}
\end{align*}

---

## Hooke's Law

We can relate the displacement of a spring to its spring constant and the force required to create the displacement using __Hooke's Law__.

\begin{align*}
    & k = \frac{F}{x}
\end{align*}

\begin{align*}
    & F = kx
\end{align*}

---

### Question 2

Paris has a mass of 55kg and she is a spectator at a sports game. She steps onto a bench to get a good view. The bench is $4m$ long and it is displaced by $3mm$ in the middle when she stands on it.

1. Calculate the spring constant of the bench. __(M)__
2. Give correct SI units for the spring constant. __(A)__
3. Calculate the elastic potential energy stored in the bench. __(A)__

---

### Question 2: Answer

1. Calculate the elastic potential energy in the trampoline at this position.

\begin{align*}
    & k = \frac{F}{x} \\\\
    & k = \frac{55 \times 9.8}{0.003} \\\\
    & k = 179667Nm^{-1} \\\\
    & k = 1.8\times10^{5}Nm^{-1}
\end{align*}

---

### Question 2: Answer

3. Calculate the elastic potential energy stored in the bench. __(A)__

\begin{align*}
    & E_{p} = \frac{1}{2} k x^{2} \\\\
    & E_{p} = \frac{1}{2} \times 1.8\times10^{5} \times 0.003^{2} \\\\
    & E_{p} = 0.81J
\end{align*}

---

## Question 3

A toy airplane ($500g$) is hanging at the end of a spring. The spring is $48.0cm$ long when hanging vertically. When the airplane is hung from the end of the spring, the length of spring becomes $80.0cm$.

1. Calculate the spring constant. __(M)__
2. Write a unit with your answer. __(A)__
3. Calculate the energy stored in the spring when a second toy of mass $400g$ is also hung along with the airplane. __(M)__
4. The $500g$ airplane is now hung on a stiffer spring, which has double the spring constant. Discuss how this affects the extension and the elastic potential energy in the spring. __(E)__

---

### Question 3: Answer

1. Calculate the spring constant. __(M)__

\begin{align*}
    & k = \frac{F}{x} \\\\
    & k = \frac{0.5 * 9.8}{0.32} \\\\
    & k = 15.31Nm^{-1}
\end{align*}

---

### Question 3: Answer

3. Calculate the energy stored in the spring when a second toy of mass $400g$ is also hung along with the airplane. __(M)__

\begin{align*}
    & x = \frac{F}{k} \\\\
    & x = \frac{0.9 * 9.8}{15.31} \\\\
    & x = 0.576m
\end{align*}

\begin{align*}
    & E_{p} = \frac{1}{2}kx^{2} \\\\
    & E_{p} = \frac{1}{2} \times 15.31 \times 0.576^{2} \\\\
    & E_{p} = 2.54J
\end{align*}

---

### Question 3: Answer

4. The $500g$ airplane is now hung on a stiffer spring, which has double the spring constant. Discuss how this affects the extension and the elastic potential energy in the spring. __(E)__

\begin{align*}
    & x = \frac{F}{k} \\\\
    & x = \frac{0.5 * 9.8}{30.62} \\\\
    & x = 0.16m
\end{align*}

It halves the amount that the spring extends.

\begin{align*}
    & E_{p} = \frac{1}{2}kx^{2} \\\\
    & E_{p} = \frac{1}{2} \times 30.62 \times 0.16^{2} \\\\
    & E_{p} = 0.39J
\end{align*}

and reduces the amount of energy stored by a lot.

---

# Mahi Tuatahi

1. Give the equations for kinetic, gravitational potential and elastic potential energy.
2. Give the name and formula for the law that you can use to relate __force, spring constant and displacement__.
3. Lachie is going to football in the weekend. The van he rides in with some of his teammates has suspension on each wheel. Lachie and his teammates weight $357kg$ in total and their weight is spread evenly across all four springs. The springs have a spring constant of $2.26 \times 10^{4}Nm^{1}$. Calculate how much the car __sinks down__ when they get into the car. __(E)__
4. How much energy is stored in each spring if they are compressed by 0.12m? __(A)__

---

## Mahi Tuatahi: Answers (1 & 2)

1. Give the equations for kinetic, gravitational potential and elastic potential energy.

\begin{align*}
    & E_{k} = \frac{1}{2}mv^{2} && \text{kinetic energy} \\\\
    & E_{p} = m g \Delta h && \text{gravitational potential energy} \\\\
    & E_{p} = \frac{1}{2} k x^{2} && \text{elastic potential energy}
\end{align*}

2. Give the name and formula for the law that you can use to relate __force, spring constant and displacement__.

\begin{align*}
    & F = kx && \text{Hooke's Law}
\end{align*}

---

## Mahi Tuatahi: Answers (3)

Step 1: Weight per Spring
\begin{align*}
    & F = \frac{357 \times 9.8}{4} \\\\
    & F = 874.65N
\end{align*}

Step 2: Displacement
\begin{align*}
    & F = kx && \text{Hooke's Law} \\\\
    & x = \frac{F}{k} \\\\
    & x = \frac{874.65}{2.26 \times 10^{4}} \\\\
    & x = 0.0387m \\\\
\end{align*}

---

# Mahi Tuatahi: Answers (4)

\begin{align*}
    & E_{p} = \frac{1}{2}kx^{2} \\\\
    & E_{p} = \frac{1}{2} 2.26 \times 10^{4} \times 0.12^{2} \\\\
    & E_{p} = 160J
\end{align*}

---

# Work

Work is defined as __the transfer of energy from one form to another__, and it is measured in __Joules__.

One joule of work is done when a force of one newton moves an object one meter.

\begin{align*}
    & W = Fd \\\\
    & work = force \times distance
\end{align*}

---

## Question 4

In 2016 weightlifter Eddie Hall set a new world record for heaviest deadlift of $500kg$. If he lifted the weights to a height of $1.25m$, how much work did Eddie do?

<iframe width="1280" height="720" src="https://www.youtube.com/embed/T9Y4o_BqC0A" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

---

## Question 4: Answer

\begin{align*}
    & W = Fd \\\\
    & W = (500 \times 9.8) \times 1.25 \\\\
    & W = 6125J
\end{align*}

---

# Work Continued

Work is done __only__ when energy is transferred or transformed. __Only__ when the displacement of the object is in the same direction as the net force.

For example, lifting an object and placing it on a shelf transfers energy to that object into the form of gravitational potential energy. Work is done.

A counter example, picking up an object off a desk and placing it back down on the other side of the desk has not given that object any more energy than it began with, so no energy is transferred and work is not done.

---

# Power

Power is a measure of how quickly energy is transferred. Or, _the rate at which work is done_.

\begin{align*}
    & P = \frac{W}{t} \\\\
    & power = \frac{work}{time} \\\\
    & power = \frac{Joules}{seconds} \\\\
    & power = Js^{-1} && \text{also known as a Watt (W)}
\end{align*}

---

## Question 5

If it took Eddie $7s$ to do $6125J$ of work on the weights, what power was he exerting?

---

## Question 5: Answer

\begin{align*}
    & P = \frac{W}{t} \\\\
    & P = \frac{6125}{7} \\\\
    & P = 875Js^{-1} && \text{or 875W}
\end{align*}