# docker-tf-obj-detection-api

Dockerfile to build a TensorFlow container with the TF Object Detection API support and models baked in.

Beware the built image is over 4G in size.

# Build

`git clone https://github.com/M-Kruse/docker-tf-obj-detection-api/`  
`cd docker-tf-obj-detection-api`  
`docker build -t tf-obj-detection-api .`  

# Test

`docker run -v $PWD:/tmp -w /tmp -u tf-user:docker -it --rm tf-obj-detection-api python object_detection/builders/model_builder_tf1_test.py`  


```
Scooty@ScootysUbuntu:~/Code/models/research$ docker run -v $PWD:/tmp -w /tmp -u tf-user:docker -it --rm tf-obj-detection-api python object_detection/builders/model_builder_tf1_test.py
Running tests under Python 3.6.8: /usr/local/bin/python
[ RUN      ] ModelBuilderTF1Test.test_create_experimental_model
[       OK ] ModelBuilderTF1Test.test_create_experimental_model
[ RUN      ] ModelBuilderTF1Test.test_create_faster_rcnn_from_config_with_crop_feature(True)
WARNING:tensorflow:From /tmp/object_detection/meta_architectures/faster_rcnn_meta_arch.py:151: The name tf.AUTO_REUSE is deprecated. Please use tf.compat.v1.AUTO_REUSE instead.

W0520 02:52:54.229591 140397341476672 module_wrapper.py:139] From /tmp/object_detection/meta_architectures/faster_rcnn_meta_arch.py:151: The name tf.AUTO_REUSE is deprecated. Please use tf.compat.v1.AUTO_REUSE instead.

[       OK ] ModelBuilderTF1Test.test_create_faster_rcnn_from_config_with_crop_feature(True)
[ RUN      ] ModelBuilderTF1Test.test_create_faster_rcnn_from_config_with_crop_feature(False)
[       OK ] ModelBuilderTF1Test.test_create_faster_rcnn_from_config_with_crop_feature(False)
[ RUN      ] ModelBuilderTF1Test.test_create_faster_rcnn_model_from_config_with_example_miner
[       OK ] ModelBuilderTF1Test.test_create_faster_rcnn_model_from_config_with_example_miner
[ RUN      ] ModelBuilderTF1Test.test_create_faster_rcnn_models_from_config_faster_rcnn_with_matmul
[       OK ] ModelBuilderTF1Test.test_create_faster_rcnn_models_from_config_faster_rcnn_with_matmul
[ RUN      ] ModelBuilderTF1Test.test_create_faster_rcnn_models_from_config_faster_rcnn_without_matmul
[       OK ] ModelBuilderTF1Test.test_create_faster_rcnn_models_from_config_faster_rcnn_without_matmul
[ RUN      ] ModelBuilderTF1Test.test_create_faster_rcnn_models_from_config_mask_rcnn_with_matmul
[       OK ] ModelBuilderTF1Test.test_create_faster_rcnn_models_from_config_mask_rcnn_with_matmul
[ RUN      ] ModelBuilderTF1Test.test_create_faster_rcnn_models_from_config_mask_rcnn_without_matmul
[       OK ] ModelBuilderTF1Test.test_create_faster_rcnn_models_from_config_mask_rcnn_without_matmul
[ RUN      ] ModelBuilderTF1Test.test_create_rfcn_model_from_config
[       OK ] ModelBuilderTF1Test.test_create_rfcn_model_from_config
[ RUN      ] ModelBuilderTF1Test.test_create_ssd_fpn_model_from_config
[       OK ] ModelBuilderTF1Test.test_create_ssd_fpn_model_from_config
[ RUN      ] ModelBuilderTF1Test.test_create_ssd_models_from_config
[       OK ] ModelBuilderTF1Test.test_create_ssd_models_from_config
[ RUN      ] ModelBuilderTF1Test.test_invalid_faster_rcnn_batchnorm_update
[       OK ] ModelBuilderTF1Test.test_invalid_faster_rcnn_batchnorm_update
[ RUN      ] ModelBuilderTF1Test.test_invalid_first_stage_nms_iou_threshold
[       OK ] ModelBuilderTF1Test.test_invalid_first_stage_nms_iou_threshold
[ RUN      ] ModelBuilderTF1Test.test_invalid_model_config_proto
[       OK ] ModelBuilderTF1Test.test_invalid_model_config_proto
[ RUN      ] ModelBuilderTF1Test.test_invalid_second_stage_batch_size
```
