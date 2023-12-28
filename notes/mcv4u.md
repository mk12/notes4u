---
course_code: MCV4U
course_name: Calculus & Vectors
---

This course builds on Advanced Functions to prepare you for university math. The two halves, (differential) calculus and vectors, are very different. Calculus is more algebraic and abstract, while vectors is more visual and geometric.

# Rates of Change

In this unit, you'll learn about a mathematical concept that is very important in calculus: the limit. You'll also learn strategies for evaluating limits and apply these skills to find instantaneous rates of change.

## What is a limit?

A limit is the value that a function approaches when `x` gets very close to some value `a`. We are allowed to say

    `lim_(x->a)f(x) = L`

_if and only if_ we can make `f(x)` as close to `L` as we desire by making `x` sufficiently close to `a`. The value of `f(a)` doesn't matter -- it could be different from `L` or undefined for all we care. The purpose of the limit is to talk about what happens when `x` is very close (but not equal) to `a`.

Suppose I want `f(x)` to be no more than 0.00123 away from `L`. If the limit exists, then this _has_ to be possible by making `x` a certain amount left or right of `a`. The definition I gave above is informal, but you should be able to see that it is quite a bit more precise than simply saying, "it gets really close to `L`."

When we say claim that a limit exists, we are implying that the function approaches the limit from _both sides_ -- left and right. If it doesn't do this, the limit does not exist. However, we can still talk about one side by itself using different notation. The left and right limits are represented by

    `lim_(x->a^-)f(x)` and `lim_(x->a^+)f(x)`.

In some cases it is easy to determine a limit just by looking at a graph. Consider the limit as `x` approaches 5 for the following function:

![A strange-looking, discontinuous function](strange-function.svg)

Notice that `f(5) = 2`. Remember, though, the actual value of the function when `x` is _equal to_ 5 is irrelevant to the limit as `x` _approaches_ 5. From the graph, you should be able to see that

    `lim_(x->5^-)f(x) = 4` and `lim_(x->5^+)f(x) = 1`,

and since these are not equal, `lim_(x->5)f(x)` does not exist.

## Evaluating limits

### Simplifying

Limits obey a set of laws, and the basic ones are worth remembering. First, the limit of a sum is equal to the sum of the limits:

    `lim_(x->a)(f(x)+g(x)) = lim_(x->a)f(x) + lim_(x->a)g(x)`.

The same thing goes for subtraction, multiplication, and division.

### Direct substitution

If a function `f` is continuous at `a` and `f(a)` is defined, then

    `lim_(x->a)f(x) = f(a)`.

You'll learn about continuity in the next section, but for now you can apply this rule to polynomials, rationals, exponentials, logarithms, and trigonometric functions -- everything you saw in Advanced Functions.

For example, we can use direct substitution in

    `lim_(x->3)x^2 = 3^2 = 9`.

### Factoring

Sometimes attempting direct substitution will give us zero over zero -- we call this result _indeterminate_ (this is distinct from undefined). If the expression looks like it can be factored, try doing so. Sometimes this will result in a factor dividing out, and then you can proceed with direct substitution after that.

For example, we can factor the numerator to evaluate this limit:

    `lim_(x->0)(7x - x^2)/x = lim_(x->0)(x(7 - x))/x = lim_(x->0)7 - x = 7 - 0 = 7`.

### Rationalizing

If factoring doesn't work, we can try rationalizing to get around the indeterminate case. This generally works if you have a binomial with one or two radicals in it. To do this, we multiply by the _conjugate_ of binomial over itself and then use the difference of squares.

An expression of the form `a^2 - b^2` can be factored to give `(a + b)(a - b)`. In this expression, `a + b` is the conjugate of `a - b`, and vice versa.

For example, multiplying the following by the conjugate over itself gives us

    `lim_(x->0)(sqrt(x+1) - 1)/x = lim_(x->0)((sqrt(x+1) - 1)/x)((sqrt(x+1) + 1)/(sqrt(x+1) + 1))`,

which simplifies to give the value of the limit,

    `lim_(x->0)((x+1) - 1)/(x(sqrt(x+1) + 1)) = lim_(x->0)1/(sqrt(x+1) + 1) = 1/(sqrt(0+1)+1) = 1/2`.

### Change of variable

Yet another strategy to try when tackling the indeterminate is to change the variable. It's hard to explain this method in words, so I'll just demonstrate it with an example.

Suppose we want to evaluate the limit

    `lim_(x->0)((2x+1)^(1/3)-1)/x`.

Let's change the variable. In general, when we have a fractional exponent as we do here, we want to get rid of it. To do this, we will let `u^3 = 2x + 1`. This means that

    `(2x + 1)^(1/3) = u` and `x = 1/2(u^3 - 1)`.

Now we can change the variable in the limit expression:

    `lim_(x->0)(u - 1)/(1/2(u^3 - 1)) = lim_(x->0)(u - 1)/(1/2(u - 1)(u^2 + u + 1)) = lim_(x->0)2/(u^2+u+1)`.

We were able to divide out a factor, which is exactly what we wanted. Now we can back-substitute our original variable and evaluate:

    `lim_(x->0)2/((2x+1)^(2/3) + (2x+1)^(1/3) + 1) = 2/(1^(2/3) + 1^(1/3) + 1) = 2/3`.

### One-sided limit

Some limits cannot be evaluated because they do not exist. To prove this, we have to show that the limit from the left does not equal the limit from the right. Consider the following limit:

    `lim_(x->4)|x-4|/(x-4)`.

We get an indeterminate answer if we try direct substitution. As you might have guessed, we need to evaluate the limit from both sides. Graphing the function turns out to be very helpful:

![The graph of the function (notice the jump at `x = 4`)](one-sided-limit.svg)

This graph makes it obvious that

    `lim_(x->4^-)|x-4|/(x-4) = -1` and `lim_(x->4^+)|x-4|/(x-4) = 1`,

and since these are not equal, the limit does not exist.

## Continuity

A continuous function is one that can be drawn without lifting your pencil. A discontinuous function cannot be drawn like this because it has one or more discontinuities. There are three types of discontinuities:

- point discontinuity (hole)
- jump discontinuity (jump)
- infinite discontinuity (asymptote)

![A very discontinuous function](discontinuities.svg)

We can also talk about whether a function is continuous at a particular point. For example, the function graphed above is continuous at 3.

Drawing a curve without lifting your pencil is a good way of thinking about continuity, but this isn't a very good definition. Here is a formal definition with some mathematical rigour in it: a function `f` is continuous at `a` if

    `f(a)` is defined and `lim_(x->a)f(x) = f(a)`.

Let's try using this definition. Consider the following piecewise function:

    `f(x) = { x^2 - 3, if x <= -1; x - 1, if x > -1 :}`.

Is it continuous at −1? If it is, it must satisfy the two conditions in our definition. Since `f(-1) = -2`, the first condition is met. Since both pieces of `f` are continuous individually (they are polynomials) and they intersect at `x = -1`, the left and right limits are equal and thus

    `lim_(x->-1)f(x) = f(-1) = -2`,

and the second condition is met. If this doesn't make sense, try graphing the function. You will see that the function approaches  −2 from both the left and the right.

> Continuity isn't part of the grade twelve curriculum, so you won't be tested on any of this. It won't go away in university, though, so you might as well learn it now.

## First principle of calculus

A _secant line_ is a straight line that connects two points on a curve. A _tangent line_ is a straight line that "just touches" the curve at a single point.

![A graph with a secant line on [2, 4] and a tangent line at 7](secant-tangent.svg)

The slope of the secant line gives us the _average_ rate of change of the function on the interval between the two points. The slope of the tangent line gives us the _instantaneous_ rate of change.

Finding the slope of the secant line is easy:

    `m_"sec" = (∆y)/(∆x) = (y_2 - y_1)/(x_2 - x_1) = (3 - 4)/(4 - 2) = -1/2`.

