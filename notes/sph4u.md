---
course_code: SPH4U
course_name: Physics
---

This is supposedly the most difficult course in all of high school. It mostly covers the same topics as in grade eleven physics, but in more depth. There is no getting around the fact that you have to spend time doing all the practice problems if you want good marks on the tests. The first unit is the longest, but it is mostly just different ways of using the same few equations. The third unit has the most content, and the fourth involves the most memorization and _'splain_ problems.

# Basic Skills

Most of this is review. If you haven't learned significant digits by now, you probably never will. The only thing that's really new is absolute and relative uncertainty. Vectors should be familiar since we used them in grade eleven, but now we get to add and subtract them using trigonometry instead of using scale diagrams.

## Notation

### Significant digits

All digits in a number are significant except

- zeros on the left;
- zeros on the right _if there is no decimal point_.

In counted numbers like _twelve eggs_ or numbers defined as equalities such as `1\ "km" = 1000\ "m"`, the number of significant digits is infinite.

When you add or subtract numbers, the answer should have no more _decimal places_ than the given value with the fewest. When you do anything else, the answer should have no more _significant digits_ than the given value with the fewest.

### Scientific notation

We use scientific notation for small numbers and big numbers. It is also useful for making it very clear how many significant digits a number has. For example, we would assume that 100 has one significant digit. To show that there are three, you have to use 1.00 × 10^2^.

### Metric prefixes

Make sure you remember all the metric prefixes. Also, remember that you can multiply by 3.6 to convert a speed from m/s to km/h (and divide to go the other way).

| Prefix | Factor |
| :----: | :----: |
|   G    | 10^9^  |
|   M    | 10^6^  |
|   k    | 10^3^  |
|   h    | 10^2^  |
|   da   | 10^1^  |
|  ---   | 10^0^  |
|   d    | 10^−1^ |
|   c    | 10^−2^ |
|   m    | 10^−3^ |
|   μ    | 10^−6^ |
|   n    | 10^−9^ |

## Measurements

### Accuracy and precision

Measurements are never _exact_. There is always some uncertainty, usually due to limitations in the measuring instrument or in the human senses.

Accuracy is the closeness of a measurement to the actual value. Precision is the closeness of multiple measurements to each other. For example, a ruler that has more divisions will give you a more precise answer, but not necessarily a more accurate one.

![Accuracy and precision are independent of each other](accuracy-precision.svg)

### Uncertainty

Uncertainty is the amount that a particular measurement could be off by. It can be expressed as _absolute_ uncertainty, like (20.4 ± 0.3) kg, or as _relative_ uncertainty, like 20.4 kg ± 1.5%. Relative uncertainty can be calculated from absolute uncertainty with

    `"RU" = ("experimental uncertainty")/("measured value") xx 100%`.

When adding or subtracting measurements, add up the _absolute_ uncertainties. When doing anything else (multiplication, division, square root, etc.), add up the _relative_ uncertainties.

## Vectors

Vectors are quantities that have both magnitude and direction. Velocity is a vector (it has magnitude and direction), but speed is a scalar (it only has magnitude). We need to use vectors to solve two-dimensional problems.

There are many different ways to represent the direction of a vector. In this course, we will use a system based on compass directions. The direction is placed in square brackets after the magnitude and the unit, and it contains an angle in degrees placed between two compass directions. For example, [N 12º W] means that you start pointing north and then rotate 12º towards west to point in the correct direction. This is equivalent to [W 78º N].

To add or subtract vectors, we have to follow four steps:

1. Break each vector up into its _x_ and _y_ components using sine and cosine.
2. Combine the _x_ components and _y_ components (add or subtract).
3. Use the Pythagorean theorem to find the resultant magnitude.
4. Use the inverse tangent function to find the resultant direction.

### Example

If `vec a = 65\ "m [E 36º N]"` and `vec b = 99\ "m [N 24º W]"`, calculate `vec a + vec b`.

First we should always draw a sketch. I've labelled the _x_ and _y_ components for each vector with a sign (north and east are positive, south and west are negative) and a trig function (cosine for adjacent, sine for opposite).

![Sketch of `vec a` and `vec b` on compass axes](vector-sketch.svg)

Now we can make our table. We calculate the components of each vector, and then we add them up in the last row.

|                 |                    x |                  y |
| :-------------: | -------------------: | -----------------: |
|     `vec a`     |   `65cos36º = 52.59` | `65sin36º = 38.21` |
|     `vec b`     | `-99sin24º = -40.27` | `99cos24º = 90.44` |
| `vec a + vec b` |              `12.32` |           `128.65` |

> When adding or subtracting vectors, always round off the values in the table to two decimal places.

Now we can use the Pythagorean theorem to calculate the magnitude of our resultant vector, rounding off to two significant digits (because 65 and 99 have two):

    `|vec a + vec b| = sqrt(12.32^2 + 128.65^2) = 1.3xx10^2\ "m"`.

We can draw another sketch to help with finding the angle. If you draw the largest component first, then you will always get an angle below 45º. If you always do it this way, then you'll know that you've made a mistake if your angle is above 45º.

![Sketch of `vec a + vec b` with unknown angle](resultant-vector.svg)

Now we can use inverse tangent to find theta (opposite over adjacent):

    `theta = tan^-1(12.32/128.65) = 5.5º`.

Therefore, the resultant vector `vec a + vec b` is 1.3 × 10^2^ m [N 5.5º E].

## Lab reports

Include the following sections in all formal lab reports. Also, make sure to write in past tense and to avoid personal pronouns.

