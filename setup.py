# Original Copyright 2021 OpenAI under MIT License.
# Modifications Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
import os

import pkg_resources
from setuptools import setup, find_packages


setup(
    name="mxeval",
    py_modules=["mxeval"],
    version="1.0",
    description="",
    author="AWS AI Labs",
    packages=find_packages(),
    install_requires=[
        str(r)
        for r in pkg_resources.parse_requirements(
            open(os.path.join(os.path.dirname(__file__), "requirements.txt"))
        )
    ],
    entry_points={
        "console_scripts": [
            "evaluate_functional_correctness = mxeval.evaluate_functional_correctness",
        ]
    }
)
