bsub -I -q q_sw_expr -host_stack 1024 -N 1 -cgsp 64 -sw3run ./sw3run-all -sw3runarg "-a 1" -cross_size 28000 ./bin/caffe_sw time --model=models/vgg/VGG16_train_val.prototxt
#mkdir -p ./log && bsub -b -I -m 1 -q q_sw_share -host_stack 2000 -share_size 6000 -n $1 -cgsp 64 ./bin/vggnet_sw 3>&1 | tee ./log/sw_vgg_`date '+%y-%m-%d-%H-%M-%S'`.log
#mkdir -p ./log && bsub -b -I -q q_sw_expr -host_stack 1024 -n $1 -cgsp 64 -sw3run ./sw3run-all -sw3runarg "-a 1" -cross_size 28000 ./bin/vggnet_sw ./image/peter1920-10.jpg 2>&1 | tee ./log/sw_vgg_`date '+%y-%m-%d-%H-%M-%S'`.log