lab info
:   Include the title, lab partners, and date performed at the top of the first page (don't use a separate title page).

purpose
:   State the purpose in a sentence beginning with the word _to_.

sketch
:   Draw a sketch of the lab setup.

procedure
:   Don't copy out the procedure, but indicate where it can be found. If it is a handout, attach it to the end of the lab.

observations
:   Use tables and point-form writing.

calculations
:   Provide a sample calculation for each type of calculation that you did.

graphs
:   Make your graphs by hand with pencil. Each graph needs a title, labelled axes, a sensible scale (you're safe with 1, 2, 5, or 10), and circled data points. Include a legend if applicable.

analysis
:   Answer the assigned discussion questions.

sources of error
:   List reasonable, significant sources of experimental error and their likely effects on the results.

conclusion
:   Write a brief conclusion that summarizes the results.

# Motion & Dynamics

## Position, velocity, & acceleration

Position (`vec d`) is a vector quantity representing a location relative to an origin, usually measured in metres (m). A change in position is called _displacement_ (`∆vec d`). The rate of change in position per unit of time is called velocity (`vec v`), usually measured in metres per second (m/s).

If we graph position versus time (or d--t for short), the slope of the tangent line gives us the instantaneous velocity at that moment. The slope of the secant line gives us the average velocity on the interval [`t_1`, `t_2`]. We can also go the other way: on a v--t graph, the area under the curve between `t_1` and `t_2` gives us the displacement on that interval.

![Graphs of position vs. time and velocity vs. time](dt-vt-graph.svg)

> Vectors can be represented in two ways. In handwriting, we always use an arrow, like `vec v`. In other situations, boldface can be used as an alternative to the arrow, like **v**.

Acceleration (`vec a`) is the rate of change of velocity per unit of time, usually measured in metre per seconds squared (m/s^2^). It relates to velocity in exactly the same way that velocity relates to position. In this course, we always assume that acceleration is constant.

![Graphs of velocity vs. time and acceleration vs. time](vt-at-graph.svg)

There are two important equations that are represented in these two sets of graphs. When we are calculating slopes, we use

    `vec v_"av" = (∆vec d)/(∆t) qquad and qquad vec a_"av" = (∆vec v)/(∆t)`,

and when we are going the other way by calculating areas, we use the equivalent equations

    `∆vec d = vec v_"av"∆t qquad and qquad ∆vec v = vec a_"av"∆t`.

We need to identify a couple identities to help us use these two equations. For any variable `x`, we assume that

    `∆x = x_2 - x_1 qquad and qquad x_"av" = (x_1 + x_2)/2`.

We now have all we need to solve any motion problem. However, some calculations are so common that it is worth committing them to memory. In the next section, we'll derive a few other, time-saving equations.

## Equations of motion

The first two equations of motion are

    `vec v_"av" = (∆vec d)/(∆t)quad`**(1)**`qquad and qquad vec a_"av" = (∆vec v)/(∆t)quad`**(2)**.

If we substitute `∆x = x_2 - x_1` for `∆vec d` and `∆vec v`, we get

    `vec d_2 = vec d_1 + vec v_"av"∆tquad`**(3)**`qquad and qquad vec v_2 = vec v_1 + vec a_"av"∆tquad`**(4)**.

If we take `∆vec d = vec v_"av"∆t` and substitute the average of two velocities (initial and final) for `vec v_"av"`, we get

    `∆vec d = (vec v_1 + vec v_2)/2∆tquad`**(5)**.

We can substitute equation (4) into this, yielding

    `∆vec d = (vec v_1 + (vec v_1 + vec a_"av"∆t))/2∆t = (2vec v_1 + vec a_"av"∆t)/2∆t`,

which simplifies to

    `∆vec d = vec v_1∆t + 1/2vec a_"av"(∆t)^2quad`**(6)**.

If we rearrange equation (4) to isolate `vec v_1` and then substitute _that_ into equation (5), we get

    `∆vec d = vec v_2∆t - 1/2vec a_"av"(∆t)^2quad`**(7)**.

We can derive one final equation, this time eliminating the one variable that has been present in all the others: time. We begin by rearranging equation (4) to isolate `∆t`, and then we substitute that into equation (5), giving us

    `∆vec d = ((vec v_1 + vec v_2)/2)((vec v_2 - vec v_1)/vec a_"av")`.

By multiplying the denominators to the other side and recognizing the difference of squares, we get

    `2vec a_"av"∆vec d = vec v_2^2 - vec v_1^2`,

which we can rearrange to get our final equation,

    `vec v_2^2 = vec v_1^2 + 2vec a_"av"∆vec dquad`**(8)**.

There might be a few more equations that we could have derived, but these eight (and rearranged versions of them) should take you a long way.

## Relative motion

Relative motion refers to the motion of one object with respect to another. The thing that we are comparing to is called the _frame of reference_. For example, I am currently at rest with respect to my house, but I am moving very quickly with respect to the Sun.

It is impossible to say what the _absolute_ motion of an object is; we can only talk about _relative_ motion. If I am walking down a street, for example, I could make either of the following statements with certainty:

- I am moving with a velocity of 10 m/s [E] _with respect to_ the stationary car.
- I am stationary and the car is moving at 10 m/s [W] _with respect to_ me.

Both statements are correct; in fact, they are equivalent. In the first, the frame of reference is the other car's position. In the second, the frame of reference is my own position.

The confusion comes when we introduce a frame of reference independent of the two things being compared. Normally, if I say that I am moving towards a stationary car, it is assumed that the frame of reference is the Earth. In this case, I am actually asserting two things: that I am moving with respect to the Earth, _and_ that the car is at rest with respect to the Earth. If I were to instead say that I am stationary and the car is moving towards me (which also contains two assertions), this would be a different claim. They cannot both be true.

Pretend you are on train A at night looking out the window, and you see train B moving west. The only thing you can be sure about is that B is moving west with respect to A (meaning A is moving east with respect to B). There are several possibilities for motion with respect to the Earth:

- A is at rest; B is moving west.
- A is moving east; B is at rest.
- A is moving east; B is moving west.
- A is moving east; B is moving east slower.
- A is moving west; B is moving west faster.

Unless you can see something that is known to be stationary with respect to the Earth, like a tree, you cannot possibly know which of the above statements is true. If the other train appears to _not_ be moving (both are stationary with respect to each other), you are still ignorant of motion with respect to the Earth. Either both trains are at rest, or they are are moving with the same velocity.

A frame of reference in which objects obey the law of inertia (velocity does not change unless acted on by an unbalanced force) is called an _intertial_ frame of reference. Suppose you are a passenger in a car making a tight left turn. It feels as if you are being thrown against the door. We attribute this to the a _fictitious force_ called the "centrifugal force." This is not a real force because you aren't actually being pushed against the door -- you are moving in a straight line with respect to the Earth while the car turns under you. Since your velocity with respect to the car changes without any force acting on you, the accelerating car is _not_ an inertial frame of reference.

## Converting relative velocities

If `vec v_"XY"` represents the velocity of X with respect to Y, then

    `vec v_"AB" + vec v_"BC" = vec v_"AC"`.

In other words, we can eliminate the B and go straight from A to C, provided we know the velocity of B relative to C. Sometimes you will have to rearrange this equation to solve for a different velocity -- that's about as complicated as these problems get.

### Example

An airplane has a heading of 245 km/h [N 17º E], and the wind is coming from [S 35º W] at 89.0 km/h. What is the course?

First, we need to familiarize ourselves with airplane terminology:

heading (`vec v_"PA"`)
:   velocity of the plane with respect to the air

wind (`vec v_"AE"`)
:   velocity of the air with respect to the Earth

course/groundspeed (`vec v_"PE"`)
:   velocity of the plane with respect to the Earth

The velocity of the wind is a vector pointing in the direction in which it is going. Since the wind is coming _from_ [S 35º W], it is going _to_ [N 35º E].

Since `vec v_"PE" = vec v_"PA" + vec v_"AE"`, the course is

    `245\ "km/h [N 17º E]" + 89.0\ "km/h [N 35º E]" = 331\ "km/h [N 22º E]"`.

> I didn't show my steps here. You need to draw a sketch and make a table. Refer to the [vectors section](vectors.html) if you don't know how to add vectors.

## Ballistic projectiles

A ballistic projectile is an object moving through the air under the force of gravity only. We give a projectile an initial speed by launching it; after that, it experiences acceleration due to gravity. The horizontal component of its velocity remains constant, but the vertical component decreases at a rate of 9.80 m/s^2^ (on Earth).

In our projectile problems, we assume that

- there is no air resistance;
- gravity is constant;
- the projectile travels in a plane.

All projectile problems can be solved by splitting up original velocity (`vec v_0`) into its horizontal and vertical components with

    `vec v_"h" = |vec v_0|cos theta qquad and qquad vec v_"1,v" = |vec v_0|sin theta`,

where `theta` is the direction of the original velocity expressed as an angle above horizontal. These can be used with the equations

    `∆vec d_"h" = vec v_"h"∆t qquad and qquad ∆vec d_"v" = vec v_"1,v"∆t + 1/2vec a(∆t)^2`.

The duration of the projectile's flight (`∆t`) is associated with the vertical part. The _range_ (distance to the landing point) is associated with the horizontal part.

Since we physics students don't like doing any more work than absolutely necessary, we often use more specific, time-saving equations. The first equation tells us how long it takes (`∆t`) for the projectile to return to its original altitude (`∆vec d_"v" = 0`). If we let `g = |vec a_"g"|`, then

    `∆t = (2|vec v_0|sin theta)/g`,

and the range of this projectile is given by

    `∆vec d_"h" = (|vec v_0|^2sin 2theta)/g`.

The next equation doesn't require the projectile to land at its original altitude. It treats the projectile's altitude as a function of its horizontal position. This allows us to find the projectile's vertical position at any particular horizontal position and, using the quadratic formula, go the other way as well. Assuming the projectile starts at the origin and passes through a point (`x`, `y`), then

    `y = (tantheta)x - g/(2|vec v_0|^2cos^2theta)x^2`.

The derivation of these three equations is left as an exercise to the reader.

### Example

A soccer ball is kicked at 14.5 m/s [29º a.h.]. Will it make it over a 1.5 m fence 5 m ahead?

When the ball has gone 5 m forward horizontally, `x = 5` and

    `y = (tan29º)(5\ "m") - (9.80\ "m/s"^2)/(2(14.5\ "m/s")^2cos^2(29º))(5\ "m")^2 = 2.01\ "m"`.

Since `2.01\ "m" > 1.5\ "m"`, the answer is yes -- it _will_ clear the fence.

## Uniform circular motion

Uniform circular motion is the motion of an object moving at constant speed along the circumference of a circle. Although speed does not change, direction is constantly changing, so there must be acceleration.

![A few instantaneous velocities of an object moving in a circle](circular-motion.svg)

As you can see, the velocity of the object is always a tangent to the circle. The object never flies away because it is always _accelerating towards the centre_ of the circle. This acceleration is caused by a **centripetal force**.

We can relate the magnitude of centripetal acceleration to the object's speed, the circle's radius, and the period (time to complete one revolution) or frequency (revolutions per second) with a few equations:

    `a_"c" = v^2/r = (4pi^2r)/T^2 = 4pi^2rf^2`.

### Example

A machine can withstand a maximum centripetal acceleration of 235 m/s^2^. If the radius is 13.6 cm, what is the maximum speed?

We can rearrange the first equation to get

    `v = sqrt(a_"c"r) = sqrt((235\ "m/s"^2)(0.136\ "m")) = 5.6533\ "m/s"`,

therefore the maximum speed is 5.65 m/s.

## Newton's laws of motion

1. An object either remains at rest or moves in a straight line at constant velocity unless it is acted on by an external, unbalanced force. This behaviour is a property of matter known as _inertia_.

2. The vector sum of all forces acting on an object is related to the object's mass and acceleration by `vec F_"net" = m vec a`.

3. For every _action_ force there is an equal and opposite _reaction_ force. That is, if A applies a force on B, then `vec F_("A"-"B") = -vec F_("B"-"A")`.

### Example

A tractor pulls a railcar with mass 1.4 × 10^4^ kg at a 23º angle to the tracks with 2.75 × 10^4^ N of force. If there is a frictional force of 1.0 × 10^2^ N, what is the railcar's acceleration?

Let's draw a sketch of the situation:

![Railcar being pulled at a 23º angle](railcar-sketch.svg)

Next, we need to draw a _free body diagram_. This is a simple diagram that represents all the forces acting on a body, and you should get into the habit of using them for all dynamics problems. If we weren't looking at this problem from above, we would also include the gravitational force and the normal force, even though they cancel each other out.

![Free body diagram of the railcar](railcar-fbd.svg)

This diagram isn't completely accurate -- the railcar does not leave the tracks. There is another force, exerted by the tracks themselves, that cancels out the perpendicular component of `vec F_"a"`. The sum of this force and `vec F_"a"` is simply the parallel component of `vec F_"a"`, which is its scalar projection onto the tracks, given by `|vec F_"a"|cos theta`.

We can now use Newton's second law of motion to find acceleration:

    `vec F_"net" = |vec F_"a"|cos theta + vec F_"f" = mvec a`.

Rearranging to solve for acceleration gives us

    `vec a = (|vec F_"a"|cos theta + vec F_"f")/m`,

and if we let [fwd] be positive, then we can substitute and get

    `vec a = ((2.75xx10^4\ "N")cos23º + (-1.0xx10^2\ "N"))/(1.4xx10^4\ "kg") = 1.8009\ "m/s"^2`,

therefore the railcar's acceleration is 1.8 m/s^2^ [fwd].

## Multiple-body systems

We can use Newton's second law to analyze systems involving multiple bodies in much the same way that we use it for single bodies. We will usually consider bodies that are connected together with massless strings that do not stretch. This allows us to assume that each body has the _same acceleration_. The equation we use for multiple-body systems is

    `vec F_"net" = m_"tot"vec a_"sys"`,

where `vec F_"net"` is the vector sum of all forces acting on the system (_not_ internal tension forces), `m_"tot"` is sum of the masses of all bodies, and `vec a_"sys"` is the acceleration of the system.

This is very straightforward when all bodies are in a line. Once we find the acceleration, we can determine the force of tension acting on individual bodies using Newton's second law again, but this time considering the body individually (draw a new free body diagram) and having acceleration as a known variable.

Pulley systems look two-dimensional, but we can turn them into one-dimensional problems by making one direction of the pulley negative and the other positive. This means, for example, that the force of gravity could be positive for one body and negative for another if they are on opposite sides of the pulley.

### Example

In a pulley system where mass A (21 kg) is on a 18º frictionless ramp and mass B (12 kg) is suspended, find the acceleration of the system and the tension in the string.

As always, we start with a sketch:

![A pulley system of two bodies](ramp-sketch.svg)

There are three forces acting on the system:

- gravitational force on A
- normal force on A
- gravitational force on B

Adding the first two gives us the parallel component of `vec F_"g,A"`:

    `vec F_"g,A" + vec F_"N,A" = vec F_"g,ramp" = |vec F_"g,A"|cos(90º-theta) = |vec F_"g,A"|sintheta`.

Now we can use Newton's second law to find acceleration.

    `vec F_"net" = |vec F_"g,A"|sintheta + vec F_"g,B" = m_"tot"vec a_"sys"`.

If we let [fwd] be positive, then `vec F_"g,ramp"` will be negative. Since `vec F_"g" = mg`,

    `vec F_"net" = -m_"A"gsintheta + m_"B"g = m_"tot"vec a_"sys"`.

Rearranging to solve for acceleration gives us

    `vec a_"sys" = (-m_"A"gsintheta + m_"B"g)/m_"tot"`,

and after substituting we have

    `vec a_"sys" = (-(21\ "kg")(9.80\ "m/s"^2)sin18º + (12\ "kg")(9.80\ "m/s"^2))/(21\ "kg" + 12\ "kg")`,

which evaluates to 1.6 m/s^2^ [fwd].

Now we can use the acceleration to find the tension in the string. We can do this using either A or B. It's slightly easier with B. There are two forces acting on B: gravity and tension. We can write our net force equation again:

    `vec F_"net" = vec F_"g,B" + vec F_"T" = m_"B"g + vec F_"T" = m_"B"vec a`.

Solving for the force of tension, we have

    `vec F_"T" = m_"B"vec a - m_"B"g = m_"B"(vec a - g)`,

which gives us the solution

    `vec F_"T" = (12\ "kg")(1.64\ "m/s"^2 - 9.80\ "m/s"^2) = -97.92\ "N"`,

therefore the magnitude of the force of tension is 98 N.

## Apparent weight

When you stand on the ground, a normal force balances the gravitational force and prevents you from accelerating through the floor. This normal force is the reason it "feels like something" to have weight, as opposed to being weightless (like in free fall). Weight is always equal to `mg`, but _apparent weight_ depends on the normal force.

### Example

What is the apparent weight of a 72 kg person in an elevator that is accelerating upwards at 1.3 m/s^2^?

There are two forces acting on the person. We will call the second one the elevator force just to be clear. Our net force equation is

    `vec F_"net" = vec F_"elev" + vec F_"g" = mvec a`,

and rearranging this gives us

    `vec F_"elev" = mvec a - vec F_"g" = mveca - mvec(g) = m(vec a - vec g)`.

Now we can substitute the values, giving us

    `vec F_"elev" = (72\ "kg")(1.3\ "m/s"^2 - (-9.80\ "m/s"^2)) = 799.2\ "N"`,

therefore the apparent weight is 8.0 × 10^2^ N.

## Friction

Friction is a contact force that _opposes motion_. It acts whenever two surfaces move over one another. The amount of friction depends on four things:

surface roughness
:   Rougher surfaces experience more friction. With very smooth surfaces, there is still friction because of van der Waals forces.

contact
:   More surface area of contact results in more friction. For example, sled runners reduce surface area of contact and thus reduce friction.

materials
:   There is a coefficient of friction (denoted by `mu`) for every combination of two materials. The friction associated with steel & wood is different from the friction associated with steel & ice, for example.

normal force
:   A greater normal force results in more friction. This means that heavier objects will experience more friction, and it also means that pressing down on an object from above will increase friction.

We calculate friction using

    `|vec F_"f"| = mu|vec F_"N"|`.

If the only forces are gravity and the normal force, this can be rewritten as

    `|vec F_"f"| = mu m|vec g|`.

There are two types of friction. _Static_ friction must be overcome to move an object that is initially at rest with respect to the other surface. _Kinetic_ friction acts when an object is in motion. There are separate coefficients for these two cases: `mu_"s"` for static and `mu_"k"` for kinetic, where `mu_"s" > mu_"k"`. The values of both are determined experimentally for every pair of materials.

> Keep in mind that `vec F_"f"` will be negative if you define the direction of motion to be positive (which is what you should usually be doing).

### Example

You are standing on a roof inclined at an angle of 31º with the coefficient of static friction being 0.21. Your mass is 68.5 kg. You are hanging on to a cable that runs parallel to the roof. What must the force of tension in the cable be to stop you from sliding down the roof?

First, we draw a sketch:

![A sketch and the free body diagram of a mass on a roof](roof-friction.svg)

Now we can write our net force equation:

    `vec F_"net" = vec F_"g" + vec F_"N" + vec F_"f" + vec F_"T" = mvec a`.

The gravitation force and the normal force combine, giving us

    `vec F_"net" = F_"g,ramp" + vec F_"f" + vec F_"T" = mvec a`.

Since we are solving for the case where the mass does _not_ slide down the roof, acceleration is zero:

    `F_"g,ramp" + vec F_"f" + vec F_"T" = 0`.

Now we can solve for the tension force, giving us

    `vec F_"T" = -vec F_"f" - vec F_"g,ramp"`,

and, keeping in mind that [fwd] as indicated in the sketch will be positive, we can substitute to get

    `vec F_"T" = -(-mu_"s"|vec F_"N"|) - m|vec g|sin theta = mu_"s"m|vec g|cos theta - m|vec g|sin theta`.

This simplifies to

    `vec F_"T" = m|vec g|(mu_"s"cos theta - sin theta)`,

and now we can finally substitute our known values:

    `vec F_"T" = (68.5\ "kg")(9.80\ "N/kg")(0.21cos31º - sin31º) = -224.9\ "N"`.

Therefore, the cable must provide a tension force of 225 N [bwd], otherwise it will snap and you will slide off the roof.

## Air resistance

So far we have been ignoring air resistance, but it has a significant effect on the motion of objects in free fall (unless the object is in a vacuum). Air resistance acts similarly to friction, and it depends on four things:

- fluid density (air)
- surface area of cross section
- surface smoothness
- shape (aerodynamics)

In addition, air resistance is related to the moving object's speed by

    `|vec F_"air"| prop v^2`.

Because of air resistance, a falling object's acceleration is actually less than 9.80 m/s^2^, and it only gets smaller. Since air resistance increases in proportion to the square of speed, there reaches a point where the air resistance is equal and opposite to the gravitational force. Acceleration is now zero, so the object doesn't gain any more speed. The velocity at this point is known as _terminal velocity_.

A skydiver might have a terminal velocity of around 200 km/h. When they open their parachute, terminal velocity decreases drastically.

Because of air resistance, objects of different mass actually _can_ hit the ground at different times when dropped from a large enough height. All other things being equal, an object with more mass will have a greater terminal velocity.

## Centripetal force

Centripetal force follows directly from our equations for centripetal acceleration that we saw in [uniform circular motion](uniform-circular-motion.html):

    `F_"c" = ma_"c" = (mv^2)/r = (4pi^2mr)/T^2 = 4pi^2mrf^2`.

Centripetal force causes an object to follow a circular path. That being said, it is not another _type_ of force that you can add in the net force equation. Some specific force like `vec F_"T"` or `vec F_"f"` will _be_ the centripetal force.

If the specific force isn't supplying enough (for example, `F_"T" < F_"c"`), then the object will not follow the circular path: it will go off on a tangent. If the original centripetal force is now zero (e.g., the string breaks), then it will travel in a straight line. If it was too small but stays that way (e.g., car turning too fast), then it will follow a circle with a wider radius.

The centripetal force does not have to be provided by a single force. For example, when you spin a ball on a string in a vertical circle, there are two forces on the ball at all times: tension and gravity. They will always sum to `vec F_"c"` if the ball moves in a perfect circle. Since gravity doesn't change, the tension force must change. At the top of the circle, `|vec F_"T"| = ma_"c" - mg`, and at the bottom, `|vec F_"T"| = ma_"c" + mg`.

### Example

A 1105 kg car is entering a level turn with a radius of 20.0 m at 21.5 m/s. If the coefficient of friction is 0.450, what is the maximum safe speed?

There is only one force acting on the car, the force of friction, and it needs to provide a centripetal force for the car to be safe:

    `vec F_"net" = vec F_"f" = mvec a_"c"`.

We can substitute for friction and centripetal acceleration:

    `mu mg = mv^2/r`.

Now we can solve for speed:

    `v = sqrt(r mu g) = sqrt((20.0\ "m")(0.450)(9.80\ "m/s"^2)) = 9.391\ "m/s"`.

Therefore, the maximum safe speed is 9.39 m/s.

## Banked turns

When a car is driving along a level turn, the only thing keeping it in its lane is friction. This must be large enough to provide the centripetal force -- the turn is only safe if `vec F_"f" >= vec F_"c"`, which limits speed by `v <= sqrt(r mu g)`.

Instead of relying on friction, we can incline the road towards the centre of the curve; this is called a banked turn. A banked turn with friction is pretty complicated, so we will consider _frictionless_ banked turns. In this case, the normal force has to provide the centripetal force by itself.

The normal force can be split into vertical and horizontal components:

    `F_"N,v" = |vec F_"N"|cos theta qquad and qquad F_"N,h" = |vec F_"N"|sin theta`.

The horizontal component must supply the centripetal force, so we can set them equal:

    `|vec F_"N"|sin theta = (mv^2)/r`.

Since the vehicle doesn't move vertically, the vertical component has to balance gravity with `|vec F_"N"|cos theta = mg`. We can solve this for the normal force and substitute it into our first equation to get

    `(mg)/(cos theta)sin theta = (mv^2)/r`,

and solving for speed gives us the maximum safe speed on a frictionless banked curve,

    `v = sqrt(rg tan theta)`.

We can also find the minimum safe radius at a given speed:

    `r = v^2/(g tan theta)`.

## Planetary motion

Throughout history, people have tried to explain the cosmos and the motion of celestial bodies, with varying degrees of success.

Ancient Greeks
:   The Earth is stationary at the centre of the universe (geocentric model). The stars move on the inside of a huge crystal sphere. The Sun, Moon, and stars have different motion, so they move on different spheres. There retrograde motion of Mars is baffling.

Pythagoras
:   There are eight crystal spheres, each on its own axis.

Aristotle
:   Actually, there has to be 54 spheres.

Ptolemy
:   The earth isn't at the _exact_ centre of the universe. It's sightly off.

Copernicus
:   The Sun is at the centre of the universe (heliocentric model), and the Earth and other planets revolve around it. The motion of the Earth explains the apparent motion of the stars.

Galileo
:   Galileo confirmed the heliocentric model using the telescope. He observed the moons of Jupiter and the phases of Venus. He still predicted circular orbits.

Brahe
:   Brahe measured astronomical positions with great precision. He observed a comet that followed an elliptical path, not a circular one.

Kepler analyzed Brahe's data. He made three conclusions, known as Kepler's laws of planetary motion:

1. The orbit of a planet is an ellipse with the Sun at one focus.
2. The line segment joining a planet and the Sun sweeps out equal areas during equal intervals of time.
3. The period of the orbit is related to the mean radius by `K = r^3//T^2`, where `K` is a constant equal to 3.35 × 10^18^ m^3^/s^2^.

Finally, we come to Newton. Sir Isaac Newton discovered the universal law of gravitation,

    `|vec F_"g"| = G(m_1m_2)/r^2`,

where `G` is a constant equal to 6.67 × 10^−11^ N⋅m^2^/kg^2^.

Sometimes, we will want to look at how gravitation force changes in terms of ratios. To do that, we can use the following equation:

    `F_"g,2"/F_"g,1" = (m_2/m_1)(r_1/r_2)^2`.

Another type of problem involves whether or not an orbit is _stable_. For our purposes, an orbit is stable if and only if

    `vec F_"net" = vec F_"g" = mvec a_"c"`.

Similar to a turning car, `F_"g" < F_"c"` means that the object with fly off into space. On the other hand, `F_"g" > F_"c"` means that the object will spiral inwards into the Sun (or whatever it's orbiting), whereas excess friction with a car is no problem.

# Momentum & Energy

## Momentum & impulse

Momentum is a quantity of motion defined by

    `vec p = m vec v`,

measured in kilogram-metres per second (kg⋅m/s). A change in momentum is called impulse, and it is defined by

    `∆vec p = m ∆vec v = vec F ∆t`.

A lightweight, fast-moving object can have the same momentum as a heavy, slow-moving object because mass and velocity are multiplied. Similarly, a large force applied over a short time interval can deliver the same impulse as a small force applied over a long time interval.

Just as the area under an acceleration-time graph represents `∆vec v`, so too the area under a force-time graph represents `∆vec p`.

### Example

What average force is needed to stop a 34 kg ball in 2.5 s if the initial speed of the ball is 19 m/s [fwd]?

Since `vec F ∆t = m ∆vec v`,

    `vec F = (m∆vec v)/(∆t) = (vec v_2 - vec v_1)/(∆t) = ((34\ "kg")(0 - 19\ "m/s"))/(2.5\ "s") = -258.4\ "N"`,

therefore an average force of 260 N [bwd] is required.

## Conservation of momentum

In all isolated systems, total momentum is conserved:

    `vec p_"tot" = vec p'_"tot"`.

### Example

Car A (2.5 kg) begins at 1.5 m/s [fwd], while Car B (1.5 kg) beings at rest. Car A collides into Car B, and they stick together. What is the velocity of AB after the collision?

We begin with the conservation of momentum,

    `vec p_"tot" = vec p'_"tot"`,

into which we substitute the individual momenta:

    `vec p_"A" + vec p_"B" = vec p'_"AB"`.

Now we can substitute the masses and velocities with

    `m_"A"vec v_"A" + m_"B"vec v_"B" = m_"AB"vec v'_"AB"`,

and solve for the final velocity:

    `vec v'_"AB" = (m_"A"vec v_"A" + m_"B"vec v_"B")/m_"AB"`.

Substituting the known values where [fwd] is positive, we have

    `vec v'_"AB" = ((2.5\ "kg")(1.5\ "m/s") - 0)/(2.5\ "kg" + 1.5\ "kg") = 0.9375\ "m/s"`,

therefore the final velocity is 0.94 m/s [fwd].

> This was a simple one-dimensional case. You will also need to solve two-dimensional conservation of momentum problems using [vector charts](vectors.html).

## Work & kinetic energy

A force is said to do work when it acts on a body and results in a displacement in the direction of the force. It is a scalar quantity defined by

    `W = vec F * ∆vec d = F∆dcos theta`,

and it is measured in joules (J). Work can be zero in three situations: when force is zero, when displacement is zero, or when force and displacement are perpendicular. When the angle between force and distance exceeds 90º, work becomes negative. On a force-position graph, the area under the curve represents work.

Kinetic energy is energy due to motion. For an object moving at speed `v`, kinetic energy is defined as the amount of work needed to accelerate the object from rest to `v`. The formula for kinetic energy is

    `E_"k" = 1/2mv^2`.

A change in kinetic energy represents work being done:

    `W = ∆E_"k" = 1/2m∆v^2`.

We can also relate kinetic energy to momentum with

    `E_"k" = p^2/(2m) qquad and qquad p = sqrt(2mE_"k")`.

## Gravitational potential energy

Gravitational potential energy (`E_"g"`) is a type of potential energy due to an object's position in a system such that gravity can do work on it.

For example, the water behind a dam is just a stationary body of water, but it has the _potential_ to do large amounts of work because it is elevated (and so it has gravitation potential energy). Another example: when you lift a bowling ball off the ground, you are doing work on it (using up your own energy), but in doing so you transfer potential energy to the bowling ball. If you let it fall from a metre above the ground, it will trade its potential energy for kinetic energy, and by the time it reaches the ground it will be moving very fast.

We usually talk about _changes_ in potential energy, not potential energy itself. When does `E_"g" = 0`? On the surface of the Earth? At the centre of the Earth? You don't need to worry about it with this formula:

    `W = ∆E_"g" = mg∆h`.

If the height of a 2.5 kg object increases by 15 m, then its potential energy increases by `(2.5\ "kg")(9.80\ "N/kg")(15\ "m") = 367.5\ "J"`. Simple as that.

## Elastic potential energy

Elastic potential energy (`E_"e"`) is the energy stored in an object when work is done to compress or stretch it. Like kinetic and gravitational energy, elastic energy is simply defined as the amount of work it took to get the system in that state. If we treat objects as springs, then the deformation of the spring is represented by `x`, the displacement of the free end of the spring from its equilibrium position. For example, if a 5 m spring is squished to half its size, `x` will be 2.5 m.

_Hooke's Law_ tells us that the deformation of the spring is proportional to the force that is applied to it. That is,

    `F = kx`,

where `k` is a constant representing the stiffness of the spring, measured in newtons per metre (N/m). According to Newton's third law, we also have a reaction force of `-kx` that is "trying" to restore the spring to equilibrium.

A change in elastic potential energy represents work being done. We can derive an equation for change in elastic energy using our definition of work. We begin with

    `W = F∆d`.

If the spring deformation changes from `x_1` to `x_2`, we have our displacement. The force is a bit more complicated -- it won't be constant since `x` is changing, so we want to use the _average_ force:

    `W = (F_1 + F_2)/2(x_2 - x_1)`.

Now we can substitute the forces according to Hooke's law:

    `W = (kx_1 + kx_2)/2(x_2-x_1) = 1/2k(x_2 + x_1)(x_2 - x_1)`.

Recognizing a difference of squares here, we can make a little simplification. Now we have another formula to go along with our equations for changes in kinetic and gravitational energy:

    `W = ∆E_"e" = 1/2k∆x^2`.

## Conservation of energy

The law of conservation of energy states that the total energy in an isolated system is constant. Energy is not created or destroyed; it changes form. For our purposes, total energy is the sum of kinetic and potential energies.

When a ball is thrown upwards, it is gaining potential energy and losing kinetic energy joule for joule. When it starts falling back down, the trade occurs in reverse. Mathematically,

    `∆E_"k" + ∆E_"g" = 0`.

When we substitute those energy changes, we can rearrange to get

    `v_2^2 - v_1^2 = -2g∆h`.

This looks very similar to the eighth and final equation that we derived in the section on the [equations of motion](equations-of-motion.html) of the first unit.

If we were instead considering a situation where kinetic energy was converted to elastic energy (a ball hits a spring and compresses it), our equation would be `∆E_"k" + ∆E_"e" = 0`.

### Example

A 2.5 kg block is dropped from 7.5 m above the floor. What is its speed as it hits the floor?

We can used the equation that I just mentioned:

    `v_2^2 - v_1^2 = -2g∆h`.

Solving for `v_2`, we have

    `v_2 = sqrt(v_1^2-2g∆h) = sqrt(0-2(9.80\ "N/kg")(- 7.5\ "m")) ~~ 12.124`,

therefore the final speed is 12 m/s.

## Elastic & inelastic collisions

In a perfectly elastic collision, the _total kinetic energy_ before and after the collision is the same. This is not the case for inelastic collisions -- some energy gets converted to other forms, such as thermal energy or sound energy. In a completely inelastic collision, the objects stick together. In all cases, total momentum is conserved.

In an elastic collision, the objects compress on the point of contact (which we will call the _bumper_), and kinetic energy gets converted to potential energy. At the maximum compression, the separation between the objects is a minimum. The process then proceeds in reverse: potential energy is converted to kinetic energy, and the objects separate.

For a collision between two objects to be perfectly elastic, we must have

    `1/2m_"A"v_"A" + 1/2m_"B"v_"B" = 1/2m_"A"v'_"A" + 1/2m_"B"v'_"B"`.

In a _perfectly elastic one-dimensional_ collision where mass A is moving towards a stationary mass B, we can use

    `vec v_"A" + vec v'_"A" = vec v'_"B"`,

as we can find both final speeds from just the initial speed of A and the masses of both objects using

    `v'_"A" = v_"A"((m_"A"-m_"B")/(m_"A"+m_"B")) qquad and qquad v'_"B" = v_"A"((2m_"A")/(m_"A"+m_"B"))`.

We will have to consider some special conditions:

- `m_"A" > m_"B"\  => 0 < vec v'_"A" < vec v_"A"`
- `m_"A" ≫ m_"B" => vec v'_"A" ~~ vec v_"A"`
- `m_"A" < m_"B"\  => vec v'_"A" < 0`
- `m_"A" ≪ m_"B" => vec v'_"A" ~~ -vec v_"A" and vec v'_"B" ~~ 0`
- `m_"A" = m_"B"\  => vec v'_"A" = 0 and vec v'_"B" = vec v_"A"`

If both objects are in motion, we can still use these equations as long as we put ourselves in B's [frame of reference](relative-motion.html). To do this, subtract `v_"B"` from both initial velocities, making `v_"B"` zero. Proceed as usual, but don't forget to return to Earth's frame of reference at the end by undoing the subtraction: add the original `v_"B"` to `v'_"A"` and `v'_"B"`.

# Gravitational & Electromagnetic Fields

## More gravitational potential energy

Near the surface of the Earth we can use `∆E_"g" = mg∆h`, but this equation breaks down in situations where the radius of the gravitational attraction is not constant. At this point we are going to want to talk about `E_"g"` itself, not just `∆E_"g"`. To do this, we will use `r=oo` as a reference point. At an infinite radius, we decide that `E_"g" = 0`. Why, you ask? Because we need _some_ reference point, and we use this one by convention.

When radius decreases, the object cannot do as much work during its descent, so gravitation potential decreases. Therefore, `E_"g"` must always be negative: it starts out at zero when `r=oo` and only goes down from there.

The general equation for gravitation potential energy is

    `E_"g" = -G(m_1m_2)/r`.

> Always remember that gravitational potential energy is divided by `r`, not by `r^2` like gravitational force is. It's easy to confuse the two equations.

### Example

How much work is needed to lift a 101 kg object to an altitude of 456 km?

Since `W = ∆E_"g"`, we want to find the change in gravitational potential. The changing quantity is radius:

    `r_1 = r_"E" qquad and qquad r_2 = r_"E" + "altitude"`.

Now, we substitute our new equation into `∆E_"g" = E_"g,2" - E_"g,1"`, giving us

    `∆E_"g" = Gm_"E"m_"obj"(1/r_1 - 1/r_2)`.

After plugging in the values and evaluating, we find that the amount of work required is 4.21 × 10^8^ J.

## Total energy in orbit

In the example of the previous section, we found how much work it took to raise an object to a certain altitude. To put a satellite in _orbit_, we can't follow that same method because the satellite would just fall down. For a satellite to remain in (circular) orbit, we need to have `F_"g" = F_"c"`. The satellite will have a certain amount of total energy at all times:

    `E_"tot" = E_"g" + E_"k"`.

For a stable orbit, we must have

    `E_"tot" = -1/2G(m_1m_2)/r`.

### Example

What amount of work does it take to put a 745 kg satellite into orbit 1108 km above the surface of the Earth?

The satellite begins on Earth, so `r_1 = r_"E"`. When it reaches the altitude of 1108 km, it will be at a radius of

    `r_2 = r_"E" + 1108\ "km" = 7.488xx10^6\ "m"`.

Now since `W = ∆E_"tot"`, we should find the change in energy. For the initial value we simply use `E_"g"` because the satellite begins at rest, but for the final value we use the special formula for stable orbit energy:

    `∆E_"tot" = ∆E_"tot,2" - ∆E_"tot,1" = (-1/2G(m_1m_2)/r_2) - (-G(m_1m_2)/r_1)`.

Substituting all the known quantities and evaluating gives us the answer: it would take 2.68 × 10^10^ J of work to put the satellite in orbit.

## Escape velocity

As we have seen, an object that is hanging in space near the Earth will have negative gravitational energy. A satellite has kinetic energy, making the total energy less negative, but it is still negative.

When we say we want an object to "escape" the Earth's gravitational pull, we mean that it will go to `r=oo` and never come back. To accomplish this, we must have `E_"tot" = 0`. This occurs when

    `E_"k" > G(m_1m_2)/r`,

and if we solve for speed, we find that the escape velocity is given by

    `v_"esc" = sqrt((2Gm_"planet")/r)`.

> We use the term "escape velocity" for some reason, but it isn't accurate. We are talking about a speed -- a scalar quantity -- so really it should be called "escape speed."

## Coulomb's law

Just as there is a gravitational force between any two masses, there is an _electric force_ between any two charged objects. Unlike gravity, this force can repel as well as attract. The charge on an object is either positive or negative -- opposites charges attract, and similar charges repel. The magnitude of the force is given by Coulomb's law:

    `|vec F_"el"| = k(q_1q_2)/r^2`.

The `q` values are the charges on the objects, measured in coulombs (C). Their product is divided by radius squared (from centre to centre, measured in metres), and then multiplied by Coulomb's constant (`k`), which has a value of 9.00 × 10^9^ N⋅m^2^/C^2^.

Like with gravity, we will sometimes want to look at how the force changes in terms of ratios. To do that, we can use the following equation:

    `F_"el,2"/F_"el,1" = (q_"A,2"/q_"A,1")(q_"B,2"/q_"B,1")(r_1/r_2)^2`.

In some electric force questions, you will be given a diagram of several charged objects and you must find the net force on one particular object. To do this, you must find the values of `F_"el"` between that object and each other one, determine the direction for each force, and add them up. This also works in two dimensions.

### Example

A positively charged object of 1.95 × 10^−6^ C is beside a negatively charged object of 2.75 × 10^−6^ C. They are separated by 0.124 m. What is the electric force, and does it attract or repel?

All we have to do is plug in the values into Coloumb's law:

    `|vec F_"el"| = (9.00xx10^9\ "Nm"^2/"C"^2)((1.95xx10^-6\ "C")(2.75xx10^-6\ "C"))/(0.124\ "m")^2`.

Evaluating this gives us 3.14 N, and this force attracts the two objects together because they have opposite charges.

## Electric fields

An electric field is a region around a charged object where a second object (neutral or charged) can "feel" an electric force between it and the first. The intensity of the field at any particular point depends on the charges and the distance between them.

To describe an electric field, we imagine that we are probing it with a _unit test charge_, a very small positive charge that you can think of as a proton on a stick. To represent all this in one drawing, we draw _field lines_ around the charges to indicate the electric force of the unit test charge at all points. The field lines always leave (or enter) the circles perpendicular to the surface and go from positive to negative.

![Electric field surrounding a positive charge and a negative charge (Wikimedia Commons)](electric-field.svg)

Just as we use `vec g` in N/kg to describe the strength of a gravitational field, we use `vec epsilon` in N/C to describe the strength of an electric field:

    `vec epsilon = vec F_"el"/q_2 = kq_1/r^2`.

With `vec g`, the Earth is embedded in the number and the other mass is not (we multiply it to get the force). With `vec epsilon`, it's the same deal, except we are talking about charges instead of masses.

When there are multiple charges with overlapping fields, we can calculate the net field strength by adding them all up:

    `vec epsilon_"net" = vec epsilon_1 + vec epsilon_2 + cdots + vec epsilon_n`.

## Electric potential (energy)

Electric potential energy is similar to gravitational potential energy, except it can be positive _or_ negative since the electric force can repel as well as attract. Electric potential energy is given by the formula

    `E_"el" = k(q_1q_2)/r`.

From this we can derive a formula for a change in electric potential energy:

    `∆E_"el" = kq_1q_2(1/r_2 - 1/r_1)`.

_Electric pontential_ is, confusingly, not the same as electric potential energy. While the latter is measured in joules, electric potential is measured in joules per coulomb. It represents the `E_"el"` that a unitary point charge would have at a particular point. It is denoted with `V` and calculated with

    `V = E_"el"/q_2 = (kq_1)/r`.

`V` is to `E_"el"` as `vec epsilon` is to `F_"el"`. They differ only by an `r` in the denominator:

    `|vec epsilon| = V/r`.

Most of the time, we talk not about electric potential but about electric potential _difference_, also known as _voltage_:

    `∆V = kq(1/r_2 - 1/r_1)`.

In general, we can relate work to voltage with

    `W = ∆E_"el" = q_2∆V`.

For parallel plates, we have a more specific equation. The work done by the electric force to move a charge `q_2` from one plate to the other is given by

    `W = ∆E_"el" = q_2|vec epsilon|d`,

where `d` is the distance between the plates in metres (m). Why were we able to replace `∆V` by `|vec epsilon|d`? Because, for parallel plates,

    `|vec epsilon| = (∆V)/d`.

This is _not_ true for point charges. It looks similar to the general equation `|vec epsilon| = V//r` mentioned above, but that `∆` makes a big difference. With point charges, the amount of work done is strictly related to the values of `r_1` and `r_2`. Not so with parallel plates -- since the electric field is uniform, it doesn't matter where the particle is between the plates.

## More conservation of energy

Now that we know about electric potential energy, we can revisit our old friend, the law of conservation of energy. It's basically the same as before: start out with

    `∆E_"k" = -∆E_"el"`,

then rearrange for the unknown quantity and substitute everything else.

### Example

An alpha particle with a charge of 3.2 × 10^−19^ C moving at 1.0 × 10^6^ m/s from infinity approaches a gold nucleus whose charge is 1.3 × 10^−17^ C. How close does the alpha particle get?

We by substituting the energy formulae into the equation given above:

    `1/2m(v_2^2-v_1^2) = -kq_1q_2(1/r_2-1/r_1)`.

The particle will stop moving when it gets to the closest point, so we make `v_2` zero. It starts at infinity, and one over infinity, for our purposes, is zero, so that gets rid of another term. We are left with

    `1/2mv_1^2 = (kq_1q_2)/r_2`.

Solving for final radius, we have

    `r_2 = (2kq_1q_2)/(mv_1^2)`,

and working that out gives us the answer, 1.1 × 10^−11^ m.

## Oil drop experiment

Millikan and Fletcher stared the oil drop experiment in 1909 and published the results in 1913. The goal was to find the _elementary charge_: the smallest possible charge. The experiment was based on the idea that such a charge actually existed -- in other words, that electric charge is discrete like a staircase, not continuous like a hill.

Millikan reasoned that all possible charges must be multiples of the elementary charge. If dividing the smallest charge into all the others didn't give all integer values, it must not be the elementary charge. For his experiment, he used parallel plates and a charged sprayer. He put a small static charge on oil droplets and sprayed them over the plate. The droplets passed through small holes in the top plate. With the correct voltage on the plates, he could make the droplets balance in the air because `|F_"el"| = |F_"g"|`.

In short, the experiment worked and Millikan determined the elementary charge (which turns out to be the charge on one electron) to within ±0.6% of the currently accepted value:

    `e = 1.602xx10^-19\ "C"`.

All other charges are multiples of the elementary charge:

    `q = Ne`.

## Magnetism & magnetic fields

Magnetism is similar to electricity (not surprisingly, since they are closely related, as we will see later). Instead of positives and negatives, we have north poles and south poles. There is no such thing as a magnet with a single pole -- there is always a north pole and a south pole.

![A bar magnet and a horseshoe magnet with labelled poles](magnets.svg)

We explain the behaviour of magnets using _domain theory_. Magnetic materials are composed of many domains, which are clusters of atoms with a magnetic dipole. There are only a few ferromagnetic materials, the most common ones being iron, nickel and cobalt. Most iron on the Earth isn't magnetized, but it still has domains. The domains are all pointing in random directions, so they cancel each other out. In a magnet, the domains are all aligned -- they point in the same direction:

![Scrambled domains (regular iron) compared to aligned domains (magnetized iron)](domains.svg)

When iron comes in contact with a magnet, it becomes a temporary magnet. To make a permanent magnet, you have to melt the iron (actually, steel is more commonly used) and then let it cool in the presence of a strong magnetic field. When a magnet is _saturated_, it is at its maximum strength -- no more domains can be aligned.

The diagrams for magnetic fields are very similar to those for electric fields. The field lines go from north to south instead of positive to negative. With a horseshoe magnet, part of the field is linear.

## Electromagnetic fields

Oersted discovered a connection between electric and magnetic fields. It turns out that a moving electric current produces a magnetic field, and a moving magnetic field produces an electric field. When electric current goes through a straight conductor, a circular magnetic field is produced:

![Straight conductor coming out of the page (left) and going into the page (right)](straight-conductor.svg)

You can remember this with the _right-hand rule_: your thumb is the electric current (using conventional current -- positive to negative) and your fingers curl to indicate the direction of the magnetic field.

For a solenoid (coil of wire), the opposite happens. The conductor is circular and the magnetic field is linear:

![Magnetic field in and around a solenoid (Wikimedia Commons)](solenoid.svg)

You can use the right-hand rule for this as well. Your fingers curl in the direction of the conventional current, and your thumb points toward the north. Inside the solenoid, it might look like the field lines are going from south to north, but really they are going from north to south like usual if you look at the way they curve around the outside.

## Magnetic force

A magnetic field can cause charges (e^−^, p^+^, or ions) to _move_ due to a magnetic force, denoted by `vec F_"M"`. We usually figure out the magnitude and the direction of the force separately.

For point charges, the magnitude of the magnetic force is

    `|vec F_"M"| = qv|vec B|sintheta`,

where `q` is the charge in coulombs (C), `v` is the speed of the particle in metres per second (m/s), `vec B` is the magnetic field in teslas (T), and `theta` is the angle between the conventional current and the magnetic field.

To get the direction, we once again use the right-hand rule. Your fingers (flat, not curled) point in the direction of the magnetic field (the north pole being at your finger tips); your thumb points in the direction of the conventional current (positive to negative -- if it's an electron that's moving, the current is in the direction opposite to the particle velocity); and your palm, if you imagine that there is an arrow perpendicular to it going out from the centre, represents the magnetic force.

It works a bit differently for conductors. We get the magnitude of the magnetic force for straight conductors with

    `|vec F_"M"| = |vec B|ILsintheta`,

where `vec B` and `theta` are the same as before, and where `I` is the current in amperes (A) and `L` is the length of the conductor inside the magnetic field in metres (m). The right-hand rule works the same way that it does for point charges.

## Ampere's law

We know that a straight conductor creates a circular magnetic field. The direction of the magnetic field, `vec B`, at a given point is simply the tangent to that circle. The _magnitude_ is given by Ampere's law:

    `|vec B| = mu_0I/(2pir)`,

where `vec B` is the magnetic field in teslas (T), `mu_0` is the permeability of free space (it has a constant value of 4π × 10^−7^ T⋅m/A), and `r` is the distance from the conductor in metres (m).

For a coiled conductor (a solenoid), we use the equation

    `|vec B| = mu_0(NI)/(L)`,

where `vec B`, `mu_0`, and `I` are the same as before, and where `N` is the number of loops (unitless; always an integer;  counted number, therefore `oo` significant digits; if you are solving for it, _round up_, never down) and `L` is the length of the solenoid in metres (m).

### Example

Find the magnitude of the magnetic field 3.2 cm from a straight conductor with 0.75 A of current.

All we have to do is plug everything into the equation:

    `|vec B| = (4pixx10^-7\ "T⋅m/A")(0.75\ "A")/(2pi(0.032\ "m")) ~~ 4.6875xx10^-6\ "T"`.

Therefore, the magnitude of the magnetic field is 4.7 × 10^−6^ T.

# Waves & Light

## Universal wave equation

The universal wave equation is

    `v = f lambda`.

propagation speed (`v`)
:   the speed of the wave, measured in metres per second (m/s)

frequency (`f`)
:   the number of cycles completed in one second, measured in hertz (Hz)

wavelength (`lambda`)
:   the length of one cycle in the wave, measured in metres (m)

We also have a few other equations for dealing with period:

    `f = N/(∆t), qquad T = (∆t)/N, qquad f = 1/T`.

number of cycles (`N`)
:   the number of cycles completed during a time interval (unitless)

time interval (`∆t`)
:   a specific duration of time, measured in seconds (s)

period (`T`)
:   the time it takes for one cycle to be completed, measured in seconds (s); wavelength is the spatial length, period is the temporal length

## Wave properties

A wave _front_ is the leading edge of a wave. It represents a continuous crest or trough. A wave _ray_ is an arrow perpendicular to the wave front that shows the direction of motion at a particular point.

![Wave front and wave rays on a wave emanating from a point source](wave-front-ray.svg)

When an incident wave ray hits a reflective surface, it makes an angle with the normal (a line perpendicular to the surface) called the angle of incidence. The angle of the reflected ray is called the angle of reflection. According to the law of _reflection_, these two angles are equal:

![Incident ray and reflected ray illustrating the law of reflection](wave-reflection.svg)

When waves enter a new medium, _refraction_ occurs. The speed of the wave either increases or decreases, and the wavelength changes with it. The relationship is `v_1lambda_2 = v_2lambda_1` when frequency is held constant.

![Straight wave enters a slower medium](wave-refraction.svg)

When straight waves pass through an opening, they can be bent. This phenomenon is known as _diffraction_:

![Diffraction of a wave through a wide slit (left) and a narrow slit (right)](wave-diffraction.svg)

The sine of the angle of diffraction is proportional to the wavelength and inversely proportional to the width of the opening:

    `sin theta propto lambda/w`.

For example, sound is easily diffracted because its wavelength is fairly long. Light, on the other hand, requires a much narrower slit because its wavelength is shorter. In general, the wave experiences significant diffraction when `w < lambda`.

Whenever there are two waves, we usually talk about their _phase delay_. Two waves are in phase if their crests and troughs line up. They are completely out of phase if crests line up with troughs and troughs line up with crests. Anywhere between and they are partially out of phase.

![Two waves in phase, partially out of phase, and completely out of phase](phase-delay.svg)

When the waves are in phase, the phase delay is 0º. When they are completely out of phase, it is 180º. Often it is more useful to express it in terms of the wavelength -- the range from 0º to 360º is equivalent to the range from zero to `lambda`.

Waves don't really collide -- they just pass right through each other. While they are occupying the same space, though, they interfere with each other. That interference can either be _constructive_, when amplitude becomes larger because two crests or two troughs overlap, or _destructive_, when amplitude becomes smaller because a crest and a trough overlap.

![Constructive and destructive interference with square waves](wave-interference.svg)

## Two point source interference

When waves are produced in phase from two point sources, they create and interference pattern. There is constructive interference along the perpendicular bisector of the line segment joining the sources because the waves arrive at the points on that line at the same time. This area is called an _antinode_. A little further out, there is the first _nodal line_, where interference is completely destructive. The pattern continues: antinodes and nodal lines alternate in a hyperbolic shape. The number of nodal lines increases when wavelength decreases or when the distance separating the sources decreases.

On any point on a nodal line, there is an extra distance that the wave from one source must travel compared to the wave from the other source. This extra distance, called the _path length difference_, is given by

    `"p.d." = (n - 1/2)lambda`,

where `n` represents the ordinal nodal line (first, second, third, etc., from the central antinode).

The angle `theta_n` represents the angle between the central antinode and the nth nodal line. If we make some assumptions (incorrect assumptions, but the error they contribute is insignificant), we have

    `sin theta_n = "p.d."/d = (n - 1/2)lambda/d`.

By considering similar triangles in this setup, we get a third equation:

    `lambda = (x_nd)/(L(n-1/2))`.

## Wave & particle models of light

There are six main properties of light that should be explained by a theory of light. The wave model and the particle model explain them with varying degrees of success.

linear propagation
:   Light propagates in straight lines. It does not fall and hit the floor.<br>_Particle_: light is composed of very small, fast-moving particles.<br>_Wave_: no good explanation.

diffraction
:   Light diffracts when it passes through a slit.<br>_Particle_: particles collide with the sides of the slit and scatter.<br>_Wave_: water analogy.

reflection
:   Light reflects off many surfaces.<br>_Particle_: pool table analogy.<br>_Wave_: water analogy.

refraction
:   Light refracts when it enters a different medium.<br>_Particle_: the particles move at different speeds in different media.<br>_Wave_: water analogy.

partial reflection & refraction
:   Window panes reflect part of the incoming light and transmit the rest, depending on the viewing angle.<br>_Particle_: no good explanation.<br>_Wave_: water analogy.

dispersion of white light
:   White light disperses into the colours of the rainbow when it passes through a prism.<br>_Particle_: different colours of light are made of particles of slightly different mass (red is heavy, violet is less heavy).<br>_Wave_: each colour is a wave with a different wavelength (red is long, violet is short).

The wave model seems to do a better job of explaining most of these properties, but in reality the answer is more complicated than that.

## Double-slit experiment

The double-slit experiment demonstrates that two point sources of light can create an interference pattern. A single light source is passed through two narrow slits instead of actually using two lamps -- this method ensures that the two waves diffracting out of the slits are _in phase_. The waves create an interference pattern on the screen like this:

![Light intensity vs. position on screen in double-slit experiment](double-slit-intensity.svg)

The interference pattern is a series of nodal lines and antinodes. The nodal lines are evenly spaced by `∆x` on a screen separated from the slits by a distance of `L`. If `d` is the distance between the slits and `lambda` is the wavelength of the light, then

    `Llambda = d∆x`,

where all the variables are measured in metres (m). One consequence of this is that, all other things being equal, a shorter wavelength will result in a smaller value of `∆x`.

Unless you use a colour filter, all the colours of the rainbow present in white light will go through the slits. Red light has a large value of `∆x` and violet light has a small value. This means that the nodal lines of different colours will be at different locations on the screen. For example, if the nodal lines for violet and green happen to overlap at one point, then you will see all the colours except violet and green at that point (since that area is an antinode for the other colours).

## Single-slit diffraction

When light passes through a single slit, we still have an interference pattern. We can think of the slit as a set of many point sources. We get a bright antinode in the centre, and it has a width of `2∆y`. All the other antinodes are `∆y` wide, and the brightness decreases rapidly as you move away from the centre:

![Light intensity vs. position on screen in single-slit diffraction](single-slit-intensity.svg)

The nodal lines in single-split diffraction occur when the path difference from the top and bottom points on the slit are `lambda`, `2lambda`, `3lambda`, etc. The antinodes occur at `0`, `3//2lambda`, `5//2lambda`, etc. This is counterintuitive, because a full wavelength of delay means that the waves arrive in phase and have constructive interference (which would be an antinode). However, when the path difference is `lambda`, there is only one pair of points in the slit that result in this constructive interference. The others are all closer together, and there are many pairs of points separated by a half wavelength, which is destructive. The antinodes have a mix of constructive and destructive interference; this mix becomes increasingly destructive as you move away form the centre, which is why the brightness goes down.

## Thin-film interference

Thin-film interference occur when light waves reflect on the upper and lower boundaries of a thin film. This causes interference and it is responsible for the rainbow of colours that you see in soap bubbles and in puddles that have a thin layer of oil.

When the light strikes the thin film, it is both reflected and refracted. The refracted ray reflects off the bottom and refracts through the top to come out parallel with the original reflected ray:

![Light wave reflecting and refracting at the interface of a fast medium and a thin slow medium](thin-film.svg)

When a wave reflects is in a fast medium and reflects on the interface to a slower medium, it inverts. This means the first wave inverts when it reflects, but the second wave does not. All other things being equal, they should be out of phase. Of course, other things _aren't_ equal because the second wave travels an extra distance. For small angles of incidence, this extra distance is about `2t` where `t` is the thickness of the film.

There are three interesting cases for the thickness of the film. When `t ≪ lambda`, the extra distance is so small that the interference is destructive for all colours. When `t=1//4lambda`, the two waves are in phase. Why? If we don't consider the extra distance, the waves are out of phase, meaning a phase delay of `1//2lambda`; when we do consider it, we have `1//2lambda + 2t = lambda`. Since they are in phase, they interfere constructively -- all other colours (with different values of `lambda`) are blocked because the interference is destructive. When `t=1//2lambda`, the waves are out of phase and therefore destructive. This means that only that colour is blocked -- the others are not.

|                 | phase delay | type of interference | the `lambda` colour | other colours |
| :-------------- | :---------: | :------------------: | :-----------------: | :-----------: |
| `t ≪ lambda`    |    small    |     destructive      |       blocked       |    blocked    |
| `t = 1/4lambda` |  `lambda`   |     constructive     |      reflected      |    blocked    |
| `t = 1/2lambda` | `3/2lambda` |     destructive      |       blocked       |   reflected   |

## Interference effects

_Resolution_ is the ability to distinguish between two closely spaced objects. For example, when the headlights of a car are sufficiently far away and all you see is a single point of light, you have failed to resolve the headlights. Another example: the naked eye cannot resolve the three stars that appear as one in the Big Dipper -- a telescope of greater resolution is required.

The resolution of an optical device such as a camera, microscope, or telescope can be limited by imperfections in the lens itself. However, there is a fundamental limit on any optical imaging system due to the diffraction of light waves. The smaller the opening of a camera's aperture or an eye's pupil, the more the light will [diffract and interfere with itself](single-slit-diffraction.html), reducing resolution. If the opening remains constant, this will still happen if there is more magnification (as optical power increases).

Another interference effect is _polarization_, discovered by Edwin Land in the early 1920s. It works by blocking certain orientations of transverse waves using a series of long, parallel crystals:

![Transverse waves being polarized completed by two filters](polarization.svg)

Polarized sunglasses use vertical filters to block part of the incoming light. They are vertical because glare is usually parallel to the surface of reflection, which is horizontal for the ground. This is useful when the snow is painfully bright on a sunny day, or when you are out on the water.

# Modern Physics

## Electromagnetic waves

By the 1850s, the wave model of light was widely accepted. But there was a problem: if light is a wave, how does it travel through the vacuum between the Sun and the Earth? Some people proposed a _luminiferous ether_ -- a medium permeating all of space that allows light to get around. This concept was disproved by an experiment by Michelson and Morley.

In the early 1860s, Maxwell developed four equations to relative electric and magnetic fields. These equations said that a changing electric field produces a magnetic field, and vice versa. The fields are perpendicular to each other, and they interact to produce a _self-propagating_ electromagnetic wave. The speed of this hypothetical wave turned out to be the same as the speed of light! What's more, a self-propagating wave doesn't need a medium to travel through, so this solved the problem of the vacuum.

In 1887, Hertz observed all the predicated wave properties for Maxwell's equations. In particular, electromagnetic waves

- were produced whenever an electric charge was accelerated;
- had the same frequency as the oscillating source;
- all travelled at 3.00 × 10^8^ m/s;
- were in constant phase;
- were transverse waves.

We now know quite a bit about the electromagnetic spectrum. Here are its different regions in increasing order of frequency (decreasing order of wavelength):

|    Band     |  From (Hz) |    To (Hz) |
| :---------: | ---------: | ---------: |
|    radio    |      10^4^ |     10^10^ |
|  microwave  |      10^9^ |     10^12^ |
|  infrared   |     10^11^ |     10^14^ |
|   visible   | 4 × 10^14^ | 8 × 10^14^ |
| ultraviolet | 8 × 10^14^ |     10^17^ |
|    X-ray    |     10^15^ |     10^20^ |
|    gamma    |     10^19^ |     10^24^ |
|   cosmic    |     10^24^ |            |

##  Black-body radiation & Planck

A black-body is a perfect energy absorber: it absorbs all incoming frequencies of electromagnetic radiation. This is converted to heat and then re-emitted as radiation that has a specific spectrum and intensity that depends on the temperature of the body.

Scientists performed this test with many materials, and the results were consistent. The problem was that Maxwell's equations predicted that at high temperatures, the amount of ultraviolet should increase, not decrease. Maxwell's equations seemed to only work at low frequencies. Rayleigh and Wien modified the equations to make them work with low and high frequencies, but no single set of equations worked with low, high, and middle-range frequencies.

This is where _Max Planck_ comes in. He hypothesized that electrons can only vibrate with certain allowed frequencies. That is to say, electromagnetic radiation is discrete rather than continuous:

![A continuous hill and discrete staircase as an analogy for Planck's hypothesis](cont-disc.svg)

Similar to the [elementary charge](oil-drop-experiment.html) for electricity, the energy conveyed by radiation can only be a multiple of an elementary amount. We can calculate the energy carried by a single photon with

    `E = hf`,

where `h` is Planck's constant, equal to 6.63 × 10^−34^ J⋅s, and `f` is the frequency, measured in hertz (Hz). When Planck's hypothesis is taken into account, the black-body frequency distribution results agree with the theory. The continuous graph of intensity versus frequency can instead be thought of as a vertical bar graph where the vertical axis represents the number of photons that have the particular energy value on the horizontal.

Planck's idea of "allowed" values shows up in the Bohr model of the atom. In the old Rutherford model, the electrons orbit the nucleus. There were many problems with this model. For one thing, it couldn't explain the emission spectra of elements. Bohr's explanation was that only some electron orbitals are allowed, and each one has a specific energy. Electrons can absorb energy and jump to a higher level. When they fall to a lower level, they emit energy in the form of a photon. The energy, or frequency, of the photon depends on the difference in energy between the two levels.

## Photoelectric effect

The photoelectric effect was well known by the 1900s, but there wasn't yet an explanation for it. Using a UV lamp, it was possible to neutralize the static charge on some negatively charged metal plates. To work, it required

- negatively charged plate;
- only certain metals;
- fresh surfaces (no oxidation);
- ultraviolet radiation, not visible light.

The plates lost their charge because the ultraviolet rays caused electrons to electrons to fly away from the plate. These electrons are called _photoelectrons_. An interesting experiment with the photoelectric effect was to use UV to propel electrons across a vacuum from one electrode to another, thus completing a circuit and causing _photocurrent_ to flow:

![Photoelectric effect causing photoelectrons to complete a circuit through a vacuum](photoelectric.svg)

The variables in this experiment were the type of metal (of the target electrode), the frequency of the UV source, and the intensity or brightness of the ultraviolet light. In the diagram above, their is a variable power supply. Even _without_ applying any voltage, the UV rays cause photoelectrons to shoot off the target plate and bounce around in the tube. When a voltage _is_ applied, the target becomes negatively charged and the collector becomes positively charged, and the flying electrons are drawn towards the collector by electric forces.

We can stop the photoelectrons by applying a voltage with opposite polarity (this voltage is called the _retarding potential_). The collector plate is now positive, and it repels the flying electrons. But by how much? As it turns out, the current decreases steadily as we apply more voltage -- until we reach the _cut-off potential_, where current drops abruptly:

![Photocurrent versus retarding potential, indicating the cut-off potential](cut-off-potential.svg)

Once we reach `V_0`, even the fastest electrons are prevented from reaching the collector electrode. This was helpful for determining the maximum kinetic energy (and from that, speed) of the electrons.

Let's return to those other variables. For each metal, there was a different threshold below which no current flowed at all, denoted by `f_0`. After the frequency passes `f_0`, higher frequencies cause the photoelectrons to move faster, which in turn increases value of `V_0` because they are harder to stop. As the intensity of the ultraviolet rays increases, more photoelectrons get released -- but they do not move any faster or slower. In all cases, the electrons are released _instantaneously_. Varying frequency and intensity changes the above graph like this:

![Changes to the current versus voltage graph when frequency and intensity are increased](frequency-intensity.svg)

Frequency controls `E_"k"` and therefore speed and `V_0`; intensity controls current. This is the opposite of the wave model's predictions, and no one could explain it -- until Einstein did in 1905. He used Planck's idea of photon energy, `E = hf`. The energy of a photon can only be absorbed by a single electron; there is no sharing. This electron _may_ then have enough energy to break free from the metal. When `f > f_0`, there is enough energy to break free and some excess. This extra energy is converted to kinetic energy, shooting the photoelectron into the vacuum. As the intensity of the ultraviolet light increases, there are more photons hitting the target every second, therefore more electrons are flowing and the current increases.

Some electrons are right on the surface and move away from it; others are a bit farther in and have to give up some `E_"k"` to fight their way through; others still head inward first, then rebound and go the other way, losing `E_"k"` in the process. The `E_"k"` of the photoelectron ranges from zero to some maximum value, `E_"k,max"`. The fastest electrons are the ones that require a voltage of `V_0` to be fully repelled. With this information, Einstein developed the formula

    `E_"k,max" = hf - W`,

where `W` is the work function, representing the energy needed for an electron to escape the electrode. The work function depends on the metal in the target electrode, and it can be measured in joules (J) or in electron-volts (eV). One electron-volt is equal to 1.60 × 10^−19^ J.

Since `f_0` is the frequency that allows an electron to break free but gives no extra energy to move, it will result in `E_"k,max" = 0`. This gives us another equation, which we can use to define `W` as well as a way to find `f_0`:

    `W = hf_0`.

> Make sure you don't confuse photons with protons. A photon is not a particle, has no charge, and has no rest mass. A proton, on the other hand, is a particle, has a positive charge, and has a rest mass.

## Compton effect

By 1923, the photoelectric effect and Einstein's explanation were accepted. Compton tried doing it with X-rays -- he expected the photoelectrons to go _much_ faster due to the higher frequency of X-rays. There was a problem: since X-rays can penetrate into metal, most electrons would be stopped or slowed down a lot by the time they reached the edge of the plate. To avoid this, Compton used thin metal foil for the target.

Still, he didn't get the results he was expecting. Instead of a fast electron shooting out straight ahead, he found that a lower energy X-ray and a photoelectron both exited the other side of the foil at an angle to the original X-ray. He suggested that the X-ray photons could have _momentum_. Using `E = mc^2`, `E = hf`, and `p = mv`, he derived an equation for the momentum of a photon:

    `p = (hf)/c = h/lambda`.

As it turns out, there are five possible photon--matter interactions. From lowest energy to highest energy, they are the following:

1. `E < W\ =>` reflection
2. `E > W\ =>` [photoelectric](photoelectric-effect.html)
3. `E ≫ W =>` Compton
4. With even more energy, we have _excitation of inner electrons_. The photoelectric and Compton effects deal with valence electrons.
5. With insane amounts of energy, we get _pair production_. The photon interacts with the nucleus to create an electron and a positron.

## Special relativity

Special relativity, a theory developed by Albert Einstein in 1905, reconciles [relative motion](relative-motion.html) with the unchanging speed of light. It postulates that

- all laws of physics are valid in all inertial frames of reference;
- the speed of light is constant with respect to all inertial frames of reference.

Suppose you are sitting on a chair in a room that has no windows. Which way is the earth moving? Is it even moving at all? Because of the first postulate, you _cannot tell_ -- all laws of physics are valid, so there is no observation you could make that would change if you were in a different inertial frame of reference. This is called _equivalence_.

Consider a train moving at half the speed of light. In _frame A_, we have an observer inside the train. In _frame B_, we have an observer outside the train, watching it zoom by. Observer A switches on a flashlight:

![Distance travelled by a ray of light according to observers in different frames](special-relativity.svg)

According to equivalence, observer A neither knows nor cares whether the train is moving. He switches on the flashlight and observes a ray of light travelling `2∆d_"A"` in some amount of time that we'll call `t_0`. Since the speed of light is constant in all inertial frames, we are confident that

    `v = (∆d)/(∆t) qquad implies qquad c = (2∆d_"A")/t_0`.

So far so good. But what about observer B? She notices that the ray of light is actually moving horizontally as well as vertically. She records the distance `2∆d_"B"` and she uses a stopwatch to measure the time it takes for the ray to travel that distance, which we'll call `t'`. Now she tries calculating the speed of light using the same method as observer A:

    `c = (2∆d_"B")/(t')`.

Wait a minute. It's obvious that `t_0 = t'`, so observer B must get a different answer than observer A! That's impossible, because the second postulate of special relativity tells us that the speed of light is constant with respect to _all_ frames of reference. If we were talking about a ball, this would all be fine, but we aren't -- this is light, so the observed speed must be _c_ for both of them. If _c_ remains constant, and `2∆d_"A" != 2∆d_"B"`, then how can those equations give the same answer?

_Time_. It's counterintuitive, but `t_0 != t'`. The ray of light takes _different amounts of time_ to make its trip depending on the frame of reference. Who's right, observer A or observer B? Both are -- for their respective frames. Their is no universal frame of reference, and there is no absolute universal time either. Time is dependent on the frame of reference and spatial position. It therefore does not make sense to say that two events happen at the same time in different parts of space. The simultaneity of two events depends on the observer's frame of reference.

One consequence of special relativity is _time dilation_. A clock running on a spaceship moving near the speed of light will run slower than an identical clock on Earth. A person in that spaceship will age slower than an identical twin on Earth. For the observer in the spaceship, everything is completely normal -- it is the people on Earth that have _fast_ clocks.

If an observer B travels at a speed _v_ for the proper time `t_0` and returns to observer A, who has been at rest all along, then observer A will have experienced a longer amount of time, the relativistic time `t'`, given by

    `t' = t_0/sqrt(1-(v/c)^2)`.

Notice that the denominator rounds to 1.0 unless the speed is very large. This is why we don't notice special relativity in our everyday lives.

Another consequence of special relativity is _length contraction_. As an object approaches the speed of light, it will seem to get shorter. We can get the relativistic length `L'` from the proper length `L_0` with

    `L' = L_0sqrt(1-(v/c)^2)`.

Yet another bizarre consequence of special relativity: faster objects act as if they have more mass. The space shuttle might have a _rest mass_ of two million kilograms, but its actual mast approaches infinity as the space shuttle approaches the speed of light. We can calculate this mass with

    `m' = m_0/sqrt(1-(v/c)^2)`.

Einstein also applied his theory of relativity to _matter_. In chemical reactions, mass is conserved because the atoms are just being shuffled around. In nuclear reactions, mass changes because elements change into different elements. This is accounted for by a change in energy according to the mass--energy equivalence equation,

    `E = mc^2`.

## General relativity

General relativity is an extension of relativity of non-inertial frames of reference. It unifies special relativity and Newton's law of universal gravitation in as a geometric property of space-time. The mass of a planet distorts space-time, causing objects nearby to follow a curved path. One prediction of general relativity was gravity's ability to warp light rays, and this was first tested in 1919 in a solar eclipse.

## Uncertainty principle

According to the Heisenberg uncertainty principle, it is impossible to know the exact position _and_ momentum of a particle at the same time. The more precisely you know one, the less precisely you know the other. Since a photon has momentum equal to `p=h//lambda`, it can alter the path of an electron when it collides with it. But to measure the position or momentum of an electron, you _have_ to shoot photons at it. The very act of looking at the particle in this way changes the results. We are left with two options:

- Use low-energy photons (long wavelength) for precise momentum.
- Use high-energy photons (short wavelength) for precise position.

The product of the absolute uncertainties of position and speed satisfies

    `∆x∆v >= h/(2pim)`,

where `∆x` and `∆v` are the [absolute uncertainties](measurements.html) of the position, measured in metres (m), and  of the speed, measured in metres per second (m/s), respectively, and where _h_ is Planck's constant and _m_ represents the mass of the particle, measured in kilograms (kg).

### Example

If we know the speed of an electron to within 1.0 m/s, how precisely can we know its position?

Solving the inequality for the uncertainty of position, we have

    `∆x >= h/(2pim∆v) = (6.63xx10^-34\ "J/s")/(2(3.14)(9.11xx10^-31\ "kg")(1.0\ "m/s")`,

which evaluates to

    `∆x >= 1.2xx10^-4\ "m"`.

We are therefore off by at least 1.2 × 10^−4^ m for the position, which is quite a lot considering that this number is about 100 billion times larger than the radius of the electron -- it's sort of like saying that you know the position of your friend: "he's somewhere in the solar system."
