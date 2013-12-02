Alyssa's square root procedure recurs infinitely.

Her `new-if` procedure uses applicative-order evaluation, while the built-in
`if` is a special form that evaluates only one of the consequent and the
alternative.  `new-if` evaluates both the consequent and the alternative, so
even if the current guess is good enough, the `sqrt-iter` procedure calls
itself.
