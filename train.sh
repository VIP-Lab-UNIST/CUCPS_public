CUDA_VISIBLE_DEVICES=0 python -B runs/train.py  \
                        --reid_loss oim \
                        --dataset PRW \
                        --lr_decay_gamma 0.1 \
                        --epochs 30 \
                        --oim_scalar 30.0 \
                        --cls_scalar 1.0 \
                        --w_RCNN_loss_bbox 10.0 \
                        --anchor_scales 32 64 128 256 512 \
                        --num_cq_size 500 \
                        --w_OIM_loss_oim 1.0 \
                        --part_num 4 \
                        --part_cls_scalar 10 \
                        --num_features 256 \
                        --num_pids 482 \
                        --oim_momentum 0.5 \
                        --batch_size_test 1 \
                        --device cuda \
                        --rpn_post_nms_top_n 2000 \
                        --rpn_pre_nms_top_n_test 6000 \
                        --w_RPN_loss_box 1.0 \
                        --rpn_pre_nms_top_n 12000 \
                        --rpn_fg_fraction 0.5 \
                        --min_size 900 \
                        --rpn_min_size_test 16 \
                        --fg_thresh 0.5 \
                        --nw 0 \
                        --momentum 0.9 \
                        --rpn_negative_overlap 0.3 \
                        --rpn_batch_size 256 \
                        --max_size 1500 \
                        --bg_thresh_lo 0.1 \
                        --disp_interval 10 \
                        --rpn_nms_thresh_test 0.7 \
                        --bg_thresh_hi 0.5 \
                        --max_size_test 1500 \
                        --rpn_positive_overlap 0.7 \
                        --w_RPN_loss_cls 1.0 \
                        --fg_fraction 0.5 \
                        --clip_gradient 10.0 \
                        --w_RCNN_loss_cls 1.0 \
                        --nms_test 0.4 \
                        --start_epoch 6 \
                        --rcnn_batch_size 128 \
                        --rpn_min_size 8 \
                        --rpn_nms_thresh 0.7 \
                        --box_regression_weights 10.0 10.0 5.0 5.0 \
                        --weight_decay 0.0005 \
                        --net resnet50 \
                        --checkpoint_interval 1 \
                        --rpn_post_nms_top_n_test 300 \
                        --aspect_grouping -1 \
                        --anchor_ratios 0.5 1.0 2.0 \
                        --min_size_test 900 \
                        --lr_warm_up \
                        --lr_decay_step 14 \
                        --seed 0 \
                        --batch_size 1 \
                        --use_hnm 1 \
                        --use_hpm 1 \
                        --lr 0.003 \
                        --sim_thrd 0.60 \
                        --co_scale 0.10 \
                        --hard_neg 0.01 \
                        --path ./logs/tmp/
                       
                        # --resume ./logs/prw/paper/checkpoint_epoch18.pth \
                        # --start_epoch 0 \
                        # --batch_size 4 \

# CUDA_VISIBLE_DEVICES=0 python -B runs/train.py  \
#                         --reid_loss oim \
#                         --dataset CUHK-SYSU \
#                         --lr_decay_gamma 0.1 \
#                         --epochs 30 \
#                         --oim_scalar 30.0 \
#                         --cls_scalar 1.0 \
#                         --w_RCNN_loss_bbox 10.0 \
#                         --anchor_scales 32 64 128 256 512 \
#                         --num_cq_size 5000 \
#                         --w_OIM_loss_oim 1.0 \
#                         --part_num 4 \
#                         --part_cls_scalar 10 \
#                         --num_features 256 \
#                         --num_pids 5532 \
#                         --oim_momentum 0.5 \
#                         --batch_size_test 1 \
#                         --device cuda \
#                         --rpn_post_nms_top_n 2000 \
#                         --rpn_pre_nms_top_n_test 6000 \
#                         --w_RPN_loss_box 1.0 \
#                         --rpn_pre_nms_top_n 12000 \
#                         --rpn_fg_fraction 0.5 \
#                         --min_size 900 \
#                         --rpn_min_size_test 16 \
#                         --fg_thresh 0.5 \
#                         --nw 0 \
#                         --momentum 0.9 \
#                         --rpn_negative_overlap 0.3 \
#                         --rpn_batch_size 256 \
#                         --max_size 1500 \
#                         --bg_thresh_lo 0.1 \
#                         --disp_interval 10 \
#                         --rpn_nms_thresh_test 0.7 \
#                         --bg_thresh_hi 0.5 \
#                         --max_size_test 1500 \
#                         --rpn_positive_overlap 0.7 \
#                         --w_RPN_loss_cls 1.0 \
#                         --fg_fraction 0.5 \
#                         --clip_gradient 10.0 \
#                         --w_RCNN_loss_cls 1.0 \
#                         --nms_test 0.4 \
#                         --start_epoch 0 \
#                         --rcnn_batch_size 128 \
#                         --rpn_min_size 8 \
#                         --rpn_nms_thresh 0.7 \
#                         --box_regression_weights 10.0 10.0 5.0 5.0 \
#                         --weight_decay 0.0005 \
#                         --net resnet50 \
#                         --checkpoint_interval 1 \
#                         --rpn_post_nms_top_n_test 300 \
#                         --aspect_grouping -1 \
#                         --anchor_ratios 0.5 1.0 2.0 \
#                         --min_size_test 900 \
#                         --lr_warm_up \
#                         --lr_decay_step 20 \
#                         --seed 0 \
#                         --batch_size 4 \
#                         --use_hnm 1 \
#                         --use_hpm 1 \
#                         --lr 0.003 \
#                         --sim_thrd 0.60 \
#                         --co_scale 0.10 \
#                         --hard_neg 0.01 \
#                         --path ./logs/cuhk/v41/ablation/hnmO-hpmO-coscale0.10-simthrd0.60-neg01-decay20
                       
                       