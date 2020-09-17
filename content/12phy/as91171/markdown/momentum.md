---
title: Momentum & Impulse
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

Ethan and Kelley are playing on a merry-go-round spinning clockwise. Ethan is sitting 3m from the center and has a speed of $1.5ms^{1}$.

1. Draw a diagram with labelled arrows showing the __velocity__ and __acceleration__ of Ethan. __(A)__
2. What is the name of this acceleration? __(A)__
3. Calculate the __size__ of his acceleration __(A)__
4. State the __direction__ of the horizontal force acting on Ethan, and explain clearly why there must be a horizontal force acting on him. __(E)__
5. Kelley pushes the merry-go-round so that its __period is halved__. Explainwhat this does to the size of the horizontal force acting on Ethan. __(E)__

---

# Momentum

Momentum is a quantity of an object which involes its __mass__ and __velocity__.
It can be thought of as the __oomph__ of an object. The more __oomph__ an object has, the harder it is to stop.

\begin{align*}
    & p = mv \newline
    & momentum = mass \times velocity \newline
\end{align*}

---

## Question 1

Using the equation

\begin{align*}
    & p = mv \newline
    & momentum = mass \times velocity \newline
\end{align*}

what are the units for momentum?

---

### Question 1: Answer
\begin{align*}
    & p = mv \newline
    & momentum = mass \times velocity \newline
    & momentum = kgms^{-1}
\end{align*}

---

## Momentum: Scalar or Vector?

- __Momentum is a vector__ quantity because it depends upon a vector (_velocity_).
- Momentum is always in the direction of the objects velocity.

---

## Where is it Used?

Momentum is very useful when considering collisions and explosions. Most questions you will see will involve collisions. It helps us describe and understand why objects move how they do after collisions.

---

<iframe width="1280" height="720" src="https://www.youtube.com/embed/2UHS883_P60" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

---

## Question 2

Calculate the momentum for a 30g golf ball travelling at $10ms^{-1}$

---

### Question 2: Answer

\begin{align*}
    & p = mv \newline
    & p = 0.03 \times 10 \newline
    & p = 0.3kgms^{-1}
\end{align*}

---

## Question 3
Calculate the momentum for a shopping trolley of mass $24kg$ travelling at $0.75ms^{-1}$

---

### Question 3: Answer

\begin{equation}
    p = mv \newline
    p = 24 \times 0.75 \newline
    p = 18kgms^{-1}
\end{equation}

---

## Question 4
Calculate the momentum for a ship of mass 30,000 tonnes moving at $0.2ms^{-1}$

---

### Question 4: Answer

\begin{align*}
    & p = mv \newline
    & p = 30000000 \times 0.2 \newline
    & p = 6000000kgms^{-1}
\end{align*}

---

# Change in Momentum

When a force acts upon an object and its motion changes, its momentum will also change. We call change in momentum $\Delta p$.

\begin{align*}
    & \Delta p = p_{f} - p_{i} \newline
    & \Delta p = \text{final momentum} - \text{initial momentum}
\end{align*}

---

## Question 5

Angus bowls a cricket ball of mass $160g$ at a speed of $25ms^{-1}$. Lucy hits the ball back towards him at $35ms^{-1}$. Calculate the change in momentum.

__Hint:__ Define velocity in one direction as positive and the other direction negative.

---

### Question 5: Answer

Angus bowls a cricket ball of mass $160g$ at a speed of $25ms^{-1}$. Lucy hits the ball back towards him at $35ms^{-1}$. Calculate the change in momentum.

\begin{align*}
    & \Delta p = p_{f} - p_{i} \newline
    & \Delta p = (0.16 \times 35) - (0.16 \times -25) \newline
    & \Delta p = 5.6 - (-4) \newline
    & \Delta p = 9.6kgms^{-1}
\end{align*}

---

# Impulse

In order to cause a change in momentum, a force must act upon an object for some amount of time. This is called __impulse__.

\begin{align*}
    & F = ma \newline
    & F = m \frac{\Delta v}{\Delta t}  && \text{substituting for acceleration} \newline
    & F = m \frac{(v_{f} - v_{i})}{\Delta t} && \text{expanding }\Delta v \newline
    & F \Delta t = m (v_{f} - v_{i}) && \text{multiply by }\Delta t \newline
    & F \Delta t = mv_{f} - mv_{i} && \text{expand brackets} \newline
    & F \Delta t = \Delta p
\end{align*}

__Impulse__ is therefore $F \Delta t$, the product of force and time which causes the change in momentum.

---

## Question 6

A satellite is in orbit. It weighs $300kg$ and it has a thruster which exerts a force of $1500N$. How long must the satellite fire its thruster for if it wants to increase its speed from $5000ms^{-1}$ to $6000ms^{-1}$?

__Hint:__ Calculate the change in momentum necessary and then use the impulse relationship.

---

### Question 6: Answer

Step 1: Change in momentum

