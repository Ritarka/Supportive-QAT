# SupportiveQAT
Official PyTorch implementation of **SupportiveQAT**, a framework for improving Quantization-Aware Training (QAT) stability in LLMs using Elastic Averaging SGD (EASGD).

## Contents
- [Installation](#installation)
- [Training](#training)
- [Files](#files)
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

3. Install Model <br>
Download and extract Meta-Llama-3-8B-Instruct

## Training
We support end-to-end QAT training with EASGD. Ensure that the model paths and output paths are correctly updated in the sh file.
```
bash examples/e2e_qp/Llama-2-7b/w2g64-redpajama.sh
```

## Files

The file `main_e2e_qp.py` implements the **End-to-End Quantization-Aware Training (E2E-QP)** pipeline for LLMs under quantization constraints.

### Main Features

- **Quantized Model Loading**  
  Supports loading blockwise pre-quantized models and applying fine-tuning using quantized layers (`QuantLinear`).

- **Elastic Averaging SGD (EASGD)**  
  Implements a multi-worker EASGD method to mitigate weight oscillation issues during quantized training.

- **Hyperparameter Flexibility**  
  Exposes tuning of `α`, `β`, and stickiness parameters for EASGD via command-line arguments.

- **Automatic Device Management**  
  Efficient GPU memory usage by swapping models between CPU and GPU.

- **Training Options**  
  Supports both EASGD-based training and standard fine-tuning with `AdamW`.

- **Dataset Handling**  
  Prepares training/validation sets dynamically (supports WikiText2, RedPajama, Alpaca formats).

- **Evaluation**  
  Optionally performs Perplexity (PPL) and LM-Eval benchmark tasks (e.g., PIQA, ARC).

- **Logging**  
  Integrated with Weights & Biases (WandB) for experiment tracking.

- **Reproducibility**  
  Includes checkpointing, seeding, and caching logic.

### Key Files Used in e2e

- `quantize/int_linear_real.py`: Quantized layer and model structure.
- `datautils_block.py` and `datautils_e2e.py`: Dataset loading and preprocessing utilities.
- `utils.py`: Logging and helper utilities.
- `examples/e2e_qp/Llama-2-7b/w2g64-redpajama.sh`: Example script to launch E2E-QP training.

## Citation
If you found this work useful, please consider citing:
```
@article{supportiveqat2025,
  title={SupportiveQAT: Stabilizing Quantization-Aware Training via Elastic Averaging},
  author={Samanta, Ritarka and Park, Jonathan and Min, Eugene},
  year={2025},
  note={CMU Deep Learning Systems Project}
}
