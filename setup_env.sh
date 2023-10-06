echo "Creating venv for llama2 and GPTQ"
conda create -n llama2 python=3.10
conda activate llama2
conda install pytorch torchvision torchaudio pytorch-cuda=11.7 -c pytorch -c nvidia

pip install 'transformers>=4.32.0' 'optimum>=1.12.0' cchardet 'ctransformers[cuda]>=0.2.24'
pip install auto-gptq --extra-index-url https://huggingface.github.io/autogptq-index/whl/cu117/

pip install -r requirements.txt

pip install jupyter
ipython kernel install --name "llama2" --user