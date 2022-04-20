---
course_code: SCH4U
course_name: Chemistry
---

This course is made up of five units. _Equilibrium_ is the most difficult; _organic chemistry_ is all about memorization. The last unit is short and it is evaluated only on the exam. There is a lot of homework during the entire course, and I suggest you do all of it. There are seven labs in the first half of the course, a week-long lab exam in the middle, and one more regular lab near the end. Around the same time as the lab exam is the independent portion of the organic unit -- _do not leave it to the last minute_. Start it at least week in advance (better yet, two weeks).

# Energy & Reaction Rates

In this unit, you'll learn about how energy is transferred during chemical reactions (thermochemistry) and how fast that happens (reaction rate). Here are a few terms that you should be familiar with:

chemistry
:   the study of matter and its transformations

thermochemistry
:   the study of energy changes that accompany physical or chemical transformations

thermal energy
:   a form of kinetic energy that results from the motion of the molecules possessed by an object

chemical system
:   a set of reactants and products under study, usually represented by a chemical equation

## Energy changes

The law of conservation of energy states that energy can be neither created nor destroyed. Therefore, the total energy of the universe is constant.

When studying transfers of energy, it is important to distinguish between the system and the surroundings. The **system** is the part of the universe being studied; the **surroudings** is everything else in the universe. If the system is the contents of the flask, then the surroundings includes the flask, the air, the table, the room, etc.

There are three types of systems: _open_, _closed_, and _isolated_. The name tells us whether matter and energy can move in and out of the system.

|          | Matter | Energy |
| :------: | :----: | :----: |
|   open   |  yes   |  yes   |
|  closed  |   no   |  yes   |
| isolated |   no   |   no   |

Isolated systems don't exist in nature. We usually work with closed systems. A stoppered flask, for example, is a closed system because matter is trapped inside and no outside matter is let in, but energy can move in and out freely (otherwise, placing the flask over a flame would have no effect on its contents).

Any change in energy in the system is accompanied by an equal and opposite change in the surroundings: `∆E_"system" + ∆E_"surroundings" = 0`.

Reactions are classified based on the system--surroundings energy transfer. In an **exothermic** reaction, energy is given off (released) by the system. In an **endothermic** reaction, energy is absorbed by the system. The change in temperature of the surroundings indicates the type of reaction. An increase (measured before and after the reaction) indicates that is was exothermic; a decrease, endothermic.

These state changes are endothermic:

- solid to liquid: melting/fusion
- liquid to gas: vaporization/evaporation/boiling
- solid to gas: sublimation

Going the other way is exothermic:

- liquid to solid: freezing/solidification
- gas to liquid: condensation
- gas to solid: sublimation/deposition

## Heat

Heat, mass, specific heat capacity, and temperature are related by

    `q = mc∆T`.

heat (`q`)
:   the amount of thermal energy that has been transferred between a system and its surroundings, measured in joules (J)

mass (`m`)
:   the mass of the object, measured in grams (g)

specific heat capacity (`c`)
:   the heat required to raise the temperature of 1 g of a substance by 1 ºC, measured in joules per gram per degree Celsius (J/gºC); see pages 301 and 799 of the textbook for `c` values of common substances

temperature (`T`)
:   a measure of the average kinetic energy of the particles in an object, measured in degrees Celsius (ºC)

> The `∆T` term should be calculated by subtracting the lower temperature from the higher temperature to ensure that `q` is always positive.

### Example

If 25.6 g of aluminum absorbs 0.5571 kJ of heat and its temperature rises to 42.6 ºC, what was its original temperature? (The specific heat of aluminum is 0.900 J/gºC.)

We can rewrite `q=mc∆T` as `q=mc(T_2-T_1)`. Rearranging yields

    `T_1 = T_2 - q/(mc)`,

and, making sure to convert heat from kilojoules to joules so that it matches the specific heat unit, we can substitute our givens:

    `T_1 = 42.6\ "ºC" - (0.5571\ "kJ")/((25.6\ "g")(0.900\ "J/gºC")) = 18.4\ "ºC"`.

## Enthalpy

The enthalpy (`H`) of a system is an important quantity studied by chemists. It is defined as the total heat content of a system. It is different from heat because it is a _property_ of a system, while heat is a _transport phenomenon_ (a system does not possess heat, but heat may transfer to or from it).

We don't use enthalpy in our calculations, but we do use enthalpy _change_:

    `∆H = n∆H_x`.

enthalpy change (`∆H`)
:   the energy absorbed from or released to the surroundings when a system's reactants react to form products, measured in kilojoules (kJ)

moles (`n`)
:   the molar amount of the substance in question (the system)

molar enthalpy (`∆H_x`)
:   the enthalpy change associated with one mole of the substance, measured in kilojoules per mole (kJ/mol); the subscript is a letter or combination of letters that indicate the type of change that is occurring (ex: `∆H_"sol"`, `∆H_"vap"`, `∆H_"fr"`); see pages 307 and 799--800 of the textbook for molar enthalpy values of various substances

> `∆H` and `∆H_x` are usually measured in kilojoules (or sometimes megajoules), but when they are placed in an equation with `q`, which is measured in joules, they all must be converted to the same unit.

As already mentioned, heat always has a positive value. Enthalpy change (and molar enthalpy) is negative for exothermic reactions and positive for endothermic reactions.

### Example

What amount of ethylene glycol (in moles) would vaporize while absorbing 200.0 kJ of heat? (`∆H_"vap"=58.8\ "kJ"`.)

We can rearrange `∆H = n∆H_"vap"` and substitute:

    `n = (∆H)/(∆H_"vap") = (200.0\ "kJ")/(58.8\ "kJ/mol") = 3.40\ "mol"`.

## Calorimetry

Enthalpy change cannot be measured directly. Instead, the heat added to or lost from the surroundings is measured. Calorimetry, one method of doing this, is the experimental technique of measuring energy changes in a chemical reaction or other process using an apparatus called a calorimeter (see page 309 for an example). It makes the following three assumptions:

- No heat is transferred between the calorimeter and the environment.
- Any heat absorbed or released by the calorimeter itself is negligible.
- Dilute aqueous solutions have the density and specific heat capacity of pure water (1 g/mL and 4.18 J/gºC respectively).

The magnitude of the system's enthalpy change is equal to the heat transferred to or from the surroundings:

    `|∆H_"system"| = q_"surroundings"`.

Keeping in mind that the left side refers to the system and the right side refers to the surroundings, we can rewrite this as

    `n|∆H_x| = mc∆T`.

### Example

10.0 g of urea, NH~2~CONH~2(s)~, is dissolved in 150 mL of water in a simple calorimeter. A temperature change from 20.4 ºC to 16.7 ºC is observed. Calculate the molar enthalpy of solution for urea.

First, we can find the amount of urea in terms of moles by divided by the molar mass of NH~2~CONH~2(s)~:

    `n = m/M = (10.0\ "g")/(60.07\ "g/mol") = 0.16647\ "mol"`.

Now we can rearrange `n|∆H_"sol"|=mc∆T` to

    `|∆H_"sol"| = (mc∆T)/n`,

and substitute the known variables, giving us

    `|∆H_"sol"| = ((150\ "g")(4.18\ "J/gºC")(20.4\ "ºC" - 16.7\ "ºC"))/(0.16647\ "mol") = 13.9\ "kJ/mol"`.

Since the temperature decreased in the surroundings, this was an _endothermic_ reaction, and the molar enthalpy of solution for urea has the positive value of 13.9 kJ/mol.

## Thermochemical equations

A thermochemical equation is an equation that includes enthalpy change. There are four different ways of writing them:

energy term

:   Include `∆H` as a term in the equation on the left side for endothermic reactions and on the right side for exothermic reactions.

        C~6~H~12~O~6(g)~ + 6 O~2(g)~ → 6 CO~2(g)~ + 6 H~2~O~(g)~ + 2820 kJ

enthalpy change value

:   Add the value of `∆H` to the end of the equation (negative if exothermic, positive if endothermic).

        C~6~H~12~O~6(g)~ + 6 O~2(g)~ → 6 CO~2(g)~ + 6 H~2~O~(g)~, `∆H = -2820\ "kJ"`

molar enthalpy of reaction

:   Write only the value of `∆H_x` (no equation), including the chemical formula of the substance with the unit.

        `∆H_"comb" = -2820\ "kJ/mol"` C~6~H~12~O~6~

potential energy diagram

:   A potential energy diagram is a graphical representation of energy transfer, with `E_p` on the vertical axis and "Reaction Progress" on the horizontal axis, reactants on one line and products on another, and an arrow joining the two labelled with the enthalpy change. See page 318 of the textbook for examples.

## Hess's law type 1

Some reactions' enthalpy changes are difficult to measure, usually because they are very slow (e.g., iron rusting). Instead of measuring it directly, we can use Hess's law.

The net changes in the properties of a system are independent of the way the system changes from the initial state to the final state. We can apply this like so: if a set of component reactions add up to equal a target reaction, then the components' enthalpy changes must add up to equal the target's enthalpy change:

    `∆H_"target" = sum ∆H_"known"`.

> The enthalpy change symbols in this equation have subscripts, but they don't represent molar enthalpies; they are measured in kJ, not kJ/mol.

### Example

What is the enthalpy change for the formation of two moles of nitrogen monoxide given the following reference equations?

    ½ N~2(g)~ + O~2(g)~ → NO~2(g)~, `∆H_1 = 34\ "kJ"`

    ½ O~2(g)~ + NO~(g)~ → NO~2(g)~, `∆H_2 = -56\ "kJ"`

