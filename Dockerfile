FROM python:3.10-slim

ARG RUN_ID
ENV MODEL_RUN_ID=${RUN_ID}

WORKDIR /app
RUN echo "Downloading model files for MLflow Run: ${MODEL_RUN_ID}" > model_log.txt
CMD ["python", "-c", "print('Model is ready!')"]
