# Getting Started Guide

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/ecg_dino.git
   cd ecg_dino
   ```

2. Set up the environment:
   ```bash
   bash scripts/setup_environment.sh
   ```

3. Download the PTB-XL dataset:
   ```bash
   bash scripts/download_ptbxl.sh
   ```

## Usage

### Pretraining

1. Configure pretraining parameters in `configs/pretrain.yaml`
2. Run pretraining:
   ```bash
   bash scripts/train.sh pretrain
   ```

### Fine-tuning

1. Configure fine-tuning parameters in `configs/finetune.yaml`
2. Run fine-tuning:
   ```bash
   bash scripts/train.sh finetune
   ```

## Working with Custom Datasets

To use your own ECG dataset:

1. Prepare your data following the format described in the [Metadata Schema](metadata_schema.md)
2. Create a custom dataset instance:
   ```python
   from data.custom_dataset import CustomECGDataset
   
   dataset = CustomECGDataset(
       data_path='/path/to/your/data',
       student_leads=['I'],  # Leads for student model
       teacher_leads=['I', 'II', 'III', 'aVR', 'aVL', 'aVF', 'V1', 'V2', 'V3', 'V4', 'V5', 'V6'],  # Leads for teacher model
       metadata=True  # Include metadata if available
   )
   ```

3. Use the dataset for training:
   ```python
   from torch.utils.data import DataLoader
   
   dataloader = DataLoader(dataset, batch_size=32, shuffle=True)
   ```

## ML Model Integration

For information on the ML Model and its integration with this framework, see the [ML Model documentation](ml_model.md).

## API Reference

For detailed information about the available classes and functions, see the [API Reference](api.md).
