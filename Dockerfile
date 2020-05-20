FROM tensorflow/tensorflow:1.15.0-gpu-py3

WORKDIR /usr/src/app
RUN apt-get update -y && apt-get install -y \
 git \
 protobuf-compiler
RUN pip install Cython
RUN pip install contextlib2
RUN pip install pillow
RUN pip install lxml
RUN pip install jupyter
RUN pip install matplotlib
RUN pip install labelImg
RUN useradd tf-user
RUN groupadd docker
RUN usermod -aG docker tf-user

RUN git clone https://github.com/tensorflow/models.git
WORKDIR /usr/src/app/models/research
RUN git clone https://github.com/cocodataset/cocoapi.git
WORKDIR /usr/src/app/models/research/cocoapi/PythonAPI
RUN make
RUN cp -r /usr/src/app/models/research/cocoapi/PythonAPI/pycocotools /usr/src/app/models/research/
WORKDIR /usr/src/app/models/research
RUN protoc object_detection/protos/*.proto --python_out=.
ENV PYTHONPATH=$PYTHONPATH:/usr/src/app/models/research:/usr/src/app/models/research/slim