We can generalize this to give us the average rate on the interval [`x_1`, `x_2`] for any function `f` with

    `m_"sec" = (f(x_2) - f(x_1))/(x_2 - x_1)`,

but what about the tangent line? We could draw it with a ruler and pick two points that is passes through, but this method is tedious and inaccurate. No, instead we can use our newly-acquired limit skills.

The key thing to realize here is that the secant line and the tangent line are related. A tangent line is just a secant line whose interval happens to be very, very small -- _infinitesimal_, to be exact (this means indefinitely small). In other words, the slope of the tangent line at `x=a` is equal to the slope of the secant line on the interval [`a`, `a+h`] as `h` approaches zero:

    `m_"tan" = lim_(h->0)(f(a+h) - f(a))/h`.

This is the first principle of calculus. As with most other things, graphing will help us understand it:

![A graph with a secant line on [`a`, `a+h`] and a tangent line at `a`](first-principle.svg)

As we move the second point closer to the first point, thereby making `h` approach zero, the slope of the secant line will converge on the slope of the tangent line at `a`.

Suppose we want to find the slope of the tangent line at 3 on `f(x) = x^2`. We simply plug it into our first principle of calculus, giving us

    `m_"tan" = lim_(h->0)(f(3+h) - f(3))/h = lim_(h->0)((3+h)^2 - 3^2)/h`,

which simplifies to

    `lim_(h->0)(9+6h+h^2 - 9)/h = lim_(h->0)(6h+h^2)/h = lim_(h->0)6+h = 6+0 = 6`,

therefore the instantaneous rate of change at `x = 3` is 6.

# Derivatives & Applications

In this unit, we formalize the concept of the derivative. You will learn a set of rules for differentiating functions and apply these skills to solve optimization problems.

## What is a derivative?

Functions are very simple. We give the function an input value and we get back exactly one output value, as long as the input was in the function's domain. We usually say `y = f(x)` and plot all the points (`x`, `y`) on a graph. What if we instead tried graphing all the points (`x`, `m`) where `m` is the slope of the tangent line at `x` on the original graph? Doing this turns out to be very useful. This idea is at the core of differential calculus.

The _derivative_ of a function `f` is another function, denoted by `f'`, which is like `f` except it gives us `m_"tan"` instead of `y`. More specifically, `f'(x)` must be equal to the instantaneous rate of change on `f` at `x`. Before, we would talk about the slope of the tangent line (or the instantaneous rate of change) at `x=7`; now, we simply evaluate `f'(7)`. For example, if `f(x)=3x`, then `f'(x)` will always give us 3 no matter what `x` is.

It might seem like all we're doing is changing our notation. Doesn't the prime mark just mean, "give me the slope, not the _y_-value"? Well, yes, but there's a bit more to it than that. Before we were using the first principle of calculus as a tool to find instantaneous rates of change. Now, we are doing this thing called _differentiation_ to a function and getting an entirely new function called the _derivative_. Yes, `f'` is intimately related to `f`, but don't forget that it's just a function. It can stand on its own, and we can do ordinary function stuff with it, like finding the zeros. We can even differentiate the derivative, giving us the second derivative of the original.

The mathematical definition of the derivative should look very familiar:

    `f'(x) = lim_(h->0)(f(x+h) - f(x))/h`.

Since the derivative is a function, we can and should graph it. Consider the simplest linear and quadratic functions -- look at the slope of the original function and convince yourself that the derivative is correct:

![Graphs of `f(x)=x` and `g(x)=x^2` with their derivatives in red](derivatives.svg)

One real-world example of a derivative is _velocity_, the derivative of position with respect to time. What do we mean when we say that a car is moving 20 m/s north? Maybe we observed the car taking 5 seconds to travel 100 metres. In any case, the only way we can measure velocity is by dividing a change in position by a change in time (the smaller, the better). If the derivative seems like an alien concept, just think of how ordinary it is to talk about the rate of change in position.

> We are using prime marks for our derivatives. This is called Lagrange's notation. Another notation we can use is Leibniz's notation:
>
>     `f'(x) = d/(dx)f(x) = dy/dx`.
>
> They all mean the same thing. Leibniz's notation is more convenient when you are working with equations that aren't written in function notation, like `y=x^2` instead of `f(x)=x^2`.

## Differentiation rules

The first principle of calculus is tedious and it gives you plenty of opportunities to make mistakes. Fortunately, there are some shortcuts.

### Constant rule

This is really just a special case of the product rule, but you will use it so often that it's easier to think of it separately. If `k` is a constant, then

    `d/(dx)(k*f(x)) = k*d/(dx)f(x)`.

### Sum & difference rules

The derivative of the sum is equal to the sum of the derivatives. The same goes for subtraction. This means that

    `(f +- g)' = f' +- g'`.

or, using Leibniz's notation,

    `d/(dx)(u +- v) = (du)/(dx) +- (dv)/(dx)`.

### Power rule

Polynomials are very easy to differentiate thanks to the power rule.

    `d/(dx)(x^n) = nx^(n-1)`.

For example, the derivative of `x^100` with respect to `x` is `100x^99`.

### Product rule

The derivative of the product is _not_ the product of the derivatives. Rather,

    `(fg)' = f'g + fg'`,

or, using Leibniz’s notation,

    `d/(dx)(uv) = (du)/(dx)*v + (dv)/(dx)*u`.

### Quotient rule

We can use the product and power rules together to tackle rationals, but using the quotient rule is much easier:

    `(f/g)' = (f'g - fg')/g^2`,

or, using Leibniz’s notation,

    `d/(dx)(u/v) = v^-2((du)/(dx)*v - (dv)/(dx)*u)`.

### Chain rule

To differentiate composite functions, we need to use the chain rule:

    `(f @ g)' = (f' @ g)*g'`,

or, using Leibniz’s notation,

    `(dy)/(dx) = (dy)/(du) * (du)/(dx)`.

## Trigonometric functions

When we differentiate trigonometric functions, the result is another trig function. The first few derivatives in the list below are worth memorizing. Don't forget that chain rule & friends apply for all functions, not just polynomials. Given the first two rows below, you should be able to derive the rest using just the power rule and the chain rule.

| Function | Derivative  |
| :------: | :---------: |
|  `sinx`  |   `cosx`    |
|  `cosx`  |   `-sinx`   |
| `sin2x`  |  `2cos2x`   |
| `cos2x`  |  `-2sin2x`  |
| `sin^2x` |   `sin2x`   |
| `cos^2x` |  `-sin2x`   |
|  `cscx`  | `-cscxcotx` |
|  `secx`  | `secxtanx`  |
|  `tanx`  |  `sec^2x`   |
|  `cotx`  |  `-csc^2x`  |

### Example

Let's differentiate `7cos^2(sqrt(x^2-3))`. Using the constant rule, we have

    `d/(dx)7cos^2(sqrt(x^2-3)) = 7*d/(dx)(cos(sqrt(x^2-3)))^2`,

and using the power rule and chain rule, we have

    `7*2cos(sqrt(x^2-3)) * d/(dx)cos(sqrt(x^2-3))`.

Now we must keep using the chain rule:

    `7*2cos(sqrt(x^2-3)) * -sin(sqrt(x^2-3)) * d/(dx)sqrt(x^2-3)`.

This simplifies to

    `-7sin(2sqrt(x^2-3)) * d/(dx)sqrt(x^2-3)`,

but we aren't done with the chain rule:

    `-7sin(2sqrt(x^2-3)) * 1/(2sqrt(x^2-3)) * d/(dx)(x^2-3)`.

There is finally nothing left to differentiate. We have

    `-7sin(2sqrt(x^2-3)) * 1/(2sqrt(x^2-3)) * 2x`,

and this simplifies to our final answer:

    `(-14xsin(2sqrt(x^2-3)))/(2sqrt(x^2-3))`.

## Exponential functions

The derivative of the exponential function is, by definition, itself:

    `d/(dx)e^x = e^x`.

