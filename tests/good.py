# These are some unhelpful comments.

# These are unused imports that should yield warnings
import random
from typing import TypedDict


class State(TypedDict):
    mu: float


random.gauss(mu := 5, sd := 3)


class Bob:
    def __init__(self, x):
        self.x = x


bob = Bob(111)

x: bool = True


def process(state: State) -> float:
    # This should yield never used warning
    return state["mu"] * 100


state: State = [
    {"mu": 1.0},
]

for i, s in enumerate(state):
    out = process(s)
    print(f"{i}: {out}")
