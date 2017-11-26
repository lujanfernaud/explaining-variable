# Upcase Refactoring Trail

## Explaining Variable

Refactoring exercise using the [Extract Variable](https://refactoring.com/catalog/extractVariable.html) refactoring for the [Upcase Refactoring Trail](https://thoughtbot.com/upcase/refactoring).

### Extract Variable

> Put the result of the expression, or parts of the expression, in a temporary variable with a name that explains the purpose. -- Martin Fowler

#### Before

```ruby
def total
  amount + (amount * TAX) - (amount * (discount_percentage / 100.0)) + (amount * (tip_percentage / 100.0))
end
```

#### After

```ruby
def total
  tax      = amount * TAX
  discount = amount * (discount_percentage / 100.0)
  tip      = amount * (tip_percentage / 100.0)

  amount + tax - discount + tip
end
```