With other bases, you have to multiply by the natural logarithm of the base:

    `d/(dx)b^x = b^x*lnb`.

### Example

Let's differentiate `3x^3(7)^(picos2x)`.

The first thing to notice is that we can use the product rule:

    `d/(dx)3x^3(7)^(picos2x) = d/(dx)3x^3 * 7^(picos2x) + d/(dx)7^(picos2x) * 3x^3`,

which reduces to

    `9x^2(7)^(picos2x) + 7^(picos2x)*ln7*d/(dx)picos2x`,

which then becomes

    `(9x^2 + ln7d/(dx)picos2x)7^(picos2x)`,

giving us the final answer,

    `(9x^2 - ln7*2pisin2x)7^(picos2x)`.

## Implicit differentiation

So far we've only differentiated functions, or relations where `y` was written _explicitly_ as a function of `x`. We can also differentiate relations that aren't functions, and they are often written _implicitly_ (sometimes there is no other way). To differentiate these relations, we take the derivative of both sides and solve for the derivative that we want.

### Example

Consider the following relation:

    `x^2 + y^2 = 25`.

This describes a circle centred about the origin with a radius of 5. In this relation, `y` is not a function of `x`, but we still want to find the derivative of the former with respect to the latter. We start by taking the derivative of both sides:

    `d/(dx)(x^2 + y^2) = d/(dx)25`.

We can apply the sum rule on the left and the constant rule on the right:

    `d/(dx)x^2 + d/(dx)y^2 = 0`.

The `x^2` term is easy, but we need the chain rule for the `y^2` term:

    `2x + 2y*(dy)/(dx) = 0`.

Now we can simply solve for the derivative that has just appeared:

    `(dy)/(dx) = -x/y`.

We're done! That's all there is to it. Try verifying this derivative by looking at the tangent slopes on a circle with a radius of 25.

## Optimization

Optimization problems require you to find the best option from a set of alternatives, based on some criteria. In general, you have some function `f(x)` that you want to _maximize_ or _minimize_ by choosing the value of `x` that results in the optimal (maximal or minimal) value.

Often, your equation for `f(x)` will contain another variable other than `x`. This is where the _constraint_ comes in. It is a different equation that has both variables in it, so you can solve it for the other variable and substitute that into the original function.

Here is the basic strategy for solving optimization problems:

1. Draw a sketch of the problem, if applicable.
2. Introduce variables (as few as possible).
3. Develop a formula for the constrained quantity.
4. Develop a formula for the quantity to optimize.
5. Substitute (3) into (4) and simplify.
6. Take the derivative, set it equal to zero, and solve.
7. Compare the function values for each solution and for the endpoints.
8. Choose the optimal value and determine any remaining variables.

### Example

Given two nonnegative integers `a` and `b` that sum to 9, find the maximum value of `a sqrt(b)` assuming `a > b`.

Since `a + b = 9`, we have

    `b = 9 - a`.

Now we can rewrite the function that we want to maximize:

    `f(a) = a sqrt(b) = a sqrt(9-a)`.

Taking the derivative gives us

    `f'(a) = sqrt(9-a) - a/(2sqrt(9-a))`,

and now we can set it equal to zero to find the turning point:

    `0 = sqrt(9-a) - a/(2sqrt(9-a)) = (2(9-a))/(2sqrt(9-a)) - a/(2sqrt(9-a))`.

Assuming that `a != 9`, we can drop the denominator, since zeros come from the numerator of a rational:

    `0 = 2(9-a) - a qquad => qquad a = 6`.

If `a = 6`, then `b = 9 - 6 = 3`. The values that maximize this function are 6 and 3. They result in a value of `6sqrt(3) ~~ 10.392`.

> I chose an abstract problem because I didn't feel like drawing a sketch, but most of the time you will want a sketch. Also, you really should graph the function to verify your answer (that's how I knew that `a = 6` was a maximum and not a minimum).

# Curve Sketching

This unit will teach you to accurately sketch all manner of functions by using the first and second derivatives to find the information you need.

## Value, slope, & concavity

When sketching the graph of a function, the obvious first step is to plot a few points. Specifically, the zeros, the turning points, and the inflection points (and, for good measure, the y-intercept). But how does one connect the dots? The answer lies within three quantities: function value, slope, and concavity. In fact, it's just their _signs_ that matter.

The values of `f(x)`, `f'(x)`, and `f''(x)` represent function value, slope, and concavity, respectively. This table summarizes the meaning of their signs:

|  Value   |      `= 0`       |   `> 0`    |    `< 0`     |
| :------: | :--------------: | :--------: | :----------: |
|  `f(x)`  |       zero       |  positive  |   negative   |
| `f'(x)`  |  turning point   | increasing |  decreasing  |
| `f''(x)` | inflection point | concave up | concave down |

Here is an example of the information that these three quantities, given by the function and its first two derivatives, provides you with:

![A quintic function with zeros, turning points, and inflection points indicated; below is a breakdown of positive/negative, increasing/decreasing, and concave up/down](critical-key-points.svg)

## Critical points & key points

The critical points of a function are at the values of `x` where

    `f'(x) = 0` or `f'(x)` does not exist.

If the value of `f'(x)` changes from positive to negative or vice versa across the critical point, then it represents a turning point (local extremum).

The key points of a function are at the values of `x` where

    `f''(x) = 0` or `f''(x)` does not exist.

If the value of `f''(x)` changes from positive to negative or vice versa across the key point, then it represents an inflection point.

Critical points can be turning points, and key points can be inflection points, but they aren't always -- just as zeros can indicate that the curve is crossing the x-axis, but not always. All these points are important because they represent _transitions_: from positive to negative, from increasing to decreasing, from concave up to concave down. If you know _when_ the three quantities change, you can determine their signs at all points in the domain of the function. You are then well on your way to sketching the curve.

## Curve sketching strategy

We can use the same basic strategy to sketch any function:

1. Find the zeros, vertical asymptotes, and end behaviour of the function.
2. Take the first derivative and find the critical points.
3. Take the second derivative and find the key points.
4. Plot the y-intercept, zeros, critical points, key points.
5. Indicate any asymptotes with dashed lines.
6. Make three tables to indicate the signs of the value, slope, and concavity across the domain of the function.
7. Connect the points on the graph by drawing the curve one segment at a time (a segment being a region where none of the three quantities change).

# Geometry & Algebra of Vectors

So far in your math career, you have been limited to _scalar_ quantities. In this unit, you'll learn about _vectors_ and use them to explore the third dimension. We'll also touch on _matrices_, another mathematical object.

## Scalars & vectors

A scalar is a quantity with magnitude only; a vector is a quantity with both magnitude _and_ direction. In latin, the word vector is a noun with the literal meaning _carrier_ -- this is a good way to think about them in math.  A vector is an arrow that takes you from one place to another (the specific places are not part of the vector, though). For example, a speed of 50 km/h is a scalar while a velocity of 50 km/h due north is a vector.

Here are some examples of scalar and vector quantities:

|    Value    |  Type  |
| :---------: | :----: |
|  distance   | scalar |
|  position   | vector |
|    speed    | scalar |
|  velocity   | vector |
|    force    | vector |
|    time     | scalar |
|    mass     | scalar |
| temperature | scalar |

We represent scalars using ordinary variable notation like `a`, `x`, `v`, or `t`. Vectors use a different notation: either boldface, like `bbv`, or arrows, like `vec v`. The arrow notation is always used in handwriting. If you want to designate a vector from point A to point B, use `vec(AB)`.

We use absolute value notation when we want to get the magnitude of a vector. For example, if `vec v` is 5 km/h [N25ºE], then `|vec v|` is 5 km/h.

Two vectors are equal if and only if they have the same magnitude and the same direction. In other words, they must be parallel and have the same length. Opposite vectors have the same magnitude but opposite directions. For example, `vec(AB)` and `vec(BA)` are opposite due to the identity `vec(AB)=-vec(BA)`.

