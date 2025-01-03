# Step 1: Upgrade pip
echo "Upgrading pip..."
python -m pip install --upgrade pip

# Step 2: Install packages from requirements.txt
echo "Installing packages from requirements.txt..."
pip install -r requirements.txt

# Step 3: Install fschat with model_worker and webui extras
echo "Installing fschat with model_worker and webui extras..."
pip3 install "fschat[model_worker,webui]"

# Step 4: Upgrade pydantic
echo "Upgrading pydantic..."
pip install -U pydantic

# Step 5: Install latex2sympy in editable mode
echo "Installing latex2sympy in editable mode..."
cd envs/MATH/latex2sympy
pip install -e .
cd -

echo "All steps completed successfully!"