# These are some unhelpful comments.

# NOTE: This is a note
# TODO: This is a todo item
# FIXME: This is a fixme item

# These are unused imports that should yield warnings
import os
import random
import sys
from pathlib import Path
from typing import TypedDict


class State(TypedDict):
    mu: float


random.gauss(mu := 5, sd := 3)

# This should yield an error
func({"A": 1})


class Bob:
    def __init__(self, x):
        self.x = x


bob = Bob(111)

x: bool = True
False


def process(state: State) -> float:
    # This should yield never used warning
    z = 1
    return state["mu"] * 100


state: State = [{"mu": 1.0}]

for i, s in enumerate(state):
    out = process(s)
    print(f"{i}: {out}")
