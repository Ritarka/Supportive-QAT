# EfficientQAT
Official PyTorch implementation of **SupportiveQAT**, a framework for improving Quantization-Aware Training (QAT) stability in LLMs using Elastic Averaging SGD (EASGD).

## Contents
- [Installation](#installation)
- [Model Preparation](#model-preparation)
- [Training](#training)
- [Evaluation](#evaluation)
- [Citation](#citation)

## Installation
1. Clone this repository and navigate to SupportiveQAT folder
```
git clone https://github.com/Ritarka/Supportive-QAT.git
cd Supportive-QAT
```

2. Install package
```
pip install -r ritarka_env.txt
```

3. Install Model
Download and extract Meta-Llama-3-8B-Instruct

## Training
We support end-to-end QAT training with EASGD. Ensure that the model paths and output paths are correctly updated in the sh file.
```
bash examples/e2e_qp/Llama-2-7b/w2g64-redpajama.sh
```

## Citation
If you found this work useful, please consider citing:
```
@article{supportiveqat2025,
  title={SupportiveQAT: Stabilizing Quantization-Aware Training via Elastic Averaging},
  author={Samanta, Ritarka and Park, Jonathan and Min, Eugene},
  year={2025},
  note={CMU Deep Learning Systems Project}
}
