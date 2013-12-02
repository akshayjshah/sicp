With applicative-order evaluation, the interpreter will return ``0``. With
normal-order evaluation, the interpreter will recurse forever, since
``p`` is defined recursively without a base case.
