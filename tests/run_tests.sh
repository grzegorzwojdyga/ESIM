PYTHONPATH=/workdir python scripts/preprocessing/preprocess_snli.py --config config/preprocessing/snli_preprocessing.json > /out/prep_res.txt

PYTHONPATH=/workdir python scripts/training/train_snli.py --config config/training/snli_training.json > /out/train_res.txt

PYTHONPATH=/workdir python scripts/testing/test_snli.py /data/preprocessed/SNLI/test_data.pkl /data/checkpoints/SNLI/best.pth.tar > /out/test_res.txt
