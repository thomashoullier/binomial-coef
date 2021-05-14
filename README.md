# Binomial coefficients
`binomial-coef` implements the computation of binomial coefficients [1].
Also known as *n choose k*, *nck*, *combination*.

## Usage
### nck
`nck` computes a single, exact, binomial coefficient using the multiplicative
formula. The result is exact, but may take some time to be computed.

```common-lisp
(binomial-coef:nck n k) ; => binomial coefficient (n, k)
```

## Dependencies
* `binomial-coef`:
  * [cl-factorial](https://github.com/thomashoullier/cl-factorial)
* `binomial-coef/test`:
  * [rove](https://github.com/fukamachi/rove)

## Test
Launch tests with:

```common-lisp
(asdf:test-system "binomial-coef")
```

## References
1. https://en.wikipedia.org/wiki/Binomial_coefficient