## Addition & subtraction

The sum of two or more vectors is called the _resultant_ vector. We can add and subtract vectors with the help of a geometric interpretation and a little bit of trigonometry.

To find the sum of `vec u` and `vec v`, we can use the _parallelogram law_. Start by drawing both vectors with their tails beginning at the same point. Then complete the parallelogram using a copy of each vector. The resultant vector is the diagonal of the parallelogram from tails to heads.

![The parallelogram law of vector addition](parallelogram.svg)

Once you have your diagram, you can find the magnitude and direction of the resultant vector using cosine law and sine law. To _subtract_ vectors, you can use the same method -- notice that `vec u - vec v = vec u + (-vec v)`. In other words, flip the subtrahend and then add.

Vector addition is commutative, meaning

    `vec u + vec v = vec v + vec u`,

and it is also associative:

    `(vec a + vec b) + vec c = vec a + (vec b + vec c)`.

Since we can add vectors, there must be an _additive identity_: some vector `vec a` where `vec v + vec a = vec v`. This is called the _null vector_ or the _zero vector_, and we represent it with `vec 0`. It has no magnitude, and consequently its direction is undefined (there is no arrow to point anywhere). For example, adding a vector to its additive inverse yields the zero vector: `vec v + (-vec v) = vec 0`.

An important identity for simplifying vector expressions is

    `vec(AB) + vec(BC) = vec(AC)`.

This should be obvious if you think about it: going from A to B and from B to C is the same as going straight from A to C. You will often need to apply `vec(AB) = -vec(BA)` to make an expression match the left-hand side above.

## Scalar multiplication

Scalar multiplication means multiplying a vector by a scalar. To do this, we simply put a scalar coefficient in front of the vector, like `2vec v`. In general, when we have two vectors `vec u` and `vec v` such that

    `vec u = kvec v`,

we say that `vec u` and `vec v` are _scalar multiples_ of each other. They will always be parallel to each other -- if `k` is positive, they will have the same direction; if `k` is negative, they will have opposite directions. Unless `k = 1`, they will have different magnitudes. If `k = 2`, then `vec u` will be twice as long as `vec v`.

Here are a few examples of scalar multiplication:

![A few scalar multiples of vector `vec u`: 1, 2, −1, 0.5, and −1.5](scalar-multiples.svg)

Scalar multiplication is distributive, meaning

    `k(vec u + vec v) = kvec u + kvec v` and `(a + b)vec u = avec u + bvec u`,

and it is also associative:

    `a(bvec u) = (ab)vec u`.

Like with addition, there is an identity for this operation as well: the _multiplicative identity_. This is just the scalar 1, because `1vec u = vec u`.

A _unit vector_ is a vector whose magnitude is one. We can use scalar multiplication to _normalize_ any vector (turn it into a unit vector) like so:

    `hat u = (vec u)/(|vec u|)`.

All we have to do is divide by the vector's magnitude (multiply by the reciprocal). This will give us a vector of length one that still points in the original direction. Normalizing `vec u` gives us `hat u` (the hat denotes a unit vector).

## Vector spaces

So far we have talked about _geometric_ vectors, which are like arrows with magnitude and direction. This is an intuitive geometric interpretation, and it's useful for some things, but there's a lot more to vectors than just that. In the broader context of vectors, we talk about _vector spaces_. There are many different vector spaces, but we will only worry about the Euclidean ones. A Euclidean vector is a collection of real numbers. In `RR^2` or two-space, there are two components; in `RR^3` or three-space, there are three.

The notation we use for a vector in two-space is `vec v = [∆x,∆y]`, where the deltas go from the vector's tail to its tip. Say we wanted to designate a vector from the origin to point P(3,−2). This is simply `vec(OP) = [3,-2]`. Since we often interpret our Euclidean vectors in the Cartesian coordinate system, we also call them Cartesian vectors.

What if you know points A and B, and want a vector that takes you from A to B? We can simplify this problem using the identity that we learned in the [section on addition](addition-subtraction.html). Consider this:

    `vec(AB) = vec(AO) + vec(OB) = -vec(OA) + vec(OB) = vec(OB) - vec(OA)`.

In words, you can get a vector from A to B by doing `vec(PB)-vec(PA)`, where P is some common reference point (usually the origin). You just need to remember that it's _tip minus tail_ and not the other way around.

How do we add or subtract Euclidean vectors? It's actually very easy -- just do the operation to each component separately:

    `[a,b] + [c,d] = [a+c,b+d]`.

It works the same way for subtraction. Scalar multiplication distributes:

    `k[x,y] = [kx,ky]`.

There are a few advantages of this over the geometric vectors we were using before. For one thing, it's a lot less work. Also, it's much easier to be precise: you could add a hundred vectors this way without breaking a sweat. Try that with geometric vectors -- your answer will be buried so deep in trig functions and square roots that you will be forced to round off.

To get the magnitude of `vec v = [x,y]`, you can use the Pythagorean theorem:

    `|vec v| = sqrt(x^2 + y^2)`.

You can find the direction of `vec v` by drawing a triangle and using the inverse tangent function. Then, you can state the vector with the usual magnitude-direction representation -- for example, [4m, 3m] becomes 5 m [E 30º N]. Going the other way (from magnitude-direction to _x_ and _y_ components) is called _resolving_ the vector, and you can do it by sketching a right triangle and using sine and cosine.

All of this is straightforward in `RR^3` as well. You just use one more component. Addition, subtraction, and scalar multiplication work the same. To get the magnitude, just include `z^2` in the sum.

Normalizing a geometric vector is easy: just change the magnitude to 1. It's a little bit more work with these Euclidean vectors. Say we want the unit vector parallel to `vec v = [3,5,6]`:

    `hat v = vec v/|vec v| = ([3,5,6])/(sqrt(3^2+5^2+6^2)) = 1/sqrt(70)[3,5,6]`.

That's it. You can distribute the coefficient if you want, but there is really no need -- why write `sqrt(70)` three times instead of once?

## Standard basis

There is another way of thinking about Euclidean vectors. It might just seem like an alternative notation, but it's a bit more than that. It works like this: there are only three vectors (or two in two-space) that you need to describe any other vector. These are called the standard basis vectors:

    `hat i = [1,0,0]`, `hat j = [0,1,0]`, `hat k = [0,0,1]`.

Say we have the vector `vec v = [4,-2,7]`, which is in component form. How would we express it in standard basis? Like this:

    `vec v = 4hat i - 2hat j + 7hat k`.

This way of describing vectors is useful when manipulating and simplifying vector expressions because you can just treat them as ordinary variables. You can use your algebra skills -- combining like terms and so on -- just as you always have. Say that, in addition to `vec v`, we have `vec u = 5hat j - 2hat k`. Let's simplify the expression `3vec v + 4vec u`:

    `3vec v + 4vec u = 3(4hat i - 2hat j + 7hat k) + 4(5hat j - 2hat k) = 12hat i + 14hat j + 13hat k`.

## Spanning sets

A _linear combination_ is an expression of one vector in terms of other vectors. In general, linear combinations take the form

    `vec v = a_1vec u_1 + a_2vec u_2 + cdots + a_nvec u_n`.

In `RR^2`, we know that all vectors can be expressed in terms of the [standard basis vectors](standard-basis.html) `hat i` and `hat j`. There are a few ways we can describe these two vectors: we can say `hat i` and `hat j` are a basis for `RR^2`; we can say `{hat i,hat j}` form a spanning set for `RR^2`; and we can say that `{hat i,hat j}` spans `RR^2`. They all mean the same thing -- namely, that you can represent all possible vectors in `RR^2` with linear combinations of `hat i` and `hat j`.

