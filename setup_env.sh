echo "Creating venv for llama2 and GPTQ"
conda create -n llama2 python=3.10
conda activate llama2
pip install torch==2.0.1+cu117 torchvision==0.15.2+cu117 torchaudio==2.0.2 --index-url https://download.pytorch.org/whl/cu117

pip install 'transformers>=4.32.0' 'optimum>=1.12.0' cchardet 'ctransformers[cuda]>=0.2.24'
pip install auto-gptq --extra-index-url https://huggingface.github.io/autogptq-index/whl/cu117/

pip install -r requirements.txt

pip install jupyter
ipython kernel install --name "llama2" --user