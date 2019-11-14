# LRESolve
Solving Systems of Linear Rational Expectations Equations in Julia

## Installation

## Methods

### Sims (2001)
[Sims (2001)](https://ideas.repec.org/c/dge/qmrbcd/11.html) solves LRE systems of the form

![image](https://normannrion.fr/wp-content/uploads/2019/11/sims_eq.png)

where 

- x is the vector of endogenous variables
- z is the vector of exogenous shocks
- η is the vector of expectation errors

The solution verifies

![image](https://normannrion.fr/wp-content/uploads/2019/11/sims_sol.png)

To solve a LRE system using this method
1. Define the model through the `ModelSims` structure. The syntax is typically

```julia
M = ModelSims(Γ₀,Γ₁,C,Ψ,Π)
```

2. Call the `solve_sims` method over the newly created model
```julia
Θ, Θ₀, Θ₁ = solve_sims(M)
```