In this case, we have an orthogonal basis because `hat i` and `hat j` are perpendicular (_orthogonal_ is another way of saying perpendicular, but it is a bit more general). However, this is not a requirement for all spanning sets. There is only one requirement for a pair of two vectors to span `RR^2`: they must be nonzero and non-collinear. (Two vectors are collinear if they are parallel or antiparallel.) The zero restriction is fairly obvious. But why can't they be collinear? Just try imaging it. If two vectors have the same direction or opposite directions, you are locked onto a line. There is no way you can move outside it. But if the directions differ even by just a billionth of a degree, you have a spanning set and you are free to roam anywhere you please on the Cartesian plane.

There are also spanning sets in `RR^3`. A triplet of three-component vectors forms a basis for `RR^3` if they are nonzero and non-coplanar. What does _coplanar_ mean? Head on over to [the next section](coplanarity.html).

### Example

Express the vector `[6,7]` in terms of the spanning set `{[10,5],""[-2,1]}`.

Referring to the definition of a linear combination, we can write an equation with unknown coefficients `a` and `b`:

    `[6,7] = a[10,5] + b[-2,1]`.

We can unpack this into two equations -- one for each component:

    `6 = 10a - 2b` and `7 = 5a + b`.

Solving by elimination tells us that `a = 1` and `b = 2`, therefore

    `[6,7] = [10,5] + 2[-2,1]`.

This works the same way in `RR^3` (three variables, three equations).

## Coplanarity

Coplanarity is concept that applies to vectors in `RR^3`. A set of vectors is coplanar if they all lie on the same plane. Just as a single vector is always collinear with itself, a pair of vectors are always coplanar. With three vectors, sometimes they are and sometimes they aren't.

Three vectors `vec u`, `vec v`, and `vec w` are coplanar if and only if there exists real numbers `a` and `b` such that

    `vec u = avec v + bvec w`.

In other words, it must be possible to express each as a linear combination of the other two. To determine this, you should use the following method:

1. Write the linear combination expression as shown above. It doesn't matter which of the three vectors is alone on the left-hand side.
2. Extract three linear equations from the vector equation.
3. Choose two of the equations and use them to solve for `a` or `b`. 
4. Back-substitute the variable you just found into one of the two chosen equations, _not_ into the unused one, and solve for the remaining variable.
5. Perform an LS/RS verification of the as yet unused equation with the values of `a` and `b` that you just found.
6. If `"LS" = "RS"`, the system is consistent and the vectors are coplanar. If not, the system is inconsistent and the vectors are non-coplanar.

### Example

Are the vectors `[-1,2,3]`, `[4,1,-2]`, and `[-14,-1,16]` coplanar?

First, we write the linear combination equation:

    `[-14,-1,16] = a[-1,2,3] + b[4,1,-2]`.

That gives us the three equations

    `-14=-a+4b`, `-1=2a+b`, `16=3a-2b`.

Solving the system defined by the first two equations tells us that

    `a = 10/9` and `b = -29/9`.

If we substitute those values into the third equation, we get

    `"LS" = 16` and `"RS" = 88/9`.

Since `"LS"!="RS"`, the system is inconsistent and therefore the vectors `[-1,2,3]`, `[4,1,-2]`, and `[-14,-1,16]` are non-coplanar.

## Dot product

The dot product, also known as the _scalar product_ or _inner product_, is an operation that takes two vectors and produces a scalar. Geometrically, we define the dot product of `vec u` and `vec v` with

    `vec u * vec v = |vec u| |vec v| cos theta`,

where `theta` is the angle between the vectors in standard position. The dot product has a few useful properties that arise from the cosine term:

|         If          |         Then         |   Therefore   |
| :-----------------: | :------------------: | :-----------: |
| `vec u * vec v > 0` |  `0º < theta < 90º`  |     acute     |
| `vec u * vec v < 0` | `90º < theta < 180º` |    obtuse     |
| `vec u * vec v = 0` |    `theta = 90º`     | perpendicular |

Algebraically, we define the dot product in `RR^3` with

    `[u_1,u_2,u_3] * [v_1,v_2,v_3] = u_1v_1 + u_2v_2 + u_3v_3`.

Essentially, we get the product of the first components, of the second components, etc., and then take the sum of the products. It works in the same way with `RR^2` and any other Euclidean space.

The dot product has a few properties that are worth committing to memory. First, the dot product of a vector with itself is equivalent to the square of its magnitude:

    `vec a * vec a = |vec a|^2`.

The dot product is commutative -- order doesn't matter:

    `vec a * vec b = vec b * vec a`.

It is distributive over addition:

    `vec a * (vec b + vec c) = vec a * vec b + vec a * vec c`.

It is associative over scalar multiplication:

    `kvec a * vec b = k(vec a * vec b) = vec a * kvec b`.

Finally, any dot product with the zero vector produces the _scalar_ zero:

    `vec a * vec 0 = 0`.

## Cross product

The cross product is an operation that takes two nonzero vectors and produces a _vector_ (not a scalar) perpendicular to both of them. Geometrically, we define the magnitude of the cross product with

    `|vec u xx vec v| = |vec u| |vec v| sin theta`,

where `theta` is the angle between the vectors in standard position. To find the direction of the vector, we use the _right-hand rule_: point in the direction of `vec u` with your fingers, and then curl them (naturally, not backwards) towards the direction of `vec v`. Your thumb will then point in the direction of `vec u xx vec v`.

Algebraically, we define the cross product in `RR^3` with

    `[u_1,u_2,u_3] xx [v_1,v_2,v_3] = [w_1,w_2,w_3]`,

where the components are given by

| Component |       Value       | Remember |
| :-------: | :---------------: | :------: |
|   `w_1`   | `u_2v_3 - u_3v_2` |   2, 3   |
|   `w_2`   | `u_3v_1 - u_1v_3` |   3, 1   |
|   `w_3`   | `u_1v_2 - u_2v_1` |   1, 2   |

The pattern shouldn't be too hard to see. Each part has a product of two terms, and then you just subtract the same two terms with the subscripts swapped. You essentially need to remember the sequence 233112, and even that has some repetition. You do not need to remember anything for `RR^2`, since the cross product exists only in `RR^3` and in `RR^7`.

Like the dot product, the cross product has some important properties. First, it can produce the zero vector:

    `vec v xx vec 0 = vec 0` and `vec v xx vec v = vec 0`.

Unlike the dot product, is is anticommutative -- order matters:

    `vec u xx vec v = -(vec u xx vec v)`.

It is distributive over addition:

    `vec u xx (vec v + vec w) = vec u xx vec v + vec u xx vec w`.

It is associative over scalar multiplication:

    `kvec u xx vec v = k(vec u xx vec v) = vec u xx kvec v`.

We can use the dot product and cross product together to make a test for coplanarity. Here it is: vectors `vec u`, `vec v`, and `vec w` are coplanar if and only if

    `vec u * vec v xx vec w = 0`.

It does not matter which vectors are placed where in that equation. As long as crossing two of the vectors and dotting the result with the third yields zero, they are coplanar. Why does this work? When we cross `vec v` and `vec w`, we get a vector perpendicular to both of them. If `vec u` is on the same plane, it should _also_ be perpendicular to the cross product. We test for this using the dot product -- two vectors are perpendicular if their dot product is zero.

> The notation `vec u * vec v xx vec w` is unambiguous; it is the same as `vec u * (vec v xx vec w)`. If you dotted first, you would then be crossing a scalar with a vector, and that is not possible.

## Scalar & vector projection

Resolving a vector into its _x_ and _y_ components is easy, especially if the vector is already written in `RR^2` component form. However, sometimes we want to _project_ the vector onto a different axis -- we can use another vector to describe this axis. When I talk about the _scalar projection_ and the _vector projection_ of `vec a` on `vec b`, I mean this:

![Geometric interpretation of scalar projection (left) and vector projection (right)](projection.svg)

Notice the subscript notation: the value of `vec a_b` is the vector projection of `vec a` on `vec b`, and its magnitude is the scalar projection. To calculate the scalar projection, we can use one of our new friends, the dot product:

    `|vec a_b| = vec a * hat b = |vec a| cos theta`.

