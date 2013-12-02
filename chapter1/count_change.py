#!/usr/bin/env python2

"""Count the number of ways to make change for a dollar.

Algorithm from SICP 1.2.2 ("Tree Recursion").

"""

# Include dollar and half-dollar coins.
COINS = (100, 50, 25, 10, 5, 1)


def count_change(cents, coins=COINS):
    if cents < 0 or not coins:
        return 0
    if cents == 0:
        return 1
    return count_change(cents, coins=coins[1:]) + count_change(cents - coins[0], coins)


if __name__ == '__main__':
    # With the one-dollar coin, should have 293 ways to change a dollar.
    ways = count_change(100)
    assert ways == 293, "The change-counting program has a bug!"
    print "There are %s ways to change a dollar." % ways
