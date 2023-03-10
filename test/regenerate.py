#!/usr/bin/env python3
# SPDX-License-Identifier: GPL-3.0-or-later
# Copyright 2018-2021 Sacha Delanoue
"""Regenerate the test samples"""

import os
import sys
from pathlib import Path

sys.path.insert(0, "..")
# pylint: disable=wrong-import-position
from iorgen import parse_input, ALL_LANGUAGES, ALL_MARKDOWN


def regenerate_samples() -> None:
    """Regenerate all the samples"""
    for name in os.listdir("samples"):
        prefix = f"samples/{name}/{name}."
        with open(prefix + "yaml", "r", encoding="utf-8") as stream:
            input_data = parse_input(stream)
        assert input_data is not None

        for language in ALL_LANGUAGES + ALL_MARKDOWN:
            Path(prefix + language.extension).write_text(
                language.generate(input_data), encoding="utf-8"
            )


if __name__ == "__main__":
    regenerate_samples()
