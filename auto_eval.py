import os
import time
import json
import random

abspath = os.path.abspath(__file__)
dname = os.path.dirname(abspath)
os.chdir(dname)

search_dirs = [ 
    # './logs/prw/loss/bce/Jan16_11-37-50',\
    # './logs/prw/loss/mse/Jan16_11-38-33', \
    # './logs/prw/v2/cycle/Jan16_12-00-46', \
    # './logs/prw/v2/no_cycle/Jan16_12-01-31', \
]

random.shuffle(search_dirs)
while True:
    cnt = 0 
    for root in search_dirs:
        for (path, dirs, files) in os.walk(root):
            files = files[::-1]
            for file_name in files:
                if ('.pth' in file_name) and ('checkpoint' in file_name) and ('last' not in file_name):
                    if (file_name.replace('.pth', '.json')) not in files:
                        checkpoint = os.path.join(path, file_name)
                        print(os.path.join(dname, checkpoint))
                        args_file = os.path.join(path, 'args.json')
                        with open(args_file, 'r') as f:
                            args = json.load(f)
                        
                        tmp = checkpoint.replace('.pth', 'cache.txt')
                        if not os.path.exists(tmp):
                            with open(tmp, 'w') as f:
                                f.write('tmp')

                            command = " python -B scripts/test_NAE.py \
                                        -p %s \
                                        --reid_loss %s \
                                        --dataset %s \
                                        --lr %s \
                                        --batch_size %s \
                                        --num_pids %s \
                                        --num_cq_size %s \
                                        --oim_scalar %s \
                                        --cls_scalar %s \
                                        --part_num %s \
                                        --part_cls_scalar %s \
                                        --checkpoint_name %s" % (
                                            root, 
                                            args['reid_loss'],
                                            args['dataset'],
                                            args['train.lr'],
                                            args['train.batch_size'],
                                            args['num_pids'],
                                            args['num_cq_size'],
                                            args['oim_scalar'],
                                            args['cls_scalar'],
                                            args['part_num'],
                                            args['part_cls_scalar'],
                                            file_name)

                            os.system(command)
                            os.system('rm -rf %s' % tmp)
                            os.system('rm -rf performance.png')
                            os.system('python auto_draw.py')
                            cnt += 1

    if cnt == 0:
        time.sleep(300)
    else:
        time.sleep(10)