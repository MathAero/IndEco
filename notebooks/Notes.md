# Individualistic Economics Formalism

Let's take some notes.

1. Initial conditions: Population, resources.
2. Evolutionary traits: Population, resources, trade, demand and supply, currency.

---

### **Local**

Data structures:
```julia=
abstract type AbstractGovernment end

struct Resource <: AbstractGovernment
    name :: String 
end

abstract type Entity <: AbstractGovernment end

struct Person <: Entity
    resources :: Dict{Resource, <: Real} # resource => amount?
    currency :: Real # Money?
end

struct Contract <: Entity
    parties :: Array{Person}
    resources :: Dict{Resource, <: Real} 
    # This addresses shared ownership (resource => ownership?)
    currency :: Real
end
```

How to query ownership?

```julia=
function ownership(bank :: Contract, money :: Resource, johnny :: Person)
    if johnny in bank.parties 
        if money in bank.resources
            bank.resources(money) # bundles saved, but how?
        else
            println("$(johnny) doesn't own this resource.")
    else
        println("$(johnny) isn't in this contract.")
    end
end

# Constraint on ownership
# sum(ownership.(drugs, characters)) == 1
```

$$Demand :: Resource \times Person \times Person \to \mathbb R$$

```julia=
function demand(dress :: Resource, lisa :: Person, johnny :: Person)
    ???
    Profit.
end
```

$$Supply :: Resource \times Person \times Person \to \mathbb R$$

```julia=
function supply(drugs :: Resource, chris_r :: Person, denny :: Person)
    ???
    Jail.
end
```

$$Price :: Resource \times Person \times Person \to \mathbb R$$

```julia=
function price(drugs :: Resource, chris_r :: Person, denny :: Person)
    dem = demand(drugs, chris_r, denny)
    sup = supply(drugs, chris_r, denny)
    
    func(dem, sup)
end

func(demand, supply) = ...
```


---

### **Global**

$$Demand :: Resource \to \mathbb R$$

```julia=
function demand(dress :: Resource)
    ¿ sum(demand(dress, lisa, johnny)
            for lisa in population, johnny in population) ?
end
```

$$Supply :: Resource \to \mathbb R$$

```julia=
function supply(drugs :: Resource)
    ¿ sum(supply(drugs, chris_r, denny)
            for chris_r in population, denny in population) ?
end
```

$$Price :: Resource \to \mathbb R$$

In Julia:
```julia=
function price(football) 
    price(demand(football), supply(football))
end
```

In Haskell:
```haskell=
price x = func (dem x) (sup x) where
    func d s = ...
    dem x = ...
    sup x = ...
```
