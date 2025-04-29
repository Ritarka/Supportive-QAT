CUDA_VISIBLE_DEVICES=0 python main_block_ap.py \
--model /home/intern/ritarka/models/Meta-Llama-3-8B-Instruct  \
--output_dir ./output/block_ap_log/Meta-Llama-Someplace-new \
--net Llama-3 \
--calib_dataset wikitext2 \
--wbits 2 \
--group_size 64 \
--quant_lr 1e-4 \
--weight_lr 2e-5 \
--eval_ppl \
--eval_tasks piqa,arc_easy,arc_challenge,hellaswag,winogrande \
--save_quant_dir ./output/block_ap_models/Meta-Llama-Someplace-new
# --resume_quant /home/intern/ritarka/EfficientQAT/output/block_ap_models/Meta-Llama-3-8B-Copy \
# --real_quant \