First, we should identify our target equation: N~2(g)~ + O~2(g)~ → 2 NO~(g)~. We need one mole of N~2~ on the left side, so we need to multiply the first reference equation by 2. We need two moles of NO on the right side, so we must multiply the second equation by −2 (multiplying by a negative flips the equation). Remember to multiply the `∆H` values as well.

    N~2(g)~ + ~~2~~ O~2(g)~ → ~~2 NO~2(g)~~~, `∆H_1 = 68\ "kJ"`

    ~~2 NO~2(g)~~~ → ~~O~2(g)~~~ + 2 NO~(g)~, `∆H_2 = 112\ "kJ"`

When we add these, nitrogen dioxide and one mole of oxygen cancel out, leaving us with our target equation with the correct enthalpy change:

    N~2(g)~ + O~2(g)~ → 2 NO~(g)~, `∆H = 180\ "kJ"`.

## Hess's law type 2

The second way to apply Hess's law uses standard enthalpies of formation.

formation reaction

:   a reaction in which a compound is formed from its elements

        C~(s)~ + O~2(g)~ → CO~2(g)~, `∆H=-393.5\ "kJ"`

standard enthalpy of formation (`∆H_"f"`)

:   the molar enthalpy for a formation reaction (expressed per mole of product produced) where the elements are in their standard states and the reaction occurs at SATP (25 ºC and 101.3 kPa)

    `∆H_"f" = -393.5\ "kJ/mol"` CO~2(g)~

> The standard enthalpy of formation for elements already in their standard states is zero.

We can calculate the enthalpy change of a reaction using the individual `∆H_"f"` values of the products and reactants:

    `∆H = sum n∆H_"f(products)" - sum n∆H_"f(reactants)"`.

### Example

What is the enthalpy change for CH~4(g)~ + 2 O~2(g)~ → CO~2(g)~ + 2 H~2~O~(l)~?

Begin with the formula given above. Substitute moles and standard enthalpies of formation for each product and reactant:

    `∆H = [(1\ "mol")(-393.5\ "kJ/mol") + (2\ "mol")(-285.8\ "kJ/mol")]`<br>`- [(1\ "mol")(-74.4\ "kJ/mol") + 0]`.

This evaluates to −890.7 kJ. Notice that the answer is in kJ, not kJ/mol.

## Reaction rates

The reaction rate is the rate at which a reactant is consumed or a product is produced. We can determine it by measuring changes in colour, conductivity, pressure, volume, pH, mass, density, or concentration of a reactant or product over a series of time intervals. We usually use concentration:

    `r = (∆c)/(∆t)`.

reaction rate (`r`)
:   the rate at which the reaction progresses, measured in moles per litre-second (mol/L⋅s); it is negative when the substance is being consumed and positive when the substance is being produced

concentration change (`∆c`)
:   the change in the concentration of the substance in question, measured in moles per litre (mol/L)

time interval (`∆t`)
:   the time that passes during the concentration change, measured in seconds (s)

Given the rate for one reactant or product in an equation, we can use stoichiometry to determine the rates for the other reactants and products.

There are five main factors that affect the rate of a reaction:

- chemical nature of reactants
- concentration of reactants
- temperature of reactants
- surface area (for heterogeneous reactions)
- presence of a catalyst

A **catalyst** is a substance that increases the reaction rate by providing an alternative reaction pathway requiring a lower activation energy, without being consumed itself. If it is in the same phase as all reactants, it is called a homogeneous catalyst; otherwise, it is heterogeneous.

## Collision theory

For a reaction to occur, reactant particles must collide. For a successful collision to occur, there has to be

- sufficient energy to start breaking reactant bonds;
- the proper geometry (arrangement of the atoms).

Recall that temperature is a measure of the _average_ kinetic energy of the particles in a substance.

![Maxwell-Boltzmann distribution at two temperatures](maxwell-boltzmann.svg)

In this graph, two temperatures `T_1` and `T_2` are shown. For each one, there are particles with all different kinetic energies, but there are more particles at some kinetic energies then there are at others. The area below each curve is the same (they have the same total number of particles), but with `T_2`, the shape is shifted to the right, so there are more particles with high kinetic energies, meaning the temperature of the object is greater.

For a chemical reaction to occur, a minimum energy barrier must be surpassed. This is called the **activation energy** (`E_"a"`). Because increasing temperature increases the number of collisions (more kinetic energy leads to more frequent collisions) _and_ the fraction of collisions that are successful (because the kinetic energies are more likely to reach `E_"a"`), a 10 ºC rise in temperature can actually double or triple the rate.

If a collision is successful, then a higher energy, unstable, transitory particle if formed: the **activated complex**. This is a middle step (neither reactant nor product) that forms, has partial bonds, is highly reactive, exists for a very short duration, and then either breaks down to form products or re-forms the reactants. It exists between the time when reactant bonds break (exothermic) and product bonds form (endothermic), which is why it has so much energy.

![Endothermic potential energy diagram with activated complex](endo-ped.svg)

## Reaction mechanisms

Most chemical reactions occur as a sequence of elementary steps. The sequence as a whole is called the reaction mechanism. The slowest step is called the rate-determining step (RDS). The elementary steps must add up to the overall equation. The products of each elementary step are called reaction intermediates.

In the potential energy diagram, each peak represents a separate activated complex, and the valleys between them represent the reaction intermediates. The RDS always has the greatest activation energy.

![Exothermic potential energy diagram with reaction intermediates](mech-ped.svg)

# Equilibrium

This is the largest unit. It covers equilibrium calculations, Le Châtelier's principle, solubility, acids and bases, and thermodynamics. Solubility problems and acid--base problems are really just specific versions of the more general equilibrium problems, so it helps if you can see the pattern and only remember the differences.

## Dynamic equilibrium

When a chemical system is in dynamic equilibrium, there is a balance between forward and reverse processes. They are occurring at the same rate so that no overall change is taking place. There are several types:

solubility equilibrium

:   Dissolved and undissolved solute are in equilibrium; the forward process (dissolving) is occurring at the same rate as the reverse process (precipitating).

        CO~2(g)~ ⇌ CO~2(aq)~ (carbon dioxide in a pop can)

phase equilibrium

:   Pure substances in different physical states are in equilibrium; opposite state changes are occurring at the same rate.

        H~2~O~(s)~ ⇌ H~2~O~(l)~ (ice/water slush at 0 ºC)

chemical reaction equilibrium

:   Reactants and products are in equilibrium; the forward reaction and the reverse reaction are occurring at the same rate.

        CaCO~3(s)~ ⇌ CaO~(s)~ + CO~2(g)~

There are three conditions that must be met in order to achieve dynamic equilibrium in a chemical system:

- The forward and reverse processes occur at the same rate.
- The observable properties that depend on the total quantity of matter in the system, such as colour, pressure, concentration, and pH, are constant.
- The system is a closed system (energy can transfer to or from the surroundings, but matter cannot).

In an _open system_, a quantitative reaction can occur: virtually all of the limiting reactant is consumed and the maximum theoretical yield is achieved. In a _closed system_, the reaction is able to reach equilibrium. This limits the amount of product produced.

## Concentration at equilibrium

An ICE Table can be used to find the concentrations of all aqueous and gaseous reactants and products when a chemical reaction achieves equilibrium. It is a method of organizing stoichiometric calculations, and its letters stand for the following:

- [**I**]nitial concentration
- [**C**]hange in concentration
- [**E**]quilibrium concentration

All three are measured in mol/L, and they are related by **I** `+` **C** `=` **E**.

### Example

In the reaction H~2(g)~ + I~2(g)~ ⇌ 2 HI~(g)~, 2.00 mol of H~2(g)~ and 3.00 mol of I~2(g)~ are placed in a 1.00 L container. Calculate the other two equilibrium concentrations if I~2(g)~ has an equilibrium concentration of 1.30 mol/L.

