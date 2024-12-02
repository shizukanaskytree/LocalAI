PATH_ON_HOST=/data/xiaofengwu/p2p_llm_inference_prj/my_localai_repo/LocalAI
PATH_ON_CONTAINER=/build
docker run \
    -p 8080:8080 \
    --gpus all \
    --name local-ai-gpu \
    -v $PATH_ON_HOST:$PATH_ON_CONTAINER \
    -it --entrypoint /bin/bash \
    localai

# Explanation:
# -p 8080:8080: Maps port 8080 of the host to port 8080 of the container, allowing access to any services running on that port inside the container.
# --gpus all: Allocates all available GPUs to the container.
# --name local-ai: Assigns a name to the container for easier management.
# -it: Keeps the container interactive with a terminal session.
# --entrypoint /bin/bash: Starts the container with a Bash shell, allowing you to interact with it manually.
# localai/localai:latest-aio-gpu-nvidia-cuda-11: Specifies the Docker image optimized for NVIDIA CUDA 11, which includes GPU support.
# This command will start a LocalAI container with GPU support, allowing you to interact with it via a Bash shell.


# eg.
# docker run -p 8080:8080 --gpus all --name local-ai -ti localai/localai:latest-aio-gpu-nvidia-cuda-11
# docker run -p 8080:8080 --gpus all --name local-ai -ti localai/localai:latest-aio-gpu-nvidia-cuda-12


# Select the image (CPU or GPU) and start the container with Docker:

### CPU example
# docker run -p 8080:8080 --name local-ai -ti localai/localai:latest-aio-cpu
# # For Nvidia GPUs:
# # docker run -p 8080:8080 --gpus all --name local-ai -ti localai/localai:latest-aio-gpu-nvidia-cuda-11
# # docker run -p 8080:8080 --gpus all --name local-ai -ti localai/localai:latest-aio-gpu-nvidia-cuda-12



### or associate a volume:
# docker volume create localai-models
# docker run -p 8080:8080 --name local-ai -ti -v localai-models:/build/models localai/localai:latest-aio-cpu