\begin{align*}
    & \Delta p = mv_{f} - mv_{i} \newline
    & = m(v_{f} - v_{i}) \newline
    & = 300(6000 - 5000) \newline
    & = 300000kgms^{-1}
\end{align*}

Step 2: Impulse

\begin{align*}
    & F \Delta t = \Delta p \newline
    & 1500 \Delta t = 300000 \newline
    & \Delta t = \frac{300000}{1500} \newline
    & \Delta t = 200s
\end{align*}

---

# Mahi Tuatahi

Lena is swinging a bucket of water in a circle around her head to demonstrate circular motion. The length of the rope is 0.75m and it takes 0.84s to go around.

1. Explain why the bucket is always accelerating. __(A)__
2. Calculate the acceleration of the bucket. __(M)__
3. Name the force that causes the bucket to accelerate as it goes around her head. Explain why the forces cause the bucket to accelerate. __(M)__

---

## Mahi Tuatahi: Answers

1. Explain why the bucket is always accelerating. __(A)__

The bucket is always accelerating because it is always changing direction, which means the velocity is always changing.

---

2. Calculate the acceleration of the bucket. __(M)__

\begin{align*}
    & a_{c} = \frac{v^{2}}{r} \newline
    & a_{c} = \frac{(\frac{(2 \pi r)}{T})^{2}}{r} && \text{substitute } v = \frac{2 \pi r}{T} \newline
    & a_{c} = \frac{(\frac{(2 \pi 0.75)}{0.84})^{2}}{0.75} && \text{substitute values} \newline
    & a_{c} = \frac{31.47}{0.75} \newline
    & a_{c} = 42ms^{-2}
\end{align*}

---

3. Name the force that causes the bucket to accelerate as it goes around her head. Explain why the forces cause the bucket to accelerate. __(M)__

__Centripetal force__

Centripetal force causes the bucket to accelerate because it acts as a tension force towards the center of the circle. The force acts at a right angle to the motion of the bucket, therefore causing it to change direction continuously towards the center of the circle.

---

# Conservation of Momentum

- Momentum is conserved during collisions between obejcts and in explosions.
- Momentum before the collision is equal to the momentum afterwards.

- Conservation of momentum only occurs when __no external forces are present__.
- For example gravity or friction either do not apply or have been cancelled by reaction forces.

- __Conservation of momentum__ is the only way to solve collision problems.
- Energy is not usually conserved and therefore cannot be used.

---

## Conservation of Momentum in 1D

The most straightforward problem you will see is conservation of momentum in 1-dimension. We will use subscript 1 and 2 to indicate object 1 and 2.

\begin{align*}
    & p_{1} = p_{2} \newline
    & m_{1}u_{1} + m_{2}u_{2} = m_{1}v_{1} + m_{2}v_{2} \newline
\end{align*}

So that we do not get confused about the velocities, we will also use $u$ to indicate initial velocities and $v$ to indicate final velocities.

---

## Question 7

Jordan is out clay pigeon shooting over the weekend and notices that the gun recoils when he fires. His rifle has mass $4kg$ and fires a bullet of mass $20g$ at $400ms^{-1}$. What is the recoil speed of the rifle into his shoulder?

__Hint:__ Think carefully about the inital speed of both the rifle and bullet before firing.

---

### Question 7: Answer

Both the bullet and the rifle are stationary beforehand. Therefore $m_{1}u_{1} + m_{2}u_{2} = 0$.

\begin{align*}
    & m_{1}u_{1} + m_{2}u_{2} = m_{1}v_{1} + m_{2}v_{2} \newline
    & 0 = m_{1}v_{1} + m_{2}v_{2}  && \text{use realisation from above} \newline
    & 0 = (4 \times v_{1}) + (0.02 \times 400) && \text{substitute values} \newline
    & 0 = 4v_{1} + 8 \newline
    & -8 = 4v_{1} \newline
    & v_{1} = \frac{-8}{4} \newline
    & v_{1} = -2ms^{-1}
\end{align*}

---

# Question 8

A moving car collides with a stationary van. The car has mass $950kg$ and the van has mass $1700kg$. The car is travelling $8.0ms^{-1}$ before the collision and $2.0ms^{-1}$ after the collision.

1. What quantity is conserved during the collision? __(A)__
2. Calculate the __size__ and __direction__ of the car's momentum change. __(E)__
3. Calculate the speed of the van immediately after the collision. __(M)__
4. If the average force that the van exerts on the car is $3800N$, calculate how long the collision lasts. __(A)__
5. The driver has a bag resting on the passenger seat during the collision. Explain why the bag fell to the floor during the collision. __(E)__
6. The front of modern cars are designed to crumple upon impact. Explain why this is beneficial to people in the car. __(E)__

---

# Question 8: Answer

##  1. What quantity is conserved during the collision? __(A)__

_Momentum is conserved_

---

##  2. Calculate the __size__ and __direction__ of the car's momentum change. __(E)__