Here is the **I** calculation for H~2(g)~ (you don't need to show all of them):

    `c = n/V = (2.00\ "mol")/(1.00\ "L") = 2.00\ "mol/L"`.

Let `x` represent the absolute value of the change in concentration of H~2(g)~. This can also be written more concisely like this: let `x = |∆["H"_2]|`.

> When writing the let statement for `x`, always choose a reactant or product that has a coefficient of 1. This way, you can simply fill in all the **C** values with `-ax` for reactants and `+ax` for products, where `a` is the coefficient for that reactant or product.

|       |            |            |           |
| :---: | :--------: | :--------: | :-------: |
|       |  H~2(g)~   |  I~2(g)~   | 2 HI~(g)~ |
| **I** |   `2.00`   |   `3.00`   |    `0`    |
| **C** |    `-x`    |    `-x`    |   `+2x`   |
| **E** | `2.00 − x` | `3.00 − x` |   `2x`    |

The **E** value for I~2(g)~ is known to be 1.30 mol/L, but our table tells us that it is also `x` subtracted from 3.00 mol/L, therefore we can set them equal:

    `1.30\ "mol/L" = 3.00\ "mol/L" - x qquad => qquad x = 1.70\ "mol/L"`.

By substituting 1.70 mol/L for `x` into the **E** expressions for H~2(g)~ and HI~(g)~, we can easily find their concentrations at equilibrium as well (0.30 mol/L and 3.40 mol/L respectively).

## Equilibrium constant

In the reaction `a` A + `b` B ⇌ `c` C + `d` D where lowercase letters are coefficients and uppercase letters are chemical formulas, the equilibrium constant (`K`) can be calculated using the equilibrium law expression:

    `K = ("[C]"^c"[D]"^d)/("[A]"^a"[B]"^b)`.

In words, the equilibrium constant is calculated by multiplying the **E** values of the products together, each with its coefficient as an exponent, doing the same thing with the reactants, and dividing. The products and reactions _must be gaseous or aqueous_ -- if they are solid or liquid, do not include them in the expression (make sure to leave a 1 in the numerator if there are no products left). The concentrations are all in mol/L, but `K` is unitless.

It is easy to calculate `K` given all the equilibrium concentrations, but you may also be asked to solve for a concentration given the other ones and the value of `K`. If there is an exponent on the concentration once you have isolated it, you will need to take the root of both sides.

The equilibrium constant depends on temperature. Its value indicates the relative amounts of reactants and products at equilibrium:

`K ~~ 1 => "[products]" ~~ "[reactants]"`
:   significant amounts of products and reactants

`K > 10^4 => "[products]" ≫ "[reactants]"`
:   very high yield; equilibrium favours products

`K < 10^-4 => "[products]" ≪ "[reactants]"`
:   very low yield; equilibrium favours reactants

The equilibrium constant for the reverse reaction is the reciprocal because the reactants and products swap places in the fraction:

    `K_"reverse" = 1/K_"forward"`.

### Example

At 2000 ºC, the equilibrium constant for 2 CO~2(g)~ ⇌ 2 CO~(g)~ + O~2(g)~ is 6.4 × 10^−7^. There is initially 1.50 mol of carbon dioxide in a 3.0 L container. What will the equilibrium concentration of carbon monoxide be?

First we can calculate **I** for CO~2(g)~:

    `c = n/V = (1.50\ "mol")/(3.0\ "L") = 0.50\ "mol/L"`.

Let `x` represent the absolute value of the change in concentration of O~2(g)~.

|       |             |           |         |
| :---: | :---------: | :-------: | :-----: |
|       | 2 CO~2(g)~  | 2 CO~(g)~ | O~2(g)~ |
| **I** |   `0.50`    |    `0`    |   `0`   |
| **C** |    `-2x`    |   `+2x`   |  `+x`   |
| **E** | `0.50 − 2x` |   `2x`    |   `x`   |

Now we set up the equilibrium law expression:

    `K = (["CO"]^2["O"_2])/(["CO"_2]^2) = ((2x)^2(x))/((0.50 - 2x)^2)`.

Before going any further, we can check to see if `K` is small enough for us to use a time-saving approximation. This is called the **hundred rule**: if the smallest initial concentration divided by `K` is greater than 100, you can drop out `x` where it is added or subtracted. Using CO~2(g)~ this gives us

    `["CO"_2]_"initial"/K = 0.50/(6.4xx10^-7) = 781250`,

and `781250 > 100`, therefore `K` is very small and `0.50 - 2x ~~ 0.50`. Now we can continue solving for `x` (notice that we got rid of the `x` in the denominator, but we have to keep the exponent):

    `K = ((2x)^2(x))/((0.50 - 2x)^2) ~~ ((2x)^2(x))/(0.50^2) = (4x^3)/0.25 = 16x^3`.

Since `K = 16x^3`,

    `x = root3(K/16) = root3((6.4xx10^-7)/16) = 0.00342`.

Now that we know the value of `x`, we can finally find the equilibrium concentration of carbon monoxide (two significant digits):

    `["CO"] = 2x\ "mol/L" = 0.0068\ "mol/L"`.

> In problems where you can't use the approximation and the fraction doesn't work out to a perfect square, you must use the quadratic formula to solve for x (there are two solutions, so cross out the one that will result in negative concentrations):
>
>     `x = (-b +- sqrt(b^2 - 4ac))/(2a)`.

## Reaction quotient

In a chemical reaction, we can tell if the system has reached equilibrium by evaluating the equilibrium law expression and comparing it to `K`. If there is still too much of the reactants and not enough of the products, we say that the system must _shift right_ (or the reaction must proceed to the right) to reach equilibrium. If it is the other way around, the system must _shift left_.

For example, a chemical reaction that begins with only reactants and no products must shift right because _some_ products have to form, otherwise the chemical equation would be wrong.

When we evaluate the equilibrium law expression using the current concentrations (which may or may not be at equilibrium), we call the result the reaction quotient (`Q`). It is exactly the same as `K` except that the system is not necessarily at equilibrium.

We compare `Q` to `K` to see where the system is relative to equilibrium:

- `Q = K =>` equilibrium
- `Q < K =>` left of equilibrium (must shift right to reach it)
- `Q > K =>` right of equilibrium (must shift left to reach it)

### Example

In the reaction N~2(g)~ + 3 H~2(g)~ ⇌ 2 NH~3(g)~, the equilibrium constant is 0.40 at 500 ºC. The concentrations are currently 0.10 mol/L N~2(g)~, 0.30 mol/L H~2(g)~, and 0.20 mol/L NH~3(g)~. Is this system at equilibrium?

Calculate the reaction quotient using the equilibrium law expression:

    `Q = (["NH"_3]^2)/(["N"_2] ["H"_2]^3) = ((0.20\ "mol/L")^2)/((0.10\ "mol/L")(0.30\ "mol/L")^3) = 15`.

Since `Q > K`, the system is not at equilibrium. There is too much NH~3(g)~ and not enough N~2(g)~ and H~2(g)~, so the system must shift left to reach equilibrium.

## Le Châtelier's principle

When a chemical system at equilibrium is disturbed by a change in a property, the system adjusts in a way that _opposes the change_. This is called Le Châtelier's principle (LCP).

Here are a few examples of applying LCP to predict how a system will respond when certain properties are changed:

concentration
:   When the concentration of a reactant is increased, the system will shift right to consume some of it; when it is decreased, the system will shift left to replace some of it. The same thing happens with products, but in the opposite direction.

temperature
:   When temperature is increased and the reaction is endothermic, the system will shift right to consume some of the energy; when it is decreased, the system will shift left to replace some of the energy. The same thing happens with exothermic reactions, but in the opposite direction.

gas volume
:   When volume is increased (or pressure is decreased), the system will shift to the side that has a greater amount of gaseous entities to restore some pressure. When volume is decreased (or pressure is increased), the system will shift to the side that has a lesser amount of gaseous entities to relieve some pressure. The number of gaseous entities is the total number of moles of gas. If both sides have the same number, the system _does not shift_ after changes in volume or pressure.

The following properties affect the reaction rate, but since they affect forward and reverse rates equally, they do _not_ disturb equilibrium and LCP does not apply:

- chemical nature of reactants
- presence of a catalyst
- presence of an inert gas

The last one needs more explaining. If an inert gas is added to the system while keeping volume constant, then the _total pressure_ increases, but the _partial pressures_ of all the gases participating in the reaction stay the same, so there is no shift. If the inert gas is added and volume is allowed to increase, then the partial pressures increase and the reaction will shift.

### Example

    N~2~O~4(g)~ + 57.2 kJ ⇌ 2 NO~2(g)~

| Change                           | Shift |
| :------------------------------- | :---: |
| add N~2~O~4(g)~                  | right |
| add NO~2(g)~                     | left  |
| remove NO~2(g)~                  | right |
| raise temperature                | right |
| lower temperature                | left  |
| increase pressure                | left  |
| decrease pressure                | right |
| add Ne~(g)~ at constant pressure | right |
| add Ne~(g)~ at constant volume   |  ---  |
| add catalyst                     |  ---  |

## Haber process

The Haber process, discovered by Fritz Haber in the early 1900s,  is the industrialized production of ammonia gas via

    N~2(g)~ + 3 H~2(g)~ ⇌ 2 NH~3(g)~ + 92 kJ.

This reaction is extremely slow at room temperature; in order to increase the rate, we must raise the temperature. The catalyst Fe~2~O~3(s)~ is also used to speed it up, but this itself requires a high temperature to be efficient. The problem here is that LCP tells us that an increase in temperature will cause the system to shift left, lowering the yield.

Haber discovered a balance: a temperature of 500 ºC to increase the rate (along with the catalyst) and a pressure of 30 MPa to shift the system right. In addition, ammonia is removed from the system once produced, causing the equilibrium to shift further right and allowing the unreacted gases to be recycled.

Billions of kilograms of ammonia are produced every year. It is used as a crop fertilizer, and it is also used in the production of bombs.

## Solubility product

Solubility is a measure of a solute's ability to dissolve in a solvent. More specifically, it is the concentration of a saturated solution of a solute when dissolved in a particular solvent at a particular temperature, measured in grams per hundred millilitres (g/100 mL) or, for molar solubility, moles per litre (mol/L).

A solution that has the maximum amount of solute dissolved in it is saturated. If there is less, the solution is unsaturated. If there is more, the solution is supersaturated -- this is unstable, and the extra solute will usually precipitate.

The solubility product constant (`K_"sp"`) is a special case of the equilibrium constant. It applies only to saturated solutions of solutes that have very low solubilities. Here is an example of one such solubility equilibrium:

    BaSO~4(s)~ ⇌ Ba^2+^~(aq)~ + SO~4~^2−^~(aq)~.

The fact that this system is at equilibrium means that barium sulfate is dissolving at the same rate that its ions are precipitating. These processes cancel each other out, so there is no overall change in the  concentrations of the ions. Since we don't include solids or liquids in the equilibrium law expression, the solubility product constant for this system is

    `K_"sp" = ["Ba"^(2+)]\["SO"_4^(2-)]`.

The name solubility _product_ constant should help you remember to only include the products (the ions). Smaller values of `K_"sp"` indicate lower solubilities because the position of the equilibrium is further left. Greater values indicate higher solubilities.

What if you have an extremely dilute solution of barium sulfate -- so much water and so little solute that it all dissolves? This means you have an unsaturated solution; the equilibrium equation doesn't apply (and neither do `K_"sp"` or LCP) because there is no dynamic equilibrium: the solid is not in equilibrium with the ions because there is no solid. What if you increase the concentration of the ions in a saturated solution? Some ions will precipitate, just like you would expect using LCP.

> Sometimes it will be necessary to convert between mol/L and g/100 mL. To convert the numerator of the unit between g and mol, multiply or divide by molar mass. To convert the denominator of the unit from 100 mL to L, multiply or divide by 0.1. It's easier to visualize when you write each one as a fraction and cross out the units that cancel.

### Example

What is the solubility of silver carbonate in g/100 mL if the solubility product constant is known to be 8.8 × 10^−12^?

First, write the solubility equilibrium equation:

    Ag~2~CO~3(s)~ ⇌ 2 Ag^+^~(aq)~ + CO~3~^2−^~(aq)~.

Now we can write the equilibrium law expression:

    `K_"sp" = ["Ag"^+]^2["CO"_3^(2-)]`.

Let `x` represent the equilibrium concentration of Ag~2~CO~3(aq)~. Note that Ag~2~CO~3(aq)~ is not in the equilibrium equation above, but it represents the entire right side, which is just the dissociated version of the aqueous compound. You can use the coefficients in the equation to write the concentration of each ion in terms of `x`.

    `8.8xx10^-12 = (2x)^2(x) = 4x^3`.

Now we can solve for `x`, which represents the molar solubility of silver carbonate:

    `x = root3((8.8xx10^-12)/4) = 1.3xx10^-4\ "mol/L"`.

## Predicting precipitation

The reaction quotient (`Q`) can be used in the context of solubility. It is calculated in exactly the same way as `K_"sp"`, except the solution is not necessarily saturated. We call this value the _trial ion product_, and we compare it with `K_"sp"` to predict precipitation:

- `Q = K_"sp" =>` saturated: no more solute can be dissolved
- `Q < K_"sp" =>` unsaturated: more solute can still be dissolved
- `Q > K_"sp" =>` supersaturated: extra solute will precipitate

### Example

If 25.0 mL of 0.010 mol/L silver nitrate is mixed with 25.0 mL of 0.0050 mol/L potassium chloride, will a precipitate form? The solubility product constant for silver chloride is 1.8 × 10^−10^.

First, write the balanced double displacement reaction, consulting the solubility guidelines to figure out which products are aqueous:

    AgNO~3(aq)~ + KCl~(aq)~ ⇌ KNO~3(aq)~ + AgCl~(s)~.

We can calculate the concentrations of the silver ion and chloride ion using `V_1c_1 = V_2c_2`. The concentration of silver ions is equivalent to the concentration of AgNO~3(aq)~ once it is diluted to 50.0 mL, which we calculate to be 0.0050 mol/L. Using the same method, the concentration of chloride ions is 0.0025 mol/L.

Now we can write the solubility equilibrium equation:

    AgCl~(s)~ ⇌ Ag^+^~(aq)~ + Cl^−^~(aq)~.

And calculate the trial ion product:

    `Q = ["Ag"^+] negthinsp ["Cl"^-] = (0.0050\ "mol/L")(0.0025\ "mol/L") = 1.3xx10^-5`.

Since `Q > K_"sp"`, the answer is yes -- a precipitate _will_ form.

## Common ion effect

Any equilibrium involving ions (like solubility equilibria) can be shifted by dissolving into the solution any other compound that adds a common ion, or any compound that reacts with one of the ions already in solution. For example, if you add a few drops of HCl~(aq)~ to a saturated solution of NaCl~(aq)~, some crystals of NaCl~(s)~ will precipitate because of the addition of chloride ions.

Usually, a common ion problem will give you two compounds. It will tell you the `K_"sp"` value for one and the concentration of the other, and then it will ask you to find the solubility of the first in the second. To find the solution, you need an ICE table -- this is the only time you'll ever need one in a solubility-related problem.

### Example

What is the molar solubility of lead(II) chromate in a 0.10 mol/L solution of sodium chromate? The solubility product constant for lead(II) chromate is 2.3 × 10^−13^.

First, write the solubility equilibrium equation of the compound whose concentration is _not_ given:

    PbCrO~4(s)~ ⇌ Pb^2+^~(aq)~ + CrO~4~^2−^~(aq)~.

Let `x` represent `|∆["CrO"_4^(2-)]|`. Now we can make our ICE table:

|       |             |              |                  |
| :---: | :---------: | :----------: | :--------------: |
|       | PbCrO~4(s)~ | Pb^2+^~(aq)~ | CrO~4~^2−^~(aq)~ |
| **I** |     ---     |     `0`      |      `0.10`      |
| **C** |     ---     |     `+x`     |       `+x`       |
| **E** |     ---     |     `x`      |    `x + 0.10`    |

Notice that we ignore lead chromate because it's a solid, not an aqueous solution or gas. Unlike in a regular solubility problem, one of our ions has an initial concentration. The 0.10 mol/L of chromate ions comes the compound in the question whose concentration _is_ given, sodium chromate.

Now we can write the solubility product constant expression:

    `K_"sp" = ["Pb"^(2+)]\["CrO"_4^(2-)] = (x)(x + 0.10)`.

Since `0.10/K_"sp" > 100`, we can drop `x` where it is added or subtracted:

    `K_"sp" = (x)(x + 0.10) ~~ x(0.10)`.

Now we can solve for `x`, which represents the molar solubility of lead(II) chromate in a 0.10 mol/L solution of sodium chromate:

    `x = K_"sp"/0.10 = (2.3xx10^-13)/0.10 = 2.3xx10^-12\ "mol/L"`.

## Entropy & spontaneity

A spontaneous reaction is a reaction that, given the necessary activation energy (`E_"a"`), proceeds without continuous outside assistance (e.g., the reaction between sodium and water). A non-spontaneous reaction requires energy to be continually supplied to it (e.g., the decomposition of water).

Entropy (`S`) is a measure of randomness or disorder. One analogy for this is a deck of cards: when they are stacked in a pile, there is only a certain number of ways they can be arranged. When the cards are thrown into the air, entropy increases greatly because there is nearly infinitely more ways that they can be arranged when they land. You can see this visually because they appear much more chaotic and disorganized when they land compared to when they were stacked neatly.

We can determine the entropy change associated with a reaction using **standard entropy**, which is defined as the entropy of one mole of a substance at SATP, measured in joules per mole kelvin (J/mol⋅K). The equation is very similar to Hess's law type 2:

    `∆S = sum n S_"products" - sum n S_"reactants"`.

> Unlike standard enthalpies of formation, the standard entropy for elements already in their standard states is not zero.

These physical changes increase entropy:

- increase in volume (of a gaseous system)
- increase in temperature
- state change from solid to liquid, liquid to gas, or solid to gas

These chemical changes also increase entropy:

- fewer moles of reactants molecules, more moles of product molecules
- complex molecules break down into simpler ones
- solid/liquid reactants become liquid/gaseous products

Enthalpy change and entropy change together determine whether a reaction is spontaneous:

- `∆H < 0, ∆S > 0 =>` spontaneous
- `∆H > 0, ∆S < 0 =>` non-spontaneous
- _same sign_ `=>` depends on temperature

## Gibbs free energy

Gibbs free energy (`G`) is energy that is available to do useful work. It can be thought of as a balance between enthalpy and entropy that accurately represents their roles in determining the spontaneity of a reaction. The change in free energy is defined by

    `∆G = ∆H - T∆S`.

The sign of `∆G` tells us whether the reaction is spontaneous:

- `∆G < 0 =>` spontaneous
- `∆G > 0 =>` non-spontaneous

When `∆H` and `∆S` have different signs, we know the spontaneity right away. When they have the same signs, we have to use `∆G` to determine which one overcomes the other.

## Laws of thermodynamics

There are three laws of thermodynamics:

1. The total amount of energy in the universe is constant: `∆E_"universe" = 0`. Energy can be neither created nor destroyed; it can only be transferred from system to surroundings or vice versa, or transform from one form to another. (This is also called the law of conservation of energy.)

2. All changes either directly or indirectly increase the entropy of the universe: `∆S_"universe" > 0`. This means the entropy of the universe is always increasing, never decreasing. If entropy decreases in a system, it is only possible because there is an even greater increase in the surroundings, so the overall change in the universe is positive.

3. The entropy of a perfectly ordered pure crystalline substance is zero when its temperature is absolute zero: `T = 0 => S = 0`.

## Brønsted--Lowry theory

In the Brønsted--Lowry acid--base theory, an acid is defined as a proton donor and a base is defined as a proton acceptor. Here, _proton_ means a hydrogen ion, H^+^ (a hydrogen atom without its electron is just a proton).

Some substances, such are water, are amphoteric (or amphiprotic). This means they are capable of acting as an acid _or_ as a base in different chemical reactions. Acids can be classified as monoprotic (having one ionizable proton, like HCl) or polyprotic (having multiple ionizable protons, like the diprotic acid H~2~SO~4~).

In the following reaction, HCl~(aq)~ is the acid and H~2~O~(l)~ is the base because the former gives its proton to the latter:

    HCl~(aq)~ + H~2~O~(l)~ → Cl^−^~(aq)~ + H~3~O^+^~(aq)~.

In the reverse reaction, Cl^−^~(aq)~ would be the base, so it is called the _conjugate base_. Similarly, H~3~O^+^~(aq)~ would be the acid in the reverse reaction, so it is the _conjugate acid_. A conjugate acid--base pair is a pair of substances whose formulas differ by a single proton. In the above reaction, the conjugate acid--base pairs are HCl/Cl^−^ and H~2~O/H~3~O^+^.

## Self-ionization of water

Water is never just a collection of H~2~O molecules. This reaction occurs:

    H~2~O~(l)~ + H~2~O~(l)~ ⇌ H~3~O^+^~(aq)~ + OH^−^~(aq)~.

Only a couple molecules per billion react in this way (equilibrium favours reactants), but it is still significant. It can also be written more succinctly:

    H~2~O~(l)~ ⇌ H^+^~(aq)~ + OH^−^~(aq)~.

The `K` value for this reaction is called the _ion product constant_ for water:

    `K_"w" = ["H"^+]\["OH"^-]`.

For pure water at SATP, the value of `K_"w"` is 1.0 × 10^−14^, and the concentration of both ions is 1.0 × 10^−7^ mol/L. This self-ionization occurs in all aqueous solutions. Given the hydrogen concentration, you can always find the hydroxide concentration using this formula (and vice versa).

When acids or bases are dissolved, the ion concentrations are no longer equal, but their product is still 1.0 × 10^−14^ (at SATP).

- `["H"^+] = ["OH"^-] =>` neutral
- `["H"^+] > ["OH"^-] =>` acidic
- `["H"^+] < ["OH"^-] =>` basic

### Example

What are the hydrogen and hydroxide ion concentrations in a 0.16 mol/L barium hydroxide solution?

First, we can write the dissociation equation (with a normal arrow because barium hydroxide is a strong base -- more on that in the next section):

    Ba(OH)~2(aq)~ → Ba^2+^~(aq)~ + 2 OH^−^~(aq)~.

We can find the hydroxide ion concentration using stoichiometry:

    `["OH"^-] = 2["Ba(OH)"_2] = 2(0.16\ "mol/L") = 0.32\ "mol/L"`.

Now, since `K_"w" = ["H"^+]\["OH"^-]`,

    `["H"^+] = K_"w"/(["OH"^-]) = (1.0xx10^-14)/(0.32\ "mol/L") = 3.1xx10^-14\ "mol/L"`.

## Strong acids & bases

A strong acid, such as hydrochloric acid, ionizes quantitatively (completely) in water to form ions. This means that, for example, in 0.10 mol/L HCl~(aq)~ there is really 0.10 mol/L of both H^+^~(aq)~ and Cl^−^~(aq)~. Some common strong acids: HCl, HClO~4~, HBr, HI, HNO~3~, and H~2~SO~4~ (you can remember most of them with the mnemonic _brinoso_).

A strong base, such as sodium hydroxide, also dissociates quantitatively in water. This means that, for example, in 0.10 mol/L NaOH~(aq)~ there is really 0.10 mol/L of both Na^+^~(aq)~ and OH^−^~(aq)~. All group 1 hydroxides (LiOH, NaOH, KOH, RbOH, CsOH) are strong bases. There are also strong bases from group 2: Mg(OH)~2~, Ca(OH)~2~, Ba(OH)~2~, and Sr(OH)~2~.

When we are working with strong acids and bases, it is easy to find the concentrations of H^+^~(aq)~ and OH^−^~(aq)~ as in the example from the previous section. Always make sure you don't have a strong acid or base before using the more complicated method for weak acids and bases.

## pH & pOH

pH is a unitless number used to convey the acidity of a substance without having to deal with numbers in scientific notation. You must use an _extra significant digit_ when calculating it (and drop a digit when you are going from pH to concentration). You can go between pH and concentration with these equivalent formulae:

    `"pH" = - log["H"^+] qquad <=> qquad ["H"^+] = 10^(-"pH")`.

The pH value tells us about the acidity of a solution:

- `"pH" = 7 =>` neutral
- `"pH" < 7 =>` acidic
- `"pH" > 7 =>` basic

pOH is just like pH, except it uses the hydroxide ion concentration:

    `"pOH" = - log["OH"^-] qquad <=> qquad ["OH"^-] = 10^(-"pOH")`.

If you have one of pH and pOH, you can easily find the other (at SATP):

    `"pH" + "pOH" = 14`.

### Example

Calculate the concentrations of H^+^~(aq)~ and OH^−^~(aq)~ and the values of pH and pOH for a 0.042 mol/L H~2~SO~4(aq)~ solution.

H~2~SO~4(aq)~ is a strong acid, so finding the H^+^~(aq)~ concentration is trivial:

    `["H"^+] = 2["H"_2"SO"_4] = 2(0.042\ "mol/L") = 0.084\ "mol/L"`.

Now we can use this to calculate pH. Remembering to keep an extra significant digit, we have

    `"pH" = - log["H"^+] = - log(0.084\ "mol/L") = 1.08`,

and then we can calculate pOH with

    `"pOH" = 14 - "pH" = 14 - 1.08 = 12.9`.

From that we can get the hydroxide ion concentration, remembering to drop the extra significant digit:

    `["OH"^-] = 10^(-"pOH") = 10^(-12.9) = 1.2xx10^-13\ "mol/L"`.

> We could have also used the ion product constant for water to get from H^+^ concentration to OH^−^ concentration, but this way is faster.

## Weak acids & bases

Strong acids ionize quantitatively, so we use a normal, one-directional arrow. Weak acids do not, so we have to use an equilibrium arrow. Acetic acid is an example of a weak acid:

    CH~3~COOH~(aq)~ ⇌ H^+^~(aq)~ + CH~3~COO^−^~(aq)~.

Since the equilibrium position is not the same for all weak acids, we have to care about the equilibrium constant, which in this case we call the _acid ionization constant_. For the general reaction HA~(aq)~ ⇌ H^+^~(aq)~ + A^−^~(aq)~, the acid ionization constant is

    `K_"a" = (["H"^+]\["A"^-])/(["HA"])`.

Similarly, weak bases have B~(aq)~ + H~2~O~(l)~ ⇌ HB^+^~(aq)~ + OH^−^~(aq)~ as their general reaction. The _base ionization constant_ is

    `K_"b" = (["HB"^+]\["OH"^-])/(["B"])`.

Another way of representing the position of the equilibrium for weak acids is _percent ionization_:

    `p = (["H"^+])/(["HA"]) xx 100% qquad <=> qquad ["H"^+] = ["HA"]\(p/(100%))`.

The following equation is true for all conjugate acid--base pairs:

    `K_"a"K_"b" = K_"w"`.

### Example

Given a solution of 0.082 mol/L phosphoric acid (a weak acid) whose pH is 1.68 upon reaching equilibrium, find the hydrogen ion concentration, the percent ionization, and the value of the acid ionization constant.

Finding the hydrogen ion concentration is easy enough:

    `["H"^+] = 10^(-"pH")\ "mol/L" = 10^-1.68\ "mol/L" = 0.021\ "mol/L"`.

We can use this to find the percent ionization:

    `p = (["H"^+])/(["HA"]) xx 100% = (0.02089\ "mol/L")/(0.082\ "mol/L") xx 100% = 26%`.

Our dissociation reaction is H~3~PO~4(aq)~ ⇌ H~2~PO~4~^−^~(aq)~ + H^+^~(aq)~. We need to use an ICE table to find the equilibrium concentrations.

|       |               |                    |            |
| :---: | :-----------: | :----------------: | :--------: |
|       | H~3~PO~4(aq)~ | H~2~PO~4~^−^~(aq)~ | H^+^~(aq)~ |
| **I** |     0.082     |         0          |     0      |
| **C** |    −0.021     |       +0.021       |   +0.021   |
| **E** |     0.061     |       0.021        |   0.021    |

Now we can calculate the acid ionization constant:

    `K_"a" = (["H"^+]\["A"^-])/(["HA"]) = ((0.02089\ "mol/L")(0.02089\ "mol/L"))/(0.06111\ "mol/L")`,

which evaluates to 7.1 × 10^−3^.

## Salt hydrolosis

A salt is an ionic compound (cation and anion). Salts are very soluble in water. When they dissolve, the ions sometimes react with water and affect the pH of the solution; we call this _hydrolosis_. To determine how a salt affects pH, you must look at each of its ions individually:

neutral (does not affect pH)
:   Cation of a strong base (e.g., Na^+^ from NaOH) or anion of a strong acid (e.g., Cl^−^ from HCl). Most of these ions are from group 1, 2, or 7, but don't forget polyatomic ions like SO~4~^2−^ from H~2~SO~4~.

acidic (decreases pH)
:   Conjugate acid of a weak base (e.g., NH~4~^+^, the conjugate acid of NH~3~) or metal cation with high charge density (Al^3+^ and Fe^3+^ are the main ones).

basic (increases pH)
:   Conjugate base of a weak acid (e.g., CH~3~COO^−^, the conjugate base of CH~3~COOH).

When a salt contains both a cation that decreases pH and an anion that increases pH, we must compare their ionization constants to see which one overwhelms the other:

- `K_"a" = K_"b" =>` neutral
- `K_"a" > K_"b" =>` acidic
- `K_"a" < K_"b" =>` basic

When a salt contains an amphoteric ion (it can donate a proton _or_ accept one, e.g., HSO~4~^−^), you must write the equation twice: once for when the ion acts as an acid and once for when it acts as a base. Then, compare the `K_"a"` and `K_"b"` values the same way as shown above.

There is one more special case: oxides. A _metal oxide_ always reacts with water to form a basic solution because one of the products is the hydroxide ion. Don't write a dissociation equation -- just react the compound with water directly. For example:

    CaO~(s)~ + H~2~O~(l)~ → Ca^2+^~(aq)~ + 2 OH^−^~(aq)~.

A _nonmetal oxide_ always reacts with water to form an acidic solution because one of the products is the hydronium ion. For example:

    CO~2(g)~ + H~2~O~(l)~ → H~2~CO~3(aq)~

    H~2~CO~3(aq)~ + H~2~O~(l)~ → HCO~3~^−^~(aq)~ + H~3~O^+^~(aq)~.

### Example

Will (NH~4~)~2~SO~4(s)~ produce a neutral, acidic, or basic solution when dissolved in water?

First, we write the dissociation reaction, indicating that the salt dissolves completely with a one-directional arrow:

    (NH~4~)~2~SO~4(s)~ → 2 NH~4~^+^~(aq)~ + SO~4~^2−^~(aq)~.

Since NH~4~^+^ is the conjugate acid of a weak base, we know that it will cause the solution to become acidic:

    NH~4~^+^~(aq)~ + H~2~O~(l)~ ⇌ NH~3(aq)~ + H~3~O^+^~(aq)~, `K_"a" = 5.8xx10^-10`.

However, SO~4~^2−^~(aq)~ will also affect the pH: it is the conjugate base of a weak acid, so it will cause the solution to become basic:

    SO~4~^2−^~(aq)~ + H~2~O~(l)~ ⇌ HSO~4~^−^~(aq)~ + OH^−^~(aq)~.

We can't just look up the ionization constant like we did for NH~4~^+^~(aq)~ because it isn't on the list, at least not directly. What _is_ on the list is `K_"a2"` for H~2~SO~4(aq)~, which is the same as `K_"a"` for HSO~4(aq)~. We can use this to find the ionization constant for the conjugate base of HSO~4~^−^~(aq)~, which is SO~4~^2−^~(aq)~. Since `K_"a"K_"b" = K_"w"`,

    `K_"b" = K_"w"/K_"a2" = (1.0xx10^-14)/(1.0xx10^-2) = 1.0xx10^-12`.

Now we have our `K_"a"` and `K_"b"` values for NH~4~^+^~(aq)~ and SO~4~^2−^~(aq)~. They are 5.8 × 10^−10^ and 1.0 × 10^−12^ respectively. Since `K_"a" > K_"b"`, dissolving this salt in water will result in an _acidic_ solution.

## Titration

A titration is a lab procedure where a precise amount of solution (the titrant) in a burette is added to a measured volume of sample solution. Its purpose is to determine the amount of a specified chemical in the sample.

The addition of the titrant continues until the **equivalence point** is reached, which is when the acid and base completely react with each other. In other words, _both_ are the limiting reactant. In a real titration, we stop adding titrant when a sharp change in colour occurs -- this is called the **endpoint**, and ideally it happens at the same time as the equivalence point. In practice, though, it is always slightly off.

The equivalence point occurs at the middle of the sharp increase or decrease in pH on the titration curve. The best indicator for any given titration is the one whose colour change pH range is centred around the pH of the equivalence point. In the graph below, an indicator that changes colour at around 7 would be ideal, but we can usually get away with phenolphthalein (it changes colour on the pH interval 8--10).

![Titration curve of a strong acid using a strong base](titration-graph.svg)

The pH of the equivalence point depends on the type of titration:

- strong acid with strong base: `"pH" = 7`
- weak acid with strong base: `"pH" > 7`
- weak base with strong acid: `"pH" < 7`

After completing a titration, we can calculate the missing piece of information using

    `V_"a"c_"a" = V_"b"c_"b"`,

where the known quantities are the concentration of titrant, the volume of titrant added, and the original volume of sample. The unknown variable is usually the concentration of the sample.

### Example

In a titration, 10.00 mL of 0.200 mol/L HCl~(aq)~ is titrated with standardized 0.250 mol/L NaOH~(aq)~. Find the amount of unreacted HCl~(aq)~ (in moles) and the pH of the solution

- before beginning the titration;
- after 2.00 mL of NaOH~(aq)~ has been added.

In the beginning, the amount of HCl~(aq)~ is given by

    `n = Vc = (0.0100\ "L")(0.200\ "mol/L") = 2.00\ "mmol"`,

and we can calculate pH with

    `"pH" = -log["H"^+] = -log(0.200\ "mol/L") = 0.6990`.

When 2.00 mL of NaOH~(aq)~ has been added, there is

    `n = Vc = (0.00200\ "L")(0.250\ "mol/L") = 0.500\ "mmol"`

of NaOH~(aq)~, and since each hydroxide ion reacts with each hydrogen ion, the amount of H^+^~(aq)~ that remains is

    `2.00\ "mmol" - 0.500\ "mmol" = 1.50\ "mmol"`,

and the pH of the solution at this point is

    `"pH" = -log["H"^+] = -log((1.50\ "mmol")/(10.00\ "mL" + 2.00\ "mL")) = 0.9031`.

## Buffer solutions

A buffer is a solution containing an equilibrium between a weak acid and its conjugate base, or between a weak base and its conjugate acid. The buffer is most effective when these two substances are present in equal concentrations. Buffers are special because they can maintain a _relatively constant pH_ when they are diluted or when moderate amounts of acid or base are added to them.

This solution can be prepared directly, but it also occurs during a titration of a weak acid or weak base. Specifically, it occurs when the volume of titrant is _half the volume_ that causes the equivalence point.

For example, a buffer solution containing H~2~CO~3(aq)~ and HCO~3~^−^~(aq)~ can be represented by the following equilibrium equation:

    H~2~CO~3(aq)~ ⇌ H^+^~(aq)~ + HCO~3~^−^~(aq)~.

Suppose we add HCl~(aq)~ to this solution. Normally, this would decrease the pH of the solution significantly. With a buffer, though, it will not change very much because the added hydrogen ions cause the equilibrium to shift left according to LCP.

If we add NaOH~(aq)~, the pH only increases slightly because the hydroxide ions combine with the hydrogen ions, causing the equilibrium to shift right to compensate for the decrease in hydrogen ions.

![Effect of adding hydrogen ions to a normal solution versus to a buffer solution](buffer-solution.svg)

# Organic Chemistry

There are no calculations in this unit -- it's all memorization. I've tried my best, but I really doubt that you will find the notes for this unit very useful. The best way to learn organic chemistry is by doing lots and lots of practice. By the end of it, you should be very comfortable classifying, naming, and drawing organic molecules.

What you _will_ find helpful are the study cards that I made for hydrocarbon derivatives, the independent part of the unit. These will hopefully help you memorize all the different functional groups and their properties.

- [Download the normal PDF](resources/hc-derivatives.pdf) for viewing the cards on a screen.
- [Download the tiled PDF](resources/hc-derivatives-print.pdf) for printing and cutting into index cards.

## Organic compounds

An _organic_ compound is a molecular compound with a backbone consisting of carbon and hydrogen atoms (ex: CH~4~, CH~3~OH, CH~3~COOH). All other molecular compounds are _inorganic_ (ex: CO, CO~2~). Organic compounds are either natural (occurring in nature) or synthetic (man-made).

Organic compounds that contain only carbon atoms and hydrogen atoms are called hydrocarbons. There are three types:

aliphatic hydrocarbons
:   chains and rings (includes alkanes, alkenes, and alkynes)

aromatic hydrocarbons
:   rings with alternating single and double bonds (benzene)

hydrocarbon derivatives
:   hydrocarbons with atoms other than carbon and hydrogen

## Aliphatics & aromatics

There are three types of aliphatic hydrocarbons:

alkane [(C~_n_~H~2*n*+2~)]{.parens}
:   only has single bonds (e.g., methane, CH~4~)

alkene (C~_n_~H~2*n*~)
:   has one or more carbon--carbon double bonds (e.g., ethene, C~2~H~4~)

alkyne (C~_n_~H~2*n*−2~)
:   has one or more triple bonds (e.g., ethyne, C~2~H~2~)

Alkanes are _saturated_ because their carbon atoms have the maximum number of bonds (four each). Alkenes and alkynes are _unsaturated_, and so they are more reactive. All aliphatics are generally nonpolar molecules, and the larger ones (longer chains) have higher boiling points than the smaller ones.

Alicyclics, or cyclic aliphatic hydrocarbons, occur when the two ends of an aliphatic's chain are joined together. There are cyclic alkanes (C~*n*~H~2*n*~), cyclic alkenes (C~*n*~H~2*n*−2~), and cyclic alkynes (these are rare).

Aromatic hydrocarbons are based on a ring of alternating single bonds and double bonds. This ring by itself is called _benzene_, and other hydrocarbons based on it (such as toluene) are collectively called aromatics.

![Benzene is usually represented with a circle inscribed within a hexagon](benzene.svg)

## Stuctural & geometric isomers

Structural isomers are molecules with the same molecular formula but different structural arrangements.

![Structural isomers of the alkane C~6~H~14~](structural-isomers.svg)

Gemoetric isomers, also called _cis--trans_ isomers, apply only to alkenes with one double bond. The double bond is fixed between two carbon atoms -- it can't rotate like single bonds can. The _cis_ isomer has the larger groups on the same side; the _trans_ isomer has the larger groups on opposite sides.

![Geometric isomers of 2-butene: cis-2-butene and trans-2-butene](geometric-isomers.svg)

## Representations

We don't usually use molecular formulas to refer to organic compounds because they give so little information. Instead, we use one of the following representations:

expanded molecular formula
:   a large molecular formula where each individual carbon is shown and is bonded to its adjacent symbols; brackets indicate side branches; for example, the EMF of 2,2-dimethylbutane is CH~3~C(CH~3~)~2~CH~2~CH~3~

structural model
:   a three-dimensional model, either the _ball and stick_ model or the _space-filling_ model; see page 11 of the textbook for examples

complete structural diagram
:   a two-dimensional representation of the compound that shows every atom and the bond lines between them

condensed structural diagram
:   like complete diagrams, but hydrogen atoms don't have to be shown individually: write CH~3~ instead of C with &mdash;H three times

line structural diagram
:   the most compact representation; there is an implied carbon atom at any point where the line ends or bends (vertices and termini), and hydrogen atoms are inferred

![Complete, condensed, and line structural diagrams for methylbutane](structural-diagrams.svg)

## Nomenclature

To name a hydrocarbon, you must

- pick the main chain and number it;
- identify all side branches;
- name each side branch in order;
- name the main chain.

As long as you can do each step individually, putting it all together isn't that hard. It does require practice, though.

### Main chain

alkane
:   [&thinsp;_prefix_]ane, where _prefix_ represents the number of carbon atoms in the main chain (see the table below)

alkene
:   \#-[&thinsp;_prefix_]ene; #,#-[&thinsp;_prefix_]**di**ene; #,#,#-[&thinsp;_prefix_]**tri**ene; etc.; where each # represents the location of a double bond and the part in bold indicates the number of double bonds

alkyne
:   like alkenes, but ending in _yne_ instead of _ene_

alicyclic
:   like alkanes/alkenes/alkynes, but add _cyclo_ before the prefix

aromatic
:   always _benzene_

| Prefix | atoms |
| :----: | :---: |
|  meth  |   1   |
|  eth   |   2   |
|  prop  |   3   |
|  but   |   4   |
|  pent  |   5   |
|  hex   |   6   |
|  hept  |   7   |
|  oct   |   8   |
|  non   |   9   |
|  dec   |  10   |

### Side branches

Side branches (_alkyl_ groups) are named like #-[&thinsp;_prefix_]yl, #,#-**di**[&thinsp;_prefix_]yl, etc., where _prefix_ is the number of carbon atoms in the branch, each # represents the location of the branch on the main chain, and the part in bold indicates the number of this type of branch.

Propyl and butyl groups have non-systematic names for their isomers:

![Structural isomers of propyl and butyl](propyl-butyl.svg)

If there are two side branches coming off an aromatic, a classical method can be used instead of numbers: ortho or _o-_ means 1,2; meta or _m-_ means 1,3; and para or _p-_ means 1,4. For example, 1,4-diethylbenzene is the same as _p_-diethylbenzene.

There are special names for branches that aren't alkyl groups:

| Branch  |  Name   |
| :-----: | :-----: |
| benzene | phenyl  |
|    F    | fluoro  |
|   Cl    | chloro  |
|   Br    |  bromo  |
|    I    |  iodo   |
|  NO~2~  |  nitro  |
|  NH~2~  |  amino  |
|   OH    | hydroxy |

### Guidelines

- Always pick the longest main chain possible.
- If there are any double or triple bonds, the main chain must contain all of them, even if this results in a shorter main chain.
- Number the main chain to prefer small numbers, prioritizing the double or triple bonds, then the side branches, and then everything in total (2,2,4 is better than 2,4,4).
- Name side branches in alphabetical order (tri**e**thyl comes before di**m**ethyl).
- Numbers separated by commas should be listed in ascending order.
- Put commas between numbers, and hyphens at number--word boundaries.

# Electrochemistry

This unit is about the intersection of electrical and chemical phenomena. You'll learn about redox reactions and how to balance them, and then you'll apply that theoretical knowledge to batteries and corrosion.

## Redox reactions

An _oxidation_ reaction results in the loss of electrons and an increase in oxidation number. A _reduction_ reaction results in the gain of electrons and a decrease in oxidation number. They always occur together, and the net reaction is called a _redox_ reaction. You can remember which is which with "oil rig" -- **o**xidation **i**s **l**oss; **r**eduction **i**s **g**ain. In a redox reaction, the reactant atom that gets oxidized is the reducing agent, and the one that gets reduced is the oxidizing agent.

### Example

The reaction between solid zinc and aqueous copper(II) nitrate is a single displacement reaction:

    Zn~(s)~ + Cu(NO~3~)~2(aq)~ → Cu~(s)~ + Zn(NO~3~)~2(aq)~.

There are two half-reactions within this, and when we add them together, we get the redox reaction:

- oxidation: Zn~(s)~ → Zn^2+^~(aq)~ + 2 e^−^
- reduction: Cu^2+^~(aq)~ + 2 e^−^ → Cu~(s)~
- redox: Zn~(s)~ + Cu^2+^~(aq)~ → Zn^2+^~(aq)~ + Cu~(s)~

Notice that the electron terms cancel out, and the final redox reaction clearly shows two electrons transferring from zinc to copper.

## Oxidation numbers

The oxidation number is a positive or negative number assigned to an atom. For an ion, this is the same as the charge: the number of electrons lost (positive) or number of electrons gained (negative). In a covalent molecule, the oxidation number is assigned as if the shared electrons belonged entirely to the more electronegative atom. Oxidation number is _not_ the same as charge; it is just a systematic way of counting electrons.

The oxidation number of an uncombined element like O~2(g)~ or Ca~(s)~ is always _zero_. For atoms that are part of compounds, refer to this table:

|   Atom   | Oxidation No. |
| :------: | :-----------: |
|  oxygen  |      −2       |
| peroxide |      −1       |
| hydrogen |      +1       |
| hydride  |      −1       |
| group 1A |      +1       |
| group 2A |      +2       |
| group 7A |      −1       |

This helps, but it leaves out a lot of atoms. To determine their oxidation number, we need to use a bit of algebra. For a neutral compound, the subscripts multiplied by the oxidation numbers sum to zero. For polyatomic ions, the sum is the charge.

### Example

What is the oxidation state of nitrogen in hydrazine?

Hydrazine is N~2~H~4~, and we know that hydrogen in a molecule has an oxidation number of +1. This is a neutral compound, so the oxidation numbers must add up to zero. Mathematically, this means that

    `2x + 4(+1) = 0 qquad => qquad 2x = -4  qquad => qquad x = -2`.

The oxidation number of nitrogen in hydrazine is therefore −2.

## Balancing redox equations

There are two methods that we'll use to balance redox reaction equations. The first is  called the oxidation number method:

1. Assign oxidation numbers to all atoms in the equation.
2. Identify which atoms change their oxidation number.
3. Draw an arrow and indicate how many electrons were gained or lost by writing the number in brackets next to the arrow.
4. If the atom has a subscript on one or both of the atoms, write the least common multiple of those subscripts after the brackets.
5. Find the least common multiple of the products on the two arrows. Add multipliers to the front of the brackets so that the products are equal.
6. Add coefficients -- just the number left of the brackets if it already has a subscript, or the product of the left number and the right number if it doesn't have a subscript.
7. Balance the oxygen atoms using H~2~O~(l)~.
8. Balance the hydrogen atoms using H^+^~(aq)~.
9. _Basic solutions_: Add OH^−^ to both sides equal in number to the H^+^ ions. Combine H^+^ and OH^−^ to make H~2~O, and cancel out anything that appears on both sides of the equation.

The second method is the half-cell, half-reaction, or ion-electron method:

1. Divide the equation into oxidation and reduction half-reactions.
2. Balance each half-reaction for number of atoms: first balance atoms other than H and O, then add H~2~O to balance O, and finally add H^+^ to balance H.
3. Calculate the sum of the _charges_ (not oxidation numbers) on both sides, and then add electrons to one side to balance the charge.
4. Multiply both half-reactions so that electrons lost equal electrons gained.
5. Add the half-reactions together, cancelling out anything that appears on both sides of the net equation.
6. Refer to step 9 in the oxidation number method for basic solutions.

You won't learn either of these methods just by reading this. Balancing redox equations isn't that difficult, but it requires practice.

## Galvanic cells

A galvanic cell is an electrochemical cell that derives electrical energy from a spontaneous redox reaction. There are two beakers with electrolytic solutions in them, and one electrode in each. You need to be able to identify certain features in a galvanic cell:

- _anode_: the negative electrode
- _cathode_: the positive electrode
- _oxidation half-cell_: the beaker containing the anode
- _reduction half-cell_: the beaker containing the cathode
- _salt bridge_: a porous barrier that maintains electrical neutrality in the half-cells by allowing ions to flow through it
- _electron flow_: electrons flow from anode to cathode through a wire
- _ion flow_: anions flow through the salt bridge to the anode beaker; cations flow through the salt bridge to the cathode beaker
- _voltmeter_: a device that measures voltage

A galvanic cell can be represented succinctly with _standard cell notation_:

    cathode\ **|**\ electrolyte\ **||**\ electrolyte\ **|**\ anode.

![Galvanic cell diagram](galvanic-cell.jpg)

Sometimes, an _inert electrode_ will be required because one of the half-reactions has no solids in it (the electrode has to be a solid). For example, a hydrogen--cobalt cell would be Pt~(s)~\ **|**\ H^+^~(aq)~, H~2(g)~\ **||**\ Co^2+^~(aq)~\ **|**\ Co~(s)~. At the anode, solid cobalt is flaking off and giving up electrons to become cobalt ions. In the other beaker, hydrogen ions are gaining electrons and becoming hydrogen gas. The electrons go through the wire and into the platinum electrode, which, unlike the cobalt electrode, does not participate in the reaction -- it is inert. It's sort of like sticking the wire into the solution, except that it doesn't exactly work that way; it has to be an electrode made of platinum or carbon.

The key thing to remember with all of this is the associations:

- oxidation, increase oxidation number, loss of electrons, anode, negative
- reduction, decrease oxidation number, gain of electrons, cathode, positive

## Spontaneity

Some redox equations are spontaneous; they will proceed without outside assistance. The others are spontaneous in the backward direction; they require an electrical current to be applied to force the reaction forward. The electric potential difference, or voltage, of a redox reaction is

    `∆E^0 = E_"r(cathode)"^0 - E_"r(anode)"^0`.

The `E_"r"^0` values come from the redox table titled "Relative Strengths of Oxidizing and Reducing Agents" on page 805 of the textbook. All `E_"r"^0` values are to the standard hydrogen electrode:

    2 H^+^~(aq)~ + 2 e^−^ → H~2(g)~, `E_"r"^0 = 0.00\ "V"`.

The value of `∆E^0` tells us about spontaneity:

- `∆E^0 > 0 =>` spontaneous
- `∆E^0 < 0 =>` non-spontaneous

You can tell that a galvanic cell is spontaneous right away by checking if the species that gets reduced at the cathode is _above_ the species that gets oxidized at the anode in the redox table.

## Corrosion

Corrosion is a redox reaction in which a pure metal reacts with substances in the environment, returning to an ore-like state. Aluminum, for example, rapidly oxidizes in air:

    4 Al~(s)~ + 3 O~2(g)~ → 2 Al~2~O~3(s)~.

This the surface of the Al~(s)~ in a thin layer of Al~2~O~3(s)~, preventing any further corrosion on the inside -- oxygen cannot get past the aluminum oxide to corrode the pure aluminum.

When iron corrodes, the rust flakes off and exposes new iron. This requires the presence of both oxygen and water. It is accelerated by acidic solutions, electrolytes, mechanical stress, and contact with less active metals. There are multiple steps in the rusting process:

1. Fe~(s)~ → Fe^2+^~(aq)~ + 2 e^−^
2. ½ O~2(g)~ + H~2~O~(l)~ + 2 e^−^ → 2 OH^−^~(aq)~
3. Fe(OH)~2(s)~ is further oxidized and becomes yellow-brown Fe(OH)~3(s)~.
4. Some Fe(OH)~3(s)~ becomes Fe~2~O~3~ ⋅ 3 H~2~O~(l)~.
5. The final red-brown rust is referred to as Fe~2~O~3~ ⋅ `x` H~2~O~(l)~.

The iron oxidation occurs at one location (anode) and the oxygen reduction occurs at another (cathode). The rust piles up between them. Eliminating either water or oxygen makes this rusting process impossible.

There are two methods for preventing corrosion. _Protective coating_ is just what it sounds like: cover up the surface to prevent it from coming in contact with oxidizing agents. _Cathodic protection_ works by supplying the iron with an electric current, forcing the metal to become the cathode and making corrosion non-spontaneous. You can combine both methods using a _sacrificial anode_, where you coat the surface with a more active metal. This protects the surface _and_ it forces the other metal to be the cathode. Zinc plating, also known as galvanizing, is an example of this.

# Structure and Properties of Matter

This unit will take everything you _thought_ you knew about atomic theory and turn it on its head. You'll learn about the modern model of the atom and the history that preceded it, as well as the structure and interactions of molecules. Here are some terms you should know:

emission spectrum
:   a series of bright lines of light produced or emitted by a gas that has been excited by, for example, heat or electricity

absorption spectrum
:   a series of dark lines on a continuous spectrum produced by placing a gas between the continuous spectrum source and the observer

quantum
:   a small, discrete, indivisible quantity

photon
:   a quantum of light energy

ground state
:   the lowest possible energy state of an atom

excited
:   describes an atom in which an electron has moved to a higher energy level by absorbing a photon

polar bond
:   a bond in which there is unequal sharing of electrons

nonpolar bond
:   a bond in which there is equal sharing of electrons

ionic bond
:   extremely polar bond where electrons are transferred

polar molecule
:   a molecule containing asymmetrical polar bonds that do not cancel out

nonpolar molecule
:   a molecule containing symmetrical polar bonds that cancel out

## Early history

Our understanding of the atom has evolved through the centuries thanks to contributions made by many different people. Here are some of the most important contributors:

Democritus
:   Democritus proposed that matter could be divided until an indivisible particle was reached: the atom.

John Dalton
:   Dalton devised with an atomic theory with six postulates: matter is composed of indestructible, indivisible atoms that are the same for one element but different from other elements.

J.J. Thompson
:   Thompson discovered subatomic particles -- the atom is a positively charged sphere with negatively charged particles embedded within it. This is called the raisin-bun model.

Sir Ernest Rutherford
:   Rutherford concluded that the atom is a nucleus consisting of positively charged protons, surrounded mostly by empty space, some of which is occupied by negatively charged electrons (solar-system model).

Sir James Chadwick
:   Chadwick suggested the existence of neutrons within the nucleus.

Niels Bohr
:   Bohr experimented with hydrogen gas and its emission and absorption spectra. He concluded that the atom has specific allowable energy levels, called stationery states. Electrons only emit energy when they transfer from one energy level to another. He used Max Planck's quantum theory to support his own.

## Quantum numbers

We don't know for sure where an electron is at any given point in time. Electrons occupy _orbitals_; the orbitals are inside energy sublevels, which themselves are inside energy levels. This orbital, or electron cloud, is a region in which there is a high probability of finding the electron. The orbital only tells us the probability of finding the electron at a particular location -- it says nothing about the path travelled by the electron.

There are four _quantum numbers_ that we use designate an electron. Each electron in an atom is uniquely described by four values for these numbers:

principal (`n`)
:   a positive integer representing the electron's energy level

azimuthal (`l`)
:   a nonnegative integer from zero to `n - 1` describing shape of the orbital and identifying the sublevel within the energy level; commonly denoted by letters _s_, _p_, _d_, and _f_\  for the values 0, 1, 2, and 3, respectively

magnetic (`m_l`)
:   an integer from `-l` to `+l` representing the orientation of the orbital

spin (`m_s`)
:   either −½ or +½, representing the direction of the electron's spin

All four numbers identify one electron. The first three identify an orbital, which contains up to 2 electrons. The first two identify the energy level and sublevel, which contains up to `2l + 1` orbitals each containing up to 2 electrons. The principal quantum number alone identifies the main energy level, which contains up to `2n^2` electrons in total.

There are three rules about filling up electron orbitals:

Aufbau principle
:   fill lower energy levels (`n`) before moving on to the next energy level

Pauli's exclusion principle
:   no two electrons have the same four quantum numbers

Hund's rule
:   put one electron by itself in each orbital of a sublevel before making pairs

See pages 186--191 of the textbook to learn how to draw energy level diagrams. See pages 192--193 to learn about electron configuration.

> We are expected to know about two exceptions for electron configuration: chromium [Ar]4s^1^3d^5^ and copper [Ar]4s^1^3d^10^.

## Lewis structures

Follow these steps when drawing a Lewis structure of a molecule:

1. Arrange bonded atoms symmetrically around the central atom.
2. Count the total number of valence electrons (including an ion's charge).
3. Place a bonding pair of electrons between the central atom and each atom surrounding it.
4. Complete the octets of surrounding atoms with lone pairs, and, if the total number of electrons is not yet reached, add lone pairs to the central atom.
5. If the central atom doesn't have an octet, move pairs from bonded atoms to form double bonds or triple bonds.
6. Draw the final Lewis structure. If it is a polyatomic ion, enclose it in square brackets and indicate the charge with a superscript.

## VSEPR theory

VSEPR stands for _valence shell electron pair repulsion_, and it is used to predict molecular shape. Only valence shell electrons are important for determining the shape of a molecule. Bonded pairs and lone pairs are treated approximately equally. The valence pairs repel each other; the molecular shape is given by the positions of the pairs that result in the least possible repulsion (maximum separating distance). To predict the shape of a molecule, follow these steps:

1. Draw the Lewis structure of the molecule.
2. Count the total number of bonding pairs (`n`) and the total number of lone pairs (`m`) around the central atom. The shape is then written AX~_n_~E~_m_~.
3. Refer to the table on page 798 of the textbook to predict the shape.

To draw the molecule, use straight lines for single bonds, double and triple lines for double and triple bonds, dashed lines for single bonds going into the page, and wedged lines for single bonds coming out of the page. Include bond lines to lone pairs only for three-dimensional molecules. Remember to enclose everything in brackets with a superscript charge if it's a polyatomic ion. Add bond dipoles if you are explaining the polarity of the molecule. Indicate the bond angles if asked -- you should memorize all of the following bond angles:

- linear: 180º
- trigonal planar: 120º
- trigonal planar (with double bond): 118º, 121º
- V-shaped/bent: 104.5º
- trigonal pyramidal: 107.3º
- tetrahedral: 109.5º

## Intermolecular forces

An intermolecular force is a force of attraction or repulsion between molecules (as opposed to intramolecular forces within a single molecule, such as ionic bonds or covalent bonds). There are three main intermolecular forces, and they are referred to collectively as _van der Waals_ forces. They are all much weaker than intramolecular bonds. They affect melting points and boiling points, surface tension, the shape of the meniscus, capillary action, volatility, and the solubility of substances. There are three main van der Waals forces:

dipole--dipole
:   a force of attraction between polar molecules due to the simultaneous attraction between a dipole and surrounding dipoles; its strength is dependent on the polarity of the molecule

London
:   the simultaneous attraction of an electron by nuclei within a molecule and by nuclei in adjacent molecules; its strength is directly related to the number of electrons in the molecule

Hydrogen bonding
:   the attraction of hydrogen atoms bonded to N, O, or F atoms to a lone pair of electrons of N, O, or F atoms in adjacent molecules; stronger than the dipole--dipole force and the London force

## Structure and properties of solids

There are four types of solids. They all form crystals that have definite shape and volume, are virtually incompressible, and do not flow readily. However, properties such as hardness, melting point, mechanical characteristics, and conductivity vary.

ionic
:   Ionic crystals are formed from a combination of a metal cation and a nonmetal anion, for example NaCl~(s)~. They form a three-dimensional crystal lattice: a regular, repeating pattern in the arrangement of the ions. The positive and negative ions are held together by _strong, directional ionic bonds_. Ionic crystals are hard, brittle, conductive as liquids and in solution (not as solids), and have high melting points.

metallic
:   Metallic crystals are formed from metal elements. The metal elements become cations in a three-dimensional arrangement, and they are held together by _strong, nondirectional bonds_ created by the "sea" of mobile electrons. They are shiny, conductive, vary from soft to hard, have varying melting points, and they are malleable, ductile, and flexible. A Rice Krispies square is a good analogy for a metallic crystal: the grains of rice are metal cations, and the marshmallow represents the electron sea.

molecular
:   Molecular crystals are formed by nonmetal elements or molecular compounds packed closely together. This three-dimensional arrangement of neutral molecules is held together by _relatively weak intermolecular forces_. Molecular crystals are not very hard, are not conductors, have low melting points, and are packed together as closely as size and shape allows.

covalent network
:   Covalent network crystals are formed from metalloids or carbon. These atoms are all connected in a network of covalent bonds, as if the entire solid was a single molecule. Specifically, the atoms are arranged in a three-dimensional network and are held together by _strong, directional covalent bonds_. These crystals are very hard, insoluble nonconductors, and they have very high melting points. Diamond, one form of C~(s)~, is an example of a covalent network crystal.