If we know `theta`, then this is easy. However, sometimes we either don't know it or we would rather avoid rounding off trig ratios. In those cases, we should use the middle part of the equation above. And if we don't know `hat b`, we  can get it by normalizing `vec b`:

    `|vec a_b| = (vec a * vec b)/|vec b|`.

What about the vector projection? That's easy -- we just get the scalar projection and point it in the direction of `hat b`:

    `vec a_b = |vec a_b| hat b = (vec a * hat b) hat b = (|vec a| cos theta)hat b`.

Once again, we can normalize `vec b` at the same time if we want:

    `vec a_b = ((vec a * vec b)/|vec b|)(vec b/|vec b|) = (vec a * vec b)/|vec b|^2 vec b`.

The special cases of the _x_ and _y_ axes still work with all of this. Say I want to project `vec u` onto the _x_ axis:

    `vec u * hat i = [u_1,u_2] * [1,0] = u_1`.

### Example

A race starts at the origin and goes in a straight line until the end in the direction of `vec u = [2,3]`. A runner started on the path but ended up straying to the point defined by `vec(OP) = [6,7]` in kilometres. If she goes back to the path via the shortest route, how far along the race will she be?

If she takes the shortest route, that means her direction of travel will intersect with the path at 90º. To find her progress along the actual race, we want to project her current position onto the path:

    `vec(OP)_u = vec(OP) * hat u = (vec(OP) * vec u)/|vec u|`.

Substituting for the known values give us

    `vec(OP)_u = ([6,7] * [2,3])/sqrt(2^2+3^2) = (6*2+7*3)/sqrt(13) = 33/sqrt(13) ~~ 9.15`,

therefore she will be about 9.15 km into the race.

## Direction cosines

We can find the angle between two nonzero vectors using the dot product:

    `vec u * vec v = |vec u| |vec v| cos theta qquad => qquad cos theta = (vec u * vec v)/(|vec u| |vec v|)`.

Often, we want to determine the angle that a certain vector makes with the coordinate axes. To do this, we just put `hat i`, `hat j`, and `hat k` in the place of `vec v` one at a time and solve for the angle. Since this operation is so common, it is worthwhile to work out specific equations.

Let's start with the _x_-axis. If we have a vector `vec u` in component form, then

    `cos theta = (vec u * hat i)/(|vec u| |hat i|) = ([u_1,u_2,u_3] * [1,0,0])/(|vec u|(1)) = u_1/|vec u|`.

When we dot `vec u` with one of the standard basis vectors, we are effectively _choosing_ one of its components. Simplifying the equation for the other two axes is just as easy. To avoid confusion, we use three different Greek letters to represent the three angles:

| Axis  |  Basis  |   Cosine    |     Value      |
| :---: | :-----: | :---------: | :------------: |
|  _x_  | `hat i` | `cos alpha` | `u_1//|vec u|` |
|  _y_  | `hat j` | `cos beta`  | `u_2//|vec u|` |
|  _z_  | `hat k` | `cos gamma` | `u_3//|vec u|` |

## Geometric applications

The area of a parallelogram with adjacent sides `vec u` and `vec v` is

    `A_"llgram" = |vec u xx vec v|`.

