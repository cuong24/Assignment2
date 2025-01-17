FROM python:3.8

ADD ./requirements.txt ./
RUN python -m pip install --upgrade pip && \
    pip install -r requirements.txt

COPY python ./
COPY EEET2574_Assignment2_data ./
RUN jupyter trust ./pymongo1.ipynb
EXPOSE 8888
CMD jupyter lab --ip=0.0.0.0 --port=8888 --no-browser --allow-root --NotebookApp.token='' --NotebookApp.password=''