\begin{align*}
    & \Delta p = p_{f} - p_{i} \newline
    & \Delta p = mv_{f} - mv_{i} && \text{substituting } p = mv\newline
    & \Delta p = (950 \times 2) - (950 \times 8) && \text{substitute values} \newline
    & \Delta p = 1900 - 7600 \newline
    & \Delta p = -5700Nm
\end{align*}

---

##  3. Calculate the speed of the van immediately after the collision. __(M)__

_The van is stationary before the collision._ $u_{2}=0$

\begin{align*}
    & m_{1}u_{1} + m_{2}u_{2} = m_{1}v_{1} + m_{2}v_{2} \newline
    & m_{1}u_{1} = m_{1}v_{1} + m_{2}v_{2}  && u_{2}=0 \newline
    & 950 \times 8 = (950 \times 2) + (1700 \times v_{2})  && \text{substitute values} \newline
    & 7600 = 1900 + 1700 v_{2} \newline
    & 5700 = 1700 v_{2} && \text{subtract 1900 from both sides} \newline
    & v_{2} = \frac{5700}{1700} && \text{divide through by 1700} \newline
    & v_{2} = 3.35ms^{-1}
\end{align*}

---

## 4. If the average force that the van exerts on the car is $3800N$, calculate how long the collision lasts. __(A)__

_The van exerts a force on the car that slows it down. Therefore the force is against the direction of motion, and therefore negative._

\begin{align*}
    & F \Delta t = \Delta p \newline
    & -3800 \times \Delta t = -5700 && \text{substitute values} \newline
    & \Delta t = \frac{-5700}{-3800} && \text{divide through by -3800} \newline
    & \Delta t = 1.5s
\end{align*}

---

## 5. The driver has a bag resting on the passenger seat during the collision. Explain why the bag fell to the floor during the collision. __(E)__

During the collision the van exerts a force upon the car to slow it down. This force acts over a duration of 1.5s. For a force to act upon an object it needs to be attached to or part of the object. A seatbelt attaches the driver to the car allowing the force to act upon the driver through the seatbelt to change their momentum.

Because the bag is not attached to the car the force cannot change its momentum, and it continues to move forward even as the car slows down. This causes it to leave the seat and fall to the ground.

---

## 6. The front of modern cars are designed to crumple upon impact. Explain why this is beneficial to people in the car. __(E)__

Whether or not a car has a crumple zone, the same change in momentum will occur because of the same change in motion. Using the impulse equation $F \Delta t = \Delta p$ we can see that by increase the time taken for the collision to occur, a smaller force is necessary. This smaller force means that less force affects the driver of the car and therefore reduces the risk of injury.

---

# Question 9

A Morris Minor car ($m=750kg$) is travelling at $30ms^{-1}$ and collides head on with a Mercedes Benz car ($m=1600kg$) travelling at $20ms^{-1}$ in the opposite direction. The two cars __lock together__ in the crash.

1. Calculate the total momentum
2. Calculate the velocity on the combined wreckage after the collision
3. Would the wreckage keep moving at this velocity? Why or why not?

---

# 1. Calculate the total momentum

_Because momentum is conserved, we can calculate the total momentum before OR after the collision._

\begin{align*}
    & \sum p = p_{1} + p_{2} && \text{sum momentum of two objects} \newline
    & \sum p = m_{1}u_{1} + m_{2}u_{2} && \text{subsititute } p = mv \newline
    & \sum p = (750 \times 30) + (1600 \times -20) && \text{Benz has negative velocity (opposite direction)} \newline
    & \sum p = 22500 - 32000 \newline
    & \sum p = -9500Nm 
\end{align*}

---

# 2. Calculate the velocity on the combined wreckage after the collision

\begin{align*}
    & \sum p_{i} = \sum p_{f} \newline
    & p_{1} + p_{2} = p_{3} && \text{vehicles locked together afterwards} \newline
    & m_{1}u_{1} + m_{2}u_{2} = m_{3}v_{3} && \text{substitute } p = mv \newline
    & -9500 = 2350v_{3} && \text{using total momentum from previous} \newline
    & v_{3} = \frac{-9500}{2350} && \text{divide through by 2350} \newline
    & v_{3} = -4.04ms^{-1}
\end{align*}

---

# 3. Would the wreckage keep moving at this velocity? Why or why not?

In the real world, no, because energy will be lost to the surroundings through heat and sound due to friction on the road, air resistance and engine friction.

---

# Collisions: Elastic vs. Inelastic

__Q.__ Can we use energy to calculate collisions?

__A.__ No, because energy is lost due to friction, meaning that __total kinetic energy is not conserved__.

However, in __elastic collisions__ total kinetic energy is conserved.

\begin{align*}
    & \sum E_{ki} = \sum E_{kf}
\end{align*}

__Note:__ If total kinetic energy is not conserved, the collision is __inelastic.__ Most collisions are inelastic.

---

# Practice Time!

Homework Book: Q22-26

Textbook: 11A and 11B (skip Q4 in 11B)