FROM python:3.10-slim
ARG RUN_ID
ENV MODEL_RUN_ID=${RUN_ID}
WORKDIR /app
RUN echo ${MODEL_RUN_ID} > deployment_id.txt
CMD ["python", "-c", "import os; print('Running model ID: ' + os.environ.get('MODEL_RUN_ID'))"]
