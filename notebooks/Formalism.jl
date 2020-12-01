### A Pluto.jl notebook ###
# v0.12.15

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : missing
        el
    end
end

# ╔═╡ 4f2e8390-33f3-11eb-3df3-17f55997a507
using Plots

# ╔═╡ 282f2ff0-33f4-11eb-08f9-fd5e0a18014e
using PlutoUI

# ╔═╡ 2a872aae-33e9-11eb-09b2-5b2f2f54d419
md"""
## Individual Economics Formalism
"""

# ╔═╡ 847be240-33e9-11eb-3a0c-05989d6aa48e
md"""
This is how text rendering works.
"""

# ╔═╡ a470e230-33e9-11eb-1184-11506d5c302e
md"""This is how math rendering works.
	\begin{equation} 
	i\hbar\frac{\partial \psi}{\partial t} = \hat H \psi
	\end{equation}
"""

# ╔═╡ c40b3f00-33e9-11eb-3916-dff368cf3fbc
md"""
Let's take some notes.

>1. Initial conditions: Population, resources.
>2. Evolutionary traits: Population, resources, trade, demand and supply, currency.
"""

# ╔═╡ da9645d0-33e9-11eb-3e56-b58c1973201a
md"""
Sample codeblock for $Demand :: Person \times Person \to \mathbb R$.
```
demand(alice, bob) = ???
```
"""

# ╔═╡ 85143b90-33f2-11eb-01ed-9f1d8bf48f0b
abstract type AbstractGovt end

# ╔═╡ 9c733430-33f2-11eb-28be-b95ed5d9af83
struct Person <: AbstractGovt
	resources :: Array{Any}
end

# ╔═╡ c4ce2ac0-33f2-11eb-2e21-c32819a5ee14
lisa = Person(["Johnny", "Mark", "Mother" => "Breast cancer", 42])

# ╔═╡ a9bb3560-33f3-11eb-0cac-5bc68c3727a3
cardioid(a, t) = a * (1 - cos(t)) .* (cos(t), sin(t)) 

# ╔═╡ b022f592-33f4-11eb-18a7-b3f1f2927634
md"""
Vary the $\theta$-slider to draw the cardioid $r = a(1 - \cos \theta),~ 0 \leq \theta \leq 2\pi$.
"""

# ╔═╡ 25693220-33f4-11eb-1cfc-f5a11b764c1a
begin
	θ_slider = @bind θ Slider(0.:1e-3:2π)
	md"""	
	θ: $(θ_slider)
	"""
end

# ╔═╡ 54510f00-33f3-11eb-0a6f-43bda39d656f
plot(cardioid.(1, 0:1e-3:θ))

# ╔═╡ 98695ad0-33e9-11eb-2dec-65f3e590b654
hint(text) = Markdown.MD(Markdown.Admonition("hint", "Hint", [text]));

# ╔═╡ 9419fde0-33e9-11eb-0127-c9fd0b722bb5
hint(md"""
	Click on the eye on the left to show the "code" that renders this box.
	""")

# ╔═╡ Cell order:
# ╟─2a872aae-33e9-11eb-09b2-5b2f2f54d419
# ╠═847be240-33e9-11eb-3a0c-05989d6aa48e
# ╠═a470e230-33e9-11eb-1184-11506d5c302e
# ╠═c40b3f00-33e9-11eb-3916-dff368cf3fbc
# ╠═da9645d0-33e9-11eb-3e56-b58c1973201a
# ╟─9419fde0-33e9-11eb-0127-c9fd0b722bb5
# ╠═85143b90-33f2-11eb-01ed-9f1d8bf48f0b
# ╠═9c733430-33f2-11eb-28be-b95ed5d9af83
# ╠═c4ce2ac0-33f2-11eb-2e21-c32819a5ee14
# ╠═4f2e8390-33f3-11eb-3df3-17f55997a507
# ╠═282f2ff0-33f4-11eb-08f9-fd5e0a18014e
# ╠═a9bb3560-33f3-11eb-0cac-5bc68c3727a3
# ╟─b022f592-33f4-11eb-18a7-b3f1f2927634
# ╟─25693220-33f4-11eb-1cfc-f5a11b764c1a
# ╟─54510f00-33f3-11eb-0a6f-43bda39d656f
# ╟─98695ad0-33e9-11eb-2dec-65f3e590b654
