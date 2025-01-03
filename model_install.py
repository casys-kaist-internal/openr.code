from huggingface_hub import snapshot_download

# Define model paths
models = {
    "math-shepherd-mistral-7b-prm": "/workspace/openr/model/math-shepherd-mistral-7b-prm",
    "mistral-7b-sft": "/workspace/openr/model/mistral-7b-sft",
}

# Download each model
for model_name, local_dir in models.items():
    print(f"Downloading {model_name} to {local_dir}")
    snapshot_download(repo_id=f"peiyi9979/{model_name}", local_dir=local_dir, local_files_only=False)