A triangle is really just half of a parallelogram, so the area of a triangle with sides `vec u` and `vec v` (the third side doesn't matter) is

    `A_"tri" = 1/2|vec u xx vec v|`.

The volume of a parallelepiped (a solid body of which each face is a parallelogram) with edges `vec u`, `vec v`, and `vec w` sharing a vertex is

    `V_"llpiped" = |vec u xx vec v * vec w|`.

The order of the three vectors does not matter. Like always, the cross product must be evaluated before the dot product. The absolute value bars here actually mean absolute value, not magnitude, since the dot product produces a scalar. This value is sometimes negative, but volume must be nonnegative. Notice the similarity to the coplanarity test: if three vectors form a parallelepiped of zero volume, they are coplanar.

> The form `vec u xx vec v * vec w` is called the scalar triple product. It turns up in quite a few seemingly unrelated places in this unit.

## Equations of lines

There are many ways of representing a mathematical line. You are probably most familiar with _point-y-intercept_ form,

    `y = mx + b`.

That equation is useful when you know the slope and the _y_-intercept. Also, that form is easy to express in function notation, like `f(x) = mx + b`, and it fits nicely with the other families of functions. Another way of describing a line is  with _standard_ form:

    `ax + by + c = 0`.

This form gives you both the intercepts, but most of the time it is inconvenient. Yet another type of line equation is _point-slope_ form:

    `y - y_0 = m(x - x_0)`.

Not surprisingly, this is useful when you know a point and the slope.

Those three equations have something in common: they relate _x_ to _y_. If you solve for _y_ (already done for you in point-y-intercept form), you can choose an _x_-value and the equation will tell you the _y_-value. This isn't the only way of doing it, as we will see. In particular, it doesn't scale well to three-space; our new method will.

We are going to explore another triplet of line equations, starting with the _vector equation_ of the line. To describe a line with vectors, we need an initial point that falls on the line -- we'll call it point A. From point A, we need a vector that tells us which way the line goes -- we'll call this `vec m`. Here's what this might look like:

![A line defined by an initial point and a direction vector](vector-line.svg)

To get from point A to some point P elsewhere on the line, all we have to do is add a scalar multiple of the direction vector:

    `vec(OP) = vec(OA) + tvec m`.

The value of _t_ controls how far along the line we go from A. If it is negative, we go in the opposite direction. Instead of using origin-to-point notation, we usually use `vec r`, which is implied to be a position vector (the _r_ stands for radius, and a position vector is a radius from the origin). Here is the conventional way of writing the vector equation of the line:

    `vec r = vec r_0 + tvec m`, `t in RR`.

Suppose we substitute for vectors in `RR^2` with variables as components:

    `[x,y] = [x_0,y_0] + t[a,b]`, `t in RR`.

Breaking this up into two equations gives us the _parametric_ equations of a line (two equations because there are two components):

    `x = x_0 + ta` and `y = y_0 + tb`, `t in RR`.

There is an important difference between this form and the earlier ones. The other equations relate _x_ and _y_ such that we can choose one an obtain the other. With the parametric equations, we choose a value for the free parameter _t_. We plug this into the equations and they tell us _x_ and _y_. Instead of _x_ being related to _y_, they are both independently controlled by _t_.

If we solve the parametric equations for _t_, we get the _symmetric_ form:

    `t = (x - x_0)/a = (y - y_0)/b`.

This form makes it easy to test if a particular point falls on the line: just evaluate both sides and see if they produce the same _t_-value.

## Line--line intersection

Consider the two lines defined by

    `vec r = vec r_0 + tvec m` and `vec s = vec s_0 + pvec n`.

These lines may or may not intersect. In `RR^2`, their are three cases:

collinear (`oo`)
:   The two lines are equal. Formally, `AA t\ EE p` such that `vec r = vec s`. This implies that `vec m = kvec n`, meaning the direction vectors are scalar multiples of each other. The initial points need not be equal, but each must lie on the other line: there must exist values of _t_ and _s_ such that `vec s_0 = vec r` and `vec r_0 = vec s`. There are `oo` points of intersection.

parallel (0)
:   The two lines are parallel, so `vec m = kvec n`, but they are not collinear. For all combinations of values of _t_ and _p_, `vec r != vec s`. The lines never intersect.

nonparallel (1)
:   All other systems fall into this category. The lines are nonparallel, so `vec m != kvec n`. There is exactly one point of intersection.

![Collinear, parallel, and nonparallel pairs of lines in two-space](line-intersection.svg)

In `RR^3`, there is one more possibility: _skew lines_. These are lines that are nonparallel but do not intersect. To see how this is possible, simply point your arms in different directions. Unless you deliberately put them on the same plane, they will not intersect even when extended to infinity.

Finding the point of intersection for two lines in two-space in `y = mx + b` form is easy: all you have to do is solve a linear system. With these new types of equations, it's a bit more work. To find the point(s) of intersection of two lines in `RR^3`, follow these steps:

1. Express both lines with parametric equations using _different variables_ for the free parameters, such as _t_ and _p_.
2. Set the right-hand sides of the _x_ equations equal. Do the same for _y_ and _z_. Now you have a system of three equations.
3. Choose two of the equations and solve the system for _t_ and _p_. You will be unable to do this if the lines are collinear or parallel.
4. Perform an LS/RS verification of the as yet unused equation with the values of _t_ and _p_ that you just found.
5. If `"LS" = "RS"`, the system is consistent. If not, the system is inconsistent and the line are skew.
6. If the system was consistent, substitute the value of _t_ or _p_  into the parametric equations of its line to find the point of intersection.
7. For extra verification, substitute the other free parameter into the other line equations and make sure you get the same point.

## Equations of planes

A plane is a flat, two-dimensional surface that extends to infinity. You can have a plane in `RR^2`, but we don't talk about that often because it's not very interesting. There is only one plane in two-space, the _xy_ plane. However, in three-space, there are `oo` planes.

Consider a point, defined by a tuple of coordinates. The point has zero dimensions because there is only _one_ point. Now consider a line -- a line is just a set of `oo` points that happen to lie in a straight line (yes, this is a circular definition). The line is one-dimensional and has one degree of freedom; it is controlled by the free parameter _t_ in

    `vec r = vec r_0 + tvec m`, `t in RR`.

Now consider a plane. A plane another set of `oo` points, and these ones all lie on a flat surface. You could also think of it as `oo` parallel lines. The plane is two-dimensional and has two degrees of freedom; it is controlled by the free parameters _s_ and _t_ in

    `vec r = vec r_0 + svec u + tvec v`, `s,t in RR`.

That's the vector equation of a plane. As long as `vec u` and `vec v` are non-collinear, this allows `vec r` to move around anywhere on the plane by choosing different values for the free parameters.

We are trying to generalize ideas about sets of points in different dimensions. It is easier to see the natural progression of adding degrees of freedom with a drawing -- but don't forget that these are really two-dimensional representations:

![Geometric figures that can be represented in zero, one, two, and three dimensions](dimensions.svg)

The arrows on the line indicates that it extends to infinity in both directions. You may be tempted to think of the plane as a quadrilateral, but it is most definitely not. The plane doesn't really have edges -- it's just hard to draw it without them. The same thing goes for the solid: it's not a cube. It extends to infinity, so there is only one solid in three-space: the _xyz_ solid.

As I mentioned before, there is a single plane in `RR^2` but many planes in `RR^3`. We can generalize this idea to all the geometrical figures (sets of points) that we've seen so far:

| Dimensions | Space  | Many  |    One     |
| :--------: | :----: | :---: | :--------: |
|     0      | `RR^0` |  ---  |   point    |
|     1      | `RR^1` | point |    line    |
|     2      | `RR^2` | line  |   plane    |
|     3      | `RR^3` | plane |   solid    |
|     4      | `RR^4` | solid | hypersolid |

Let's look at the equation of the plane again:

    `vec r = vec r_0 + svec u + tvec v`, `s,t in RR`.

We can substitute components like we did for the equation of the line:

    `[x,y,z] = [x_0,y_0,z_0] + s[u_1,u_2,u_3] + t[v_1,v_2,v_3]`.

From this, we can get the parametric equations of the plane:

    `x = x_0 + su_1 + tv_1`, `y = y_0 + su_2 + tv_2`, `z = z_0 + su_3 + tv_3`.

Another way to describe a plan is with a point and a _normal vector_. The normal vector is perpendicular to the plane, and we get it by crossing the plane's two direction vectors:

    `vec n = vec u xx vec v`.

Given this normal vector and a position vector `vec r_0`, every point `vec r` on the plane satisfies the equation

    `vec n * (vec r - vec r_0) = 0`.

This works because the dot product of perpendicular vectors is always zero, and the vector `vec r - vec r_0` is parallel to the plane. You can use points instead of position vectors if you wish: `vec n * vec(AP) = 0`, where A is the initial point and P represents all other points on the plane. Suppose we replace the vectors in that equation with components:

    `[a,b,c] * ([x,y,z] - [x_0,y_0,z_0]) = 0`.

We can simplify this to give us

    `a(x-x_0) + b(y-y_0) + c(z-z_0) = 0`.

When we actually have numbers for `vec  r_0`, we usually write this as

    `ax + by + cz + d = 0`,

where `d = -(ax_0 + by_0 + cz_0)`. This is called the _standard form_ of the equation of a plane. It is just like the standard form of a line in `RR^2`, but with an added term for the third dimension. The standard form of a plane is also useful because the normal vector is in plain sight. Given a normal vector `vec n = [a,b,c]` and a point P, we can jump straight to the standard form equation by substituting the components of `vec n` into the equation above. We still don't know _d_, so we need to substitute in the point and solve for it.

You'll notice that the value of _d_ and the normal vector are independent. Since _d_ doesn't affect the direction of the plane, it must affect something else. If we set it to zero, the plane passes through the origin. If we set it to one, the shortest distance between the origin and the plane is one. The value of _d_ effectively moves the plane away from the origin in the direction of the normal vector.

The normal vector is useful for another reason: we can use it to find the angle between two planes. If we have planes with normal vectors `vec n_1` and `vec n_2`, the acute angle separating them is given by

    `theta_"acute" = cos^-1((|vec n_1 * vec n_2|)/(|vec n_1| |vec n_2|))`.

> The vertical bars in the numerator of this equation mean absolute value. In the bottom, they mean vector magnitude. Don't get confused and think that the dot product should produce a vector instead of a scalar. (For this reason, it is more common to use the notation `norm(vec v)` for the norm and reserve `|a|` for the absolute value.)

## Line--plane intersection

Consider the line and plane defined by

    `vec r_"L" = vec a + tvec m` and `vec r_Pi = vec b + rvec u + svec v`.

They may or may not intersect. In `RR^3`, there are three cases:

coplanar (`oo`)
:   The line lies on the plane. Formally, `AA t\ EE r EE s` such that `vec r_"L" = vec r_Pi`. This implies that `vec m`, `vec u`, and `vec v` are coplanar, therefore `vec m * vec u xx vec v = 0`, _and_ that the position `vec a` lies on the plane. There are `oo` points of intersection.

parallel (0)
:   The line and the plane are parallel, so the three direction vectors are coplanar as before, but the position vector `vec a` does _not_ lie on the plane. For all combinations of values of _t_, _r_, and _s_, we have `vec r_"L" != vec r_Pi`. There are zero points of intersection.

nonparallel (1)
:   All other systems fall into this category. The line and the plane are not parallel, so the three direction vectors are not coplanar. There is exactly one point of intersection.

It is possible to find the point of intersection of a line and a plane this way by converting to parametric form, because you will have three variables (free parameters) and three equations. But this is a lot of work -- there is an easier way. Two easier ways, in fact.

The first method works uses the parametric equations of a line and the standard equation of a plane. Given the latter,

    `ax + by + cz + d = 0`,

you can substitute the values of _x_, _y_, and _z_ for the right-hand sides of the parametric equations of the line:

    `a(x_0 + tm_1) + b(y_0+tm_2) + c(z_0+tm_3) + d = 0`.

You can then solve for _t_. If you get a value for _t_, the system is nonparallel, and the single point of intersection is found by evaluating the parametric equations of the line at _t_. If all the _t_ terms and constant terms cancel and you are left with `0=0`, then the value of _t_ is irrelevant (the equation holds for all values `t in RR`) and the system is coplanar -- there are `oo` points of intersection. If only the _t_ terms cancel and you are left with `0t=a` where `a != 0`, then there is no solution and the system is parallel but not coplanar (zero points of intersection).

The second method uses the vector equation of a line and the point-normal equation of a plane. Given the line and the plane defined by

    `vec r_"L" = vec a + tvec m` and `vec n * (vec r_Pi - vec b) = 0`,

we can substitute the first into the second because we are looking for the point of intersection, which occurs when `vec r_"L" = vec r_Pi`:

    `vec n * (vec a + tvec m - vec b) = 0`.

Rearranging this to solve for _t_ gives us

    `t = ((vec b - vec a) * vec n)/(vec n * vec m)`.

If this equation gives you a value for _t_, there is one point of intersection. If you get the indeterminate case, zero over zero, there are `oo` points of intersection. And if the numerator isn't zero, then there are none. It isn't hard to see why: if `vec m` is perpendicular to the normal of the plane, then it is _parallel_ to the plane; and if `vec b - vec a` is parallel to the plane, then the position vector `vec a` lies on the plane.

Sometimes, in addition to the point of intersection, we want to find the _angle_ of intersection. As with the angle between two planes, we only care about the acute angle. Let `phi` represent the angle between `vec m` and `vec n`, and let `theta` represent the angle of intersection. They are complementary: `phi + theta = 90º`. Since `cos phi = cos(90º-theta) = sin theta`, we can find the angle with

    `theta_"acute" = sin^-1((|vec m * vec n|)/(|vec m| |vec n|))`.

## Plane--plane intersection

Consider the two planes defined by

    `vec n_A * (vec r_A - vec r_(0,A)) = 0` and `vec n_B * (vec r_B - vec r_(0,B)) = 0`.

They may or may not intersect. In `RR^3`, there are three cases:

coplanar (`oo`)
:   The two planes are equal. This implies that `vec n_A = kvec n_B`, meaning the normal vectors are scalar multiples of each other. It also implies that `vec n * (vec r_(0,A) - vec r_(0,B)) = 0`, where `vec n` is either of the normal vectors (a vector joining the two initial points is parallel to the plane) . There are `oo` points of intersection.

parallel (0)
:   The two planes are parallel, so `vec n_A = kvec n_B`, but they are not coplanar. Unlike before, `vec n * (vec r_(0,A) - vec r_(0,B)) != 0`. The planes never intersect.

nonparallel (`oo`)
:   All other systems fall into this category. The planes are nonparallel, so `vec n_A != kvec n_B`. There is a _line_ of intersection -- not just a point.

This case analysis is exactly analogous to the intersection of two lines in two-space. We can also derive the rules for the intersection of _three_ planes from this. First, intersection two of the planes -- any two. If they are coplanar, then it is just a two-plane intersection problem (ignore the duplicate). If they have no intersections, neither do the three. And if there is a _line_ of intersection, find the [line--plane intersection](lineplane-intersection.html) between this line and the third plane. Expanding this third case into the three line--plane cases leaves use with _five_ cases for the intersection of three planes: all the same, all parallel, two parallel, one shared line, and one shared point.

To find the _line of intersection_ for two nonparallel planes, we need a direction vector and a point. If the planes have normal vectors `vec n_1` and `vec n_2`, then the direction vector of the line is

    `vec m = vec n_1 xx vec n_2`.

Next, take the two plane equations and use elimination to produce a third equation with only two variables. Choose a value for one of these (for example, let `x=0`) and solve for the other. Now take both values and plug them into one of the original plane equations to get the third coordinate. The resulting point should satisfy both plane equations; you can now write the equation of the line in vector form.

## Shortest distance

Given a point A and a line `vec r = vec r_0 + tvec m`, we can find the shortest distance from the point to the line easily with

    `d = (|vec(AB) xx vec m|)/(|vec m|)`.

Given two parallel planes with a normal vector `vec n` (it doesn't matter which plane you take it from) and containing points A and B, we can find the shortest distance between them using the [scalar projection](scalar-vector-projection.html):

    `d = |vec(AB)_n| = |vec(AB) * hat n| = (|vec(AB) * vec n|)/(|vec n|)`.

(Note that nonparallel planes intersect, so the shortest distance is zero.) We can also use this equation for skew lines, where one line contains A and the other has B. We calculate `vec n` by crossing their direction vectors:

    `vec n = vec m_1 xx vec m_2`.

## Matrices & linear systems

A _matrix_ (plural matrices) is a rectangular array of numbers arranged in rows and columns. They have a variety of uses, but for us they are just a convenient way of staying organized while solving linear systems. Solving a system of two linear equations by elimination is easy, but it becomes much harder once you have four or five equations. Consider this linear system:

    `x + 3y = 4` and `-2x + 3y = 10`.

The first step is to move the constant term to the right-hand side. In this case, it's already done. Now, we take the coefficients and we put them into an _augmented matrix_:

    `[(1,3,|,4),(-2,3,|,10)]`.

The first two columns represent the _x_ and _y_ coefficients respectively; the last column, separated by a bar, represents the right-hand sides of the equations. To solve the system, we will use _Gauss-Jordan elimination_, which is a method of transforming the matrix to _reduced row-echelon form_. We want the columns left of the bar to have a diagonal of ones and zeros everywhere else. For example, if we were solving a linear system of four equations, the end result would look like this:

    `[(1,0,0,0,|,x),(0,1,0,0,|,y),(0,0,1,0,|,z),(0,0,0,1,|,w)]`.

The values of _x_, _y_, _z_, and _w_ would be the solution. To perform Gauss-Jordan elimination, we use elementary operations until we get to the reduced row-echelon form. There are just three operations -- we can

- interchange any two rows;
- multiply one row by a nonzero scalar;
- add a multiple of one row to another.

### Example

Let's return to our original example. We had

    `[(1,3,|,4),(-2,3,|,10)]`.

We can subtract the second row from the first to get

    `[(3,0,|,-6),(-2,3,|,10)]`.

We can add two-thirds of the first row to the second to get

    `[(3,0,|,-6),(0,3,|,6)]`.

Finally, we can divide both rows by three:

    `[(1,0,|,-2),(0,1,|,2)]`.

The values `x=-2` and `y=2` are indeed the solution to this system.

## Systems of three planes

There are five ways that three distinct planes can relate to one another:

| type  | intersection |       condition       |
| :---: | :----------: | :-------------------: |
|   I   |     none     | all normals collinear |
|  II   |   2 lines    | two normals collinear |
|  III  |   3 lines    | all normals coplanar  |
|  IV   |    1 line    | all normals coplanar  |
|   V   |   1 point    | normals not coplanar  |

Strictly speaking, systems of type II and III really have no intersection because the _three planes_ do not share any points at all. It might seem inconsistent to talk about these lines of intersection between two of the three planes, since we ignore them in type V (which has many such lines in addition to the point), but it is just for the purpose of identifying the type.

When we say two normals `vec n_1` and `vec n_2` are collinear, we mean `vec n_1 = kvec n_2`. If all three are collinear, as in type I, then we must have `vec n_1 = kvec n_2 = cvec n_3`, where _k_ and _c_ are constants. Recall that three vectors are coplanar if and only if `vec n_1 * vec n_2 xx vec n_3 = 0`, and the order of the vectors does not matter.

Here is how we should go about determining the type of a system:

1. Are all three normals collinear? _Type I_.
2. Are two normals collinear? _Type II_.
3. Attempt to solve the system using [Gauss-Jordan elimination](matrices-linear-systems.html).
4. Can you get to the reduced row-echelon form? _Type V_.
5. Do you end up with a row of three zeros followed by a nonzero value in the right column (an impossible equation)? _Type III_.
6. You must eliminate an entire row (four zeros). _Type IV_.

In the case of type IV, you can find the equation of the line of intersection by abandoning the matrix once you get a row zeroed out and rewrite the other two rows as equations. One variable will be in both equations, and the other two will not. Suppose this variable is _x_. Write "let `x=t`," then replace _x_ with _t_ in the equations and solve for _y_ and _z_. You now have the parametric equations of a line. Its direction should be collinear with the result of crossing any two of the normal vectors.
