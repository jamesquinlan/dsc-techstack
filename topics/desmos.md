# Desmos Calculators

Desmos provides four calculators and a geometry tools.  The calculators are:

1. Graphing Calculator
2. Scientific Calculator
3. Four Function Calculator
4. Matrix Calculator

In this brief article we will look at some common capabilities of the Graphing Calculator.




## Mathematical Functions

Entering a mathematical function uses familiar notation, 
```
f(x) = sin(x)
```

Rational expression, exponents, squares and absolute values are entered using `/`, `^`, `sqrt`, and `| |` respectively.  Fraction mode can also be entered
using the LaTeX `frac` (without the backslash).  For example, an expression combining all of those would be entered as:

```
f(x) = sqrt x / |x^2 - 5x+6|
```

> Note: the right arrow key is used to escape the radical symbol, current fraction, and exponent.  That is, once in exponent mode, the right arrow key
is needed to come out of the exponent level.
  



## Slider Parameters

Parameters can be included in mathematical expressions and sliders for each parameter will be automatically created.  
For example, the general quadratic equation, `f(x) = ax^2 + bx + c` can be entered and the user will be prompted to add sliders
for each (or all) parameter values, `a`, `b`, and `c`.  The bounds and step size for these parameters can be adjusted (default values are
-10 to 10 and 0.1, respectively).  This feature can be used for model tuning, data fitting, or simply exploring the effects on the 
functions behavior.  



## Piecewise Functions

The general syntax for a domain restricted functions is: `{a < x <b : f(x)}`, where the domain and range are separated by a colon.    
This can be extended to include several restrictions, which are separated by commas, such as
```
{a < x < b : f(x), c < x < d : g(x)}
```




## Table Data

One of the easiest ways to enter tabular data is to copy and paste from a text file.  Tabular data can also be entered by hand.




## Inequalities

Graphing inequalities can be accomplished using `y <= f(x)`.  For example, 
```
y <= 2x - 3
``` 

Similarly for `>=, <` and `>`.  A dashed line will be used by default for strict inequalities.  You can change the shade color, line 
thickness, and opacity of both the line and shading by selecting the colored circle beside the cell.



## Calculus 

### Derivatives

Given a function `f(x)`, `f'(x)` will display the graph of the derivative of `f`.  Furthermore, `f'(c)` where `c` is a constant
will given the numerical derivative (i.e., the approximate value of the derivative at the point `c`).  

### Integrals



### Summations




## Translate to LaTeX

Desmos provide easy translation to LaTeX. After entering formula into Desmos, simply 'copy' (CTRL+C) the expression
and 'paste' (CTRL+V) into your LaTeX document.  For example, after copying the expression `f(x) = sqrt x-1` from a cell in Desmos, the pasted version (in any text editor)
will be `f\left(x\right)\ =\ \sqrt{x-1}`, thus can be used in your favorite LaTeX editor.  



## Assignment Exercises

This assignment covers the basics of using the Desmos graphing calculator to graph various types of equations and functions. It also highlights some of the advanced features of the calculator, such as sliders, zooming, animating, and sharing graphs. Have fun exploring the world of mathematical visualization with Desmos!


1. Open the Desmos graphing calculator in your web browser.

2. Enter a linear equation of your choice (e.g., `y = 2x + 1`) in the input field at the top of the screen and press enter to graph it.

3. Modify the equation by changing the slope or y-intercept and observe how the graph changes.

4. Graph a quadratic equation (e.g., `y = x^2 + 2x + 1`) by entering it into the input field and pressing enter.

5. Use the sliders feature to adjust the coefficients of the quadratic equation and observe how the graph changes.

6. Graph a trigonometric function (e.g., `y = sin(x)`) by entering it into the input field and pressing enter.

7. Use the zoom feature to zoom in and out on the graph of the trigonometric function and observe how the graph changes.

8. Graph a parametric equation (e.g., `x = sin(t), y = cos(t)`) by entering it into the input field and pressing enter.

9. Use the animate feature to animate the graph of the parametric equation and observe how it changes over time.

10. Share your favorite graph from your practice with a classmate and explain why you find it interesting or useful.



