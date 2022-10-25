# Original Copyright 2021 OpenAI under MIT License.
# Modifications Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.

import sys

import fire
from exec_eval.data import HUMAN_EVAL
from exec_eval.evaluation import evaluate_functional_correctness


def entry_point(
    sample_file: str,
    problem_file: str = HUMAN_EVAL,
    k: tuple = (1, 10, 100, 1000),  # from command line, use '1,10,100' for example
    n_workers: int = 64,
    timeout: float = 3.0,
):
    """
    Evaluates the functional correctness of generated samples, and writes
    results to f"{sample_file}_results.jsonl"
    """
    k = list(map(int, k))
    results = evaluate_functional_correctness(
        sample_file, k, n_workers, timeout, problem_file
    )
    with open(sample_file + "_passatk.jsonl", "w") as f:
        f.write(str(results))
    print(results)


def main():
    fire.Fire(entry_point)


sys.exit(main())
