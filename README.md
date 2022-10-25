# Execution-based evaluation of code in 10+ languages

This repository contains code to perform execution-based multi-lingual evaluation of code generation capabilities and the corresponding data, namely, a multi-lingual benchmark MBXP, multi-lingual MathQA and multi-lingual HumanEval. Results and findings can be found in the paper "Multi-lingual Evaluation of Code Generation Models" (link).


## Paper summary

Our paper describes the language conversion framework, the synthetic solution generation, and many other types of evaluation beyond the traditional function completion evaluation such as translation, code insertion, summarization, and robustness evaluation. 

![Paper summary](./graphics/paper_summary.png)


## Language conversion of execution-based function completion datasets

Below we demonstrate the language conversion (component A above) for the conversion from Python to Java (abridged example for brevity). 

![Example conversion to Java](./graphics/mbxp_java_conversion.png)


# Installation

Check out and install this repository:
```
$ git clone mbxp-exec-eval
$ pip install -e mbxp-exec-eval
```



## Dependencies
We provide scripts to help set up programming language dependencies that are used to execute and evaluate using datasets in MBXP.

### Amazon Linux AMI
```
bash language_setup/amazon_linux_ami.sh
```
### Ubuntu
```
bash language_setup/ubuntu.sh
```

# Usage

**This program exists to run untrusted model-generated code. Users are strongly
encouraged not to do so outside of a robust security sandbox. See the comment in
`execution.py` for more information and instructions.**

Each sample is formatted into a single line:
```
{"task_id": "Corresponding task ID", "completion": "Completion only without the prompt",
"language": "programming language name"}
```
We provide `data/mbpx/examples/mbxp_samples.jsonl` under `data/mbxp`
to illustrate the format. 

Here is nearly functional example code (you just have to provide
`generate_one_completion` to make it work) that saves generated completions to
`samples.jsonl`.
```
from exec_eval.data import write_jsonl, read_problems

problems = read_problems()

num_samples_per_task = 200
samples = [
    dict(task_id=task_id, language=problems[task_id]["language"], completion=generate_one_completion(problems[task_id]["prompt"]))
    for task_id in problems
    for _ in range(num_samples_per_task)
]
write_jsonl("samples.jsonl", samples)
```

To evaluate the samples for, e.g., Java MBJP evaluation, run 
```
$ evaluate_functional_correctness mbxp/examples/mbjp_samples.jsonl --problem_file mbxp/mbjp_release_v1.jsonl
[ TO ADD]
```
You can check the programming-language dependency installation by running the above example for each MBXP dataset. You should obtain the following results:

```
[ TO ADD TABLE WITH NUMBERS]
```

Note: Because there is no unbiased way of estimating pass@k when there are fewer
samples than k, the script does not evaluate pass@k for these cases. To
evaluate with other k values, pass `--k <comma-separated-values-here>`. For
other options, see
```
$ evaluate_functional_correctness --help
```
However, we recommend that you use the default values for the rest.

### Example usage with non-default values
```
evaluate_functional_correctness  mbjp_samples.jsonl --problem_file mbjp_release_v1.jsonl --n_workers 63 --k 1,5,10,100
```

## Known Issues

While evaluation uses very little memory, you might see the following error
message when the system is running out of RAM. Since this may cause some
correct programs to fail, we recommend that you free some memory and try again.
```
malloc: can't allocate region
```

## Future release
We plan to release synthetic canonical solutions as well as processed datasets for other evaluation tasks such as code-insertion, code-translation, etc. 


## Citation

Please cite using the following bibtex entry:

```
@article{athiwaratkun2022mbxp,
  title={Multi-lingual Evaluation of Code Generation Models},
  author={Athiwaratkun et al.}, [to be added]
  year={2022},
  archivePrefix={arXiv},
  primaryClass={cs.LG}
}
```

## Credits
We adapted OpenAI's human-eval package (https://github.com/openai/human-eval) for the multi-lingual case. We thank OpenAI for their pioneering effort in this field including the release of the original HumanEval dataset, which we convert to the multi-lingual versions. We also thank Google for their release of the original MBPP Python dataset (https://github.com/google-research/google-research/tree/master/mbpp), which we adapt and convert to other programming languages.
