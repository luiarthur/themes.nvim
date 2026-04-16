# These are some unhelpful comments.

# NOTE: This is a note
# TODO: This is a todo item
# FIXME: This is a fixme item

# These are unused imports that should yield warnings
import os
import random
import sys
from pathlib import Path
from typing import List, TypedDict

import numpy as np
from numpy import typing


class State(TypedDict):
    mu: float


random.gauss(mu := 5, sd := 3)

# This should yield an error
func({"A": 1})


class Bob:
    @property
    def y(self):
        return self.x

    def __init__(self, x):
        self.x = x + 1
        self.z = x * 1
        self.w = x - 1
        self.u = x / 1


d = {
    "a": 1,
    "b": 2,
    "c": 3,
    "d": 4,
    "e": 5,
}

bob = Bob(111)

x: bool = True
False

from typing import List


def process(state: State) -> float:
    # This should yield never used warning
    z = 1
    return state["mu"] * 100


states: list[State] = [{"mu": 1.0}]
state: State = {"mu": 1.0}
process(state)

for i, s in enumerate(states):
    """Help"""
    out = process(s)
    print(f"{i}: {out}")
