---
title: Healthy Diet
slug: healthy-diet
weight: 5
subtitle: 9SCIE - Energy for Life
---

## Mahi Tuatahi

1. Name two foods that you have eaten today that contain carbohydrates.
2. What does your body use proteins for?
3. Name two foods that contain heaps of fats.

---

## Ngā Whāinga Ako

- Be able to create a healthy diet

---

## Life Functions

All animals and plants need food. Food gives us the energy to carry out our life processes. To help us remember what the life processes are we use:

__MRS C GREN__

---

- __M__ ovement
- __R__ espiration
- __S__ ensitivity
- __C__ irculation
- __G__ rowth
- __R__ eproduction
- __E__ xcretion
- __N__ utrition

---

<iframe width="560" height="315" src="https://www.youtube.com/embed/cQPVXrV0GNA" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

---

![](../assets/healthy_diet-food-pyramid.png)

---

## Task

Use a full page of your book to make a poster explaining a special diet you have created.

- Include specific foods that are allowed/disallowed
- Perhaps a food pyramid
- The type of nutrients being focussed on in the diet
- Example meal plans

---

## Calories and Fat

- Kilojoules in food: <input type="number" id="kJ" placeholder="230"/>
- Kilojoules per week: <span class="kJ-num"></span>kJ x 7 = <span id="kJ-per-week"></span>kJ
- Kilojoules per year: <span class="kJ-num"></span>kJ x 365 = <span class="kJ-per-year"></span>kJ
- 37.7kJ will turn into 1 gram of fat, therefore
- Fat per year: <span class="kJ-per-year"></span>kJ / 37.7 = <span id="grams-per-year"></span>g = <span id="kg-per-year"></span>kg

<script>
document.addEventListener("DOMContentLoaded", function() {
	document.querySelector("input#kJ").addEventListener("input", function(e) {

		var kJ = e.target.value;
		
		// Update kJ numbers
		document.querySelectorAll(".kJ-num").forEach(function(el) {
			el.innerText = kJ;
		});

		// Calculate kJ per week
		document.querySelector("#kJ-per-week").innerText = kJ * 7;

		// Calculate kJ per year
		document.querySelectorAll(".kJ-per-year").forEach(function(el) {
			el.innerText = kJ * 365;
		});

		// Calculate fat per year
		document.querySelector("#grams-per-year").innerText = Math.round((kJ * 365) / 37.7);
		document.querySelector("#kg-per-year").innerText = Math.round((kJ * 365) / 37700);
	});
});
</script>
