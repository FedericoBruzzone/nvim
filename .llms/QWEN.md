# Qwen3.6-27B-Q4_K_M

```
./thirdparty/llama.cpp/build/bin/llama-server \
  --model ~/llm-models/Qwen3.6-27B-Q4_K_M.gguf \
  --port 8001 \
  --alias qwen3.6-27b-q4_k_m \
  -c 8000 \
  -n 8192 \
  --parallel 1 \
  --no-context-shift \
  --temp 1 \
  --top-p 1 \
  --top-k 40 \
  --presence-penalty 2.0 \
  --repeat-penalty 1.0 \
  -fa on \
  -ngl 99 \
  -ctk q4_0 -ctv q4_0 \
  --chat-template-kwargs '{"preserve_thinking": true}'
```
--chat-template-kwargs '{"enable_thinking": false}'


# Qwen 3.6-35B-A3B-UD-IQ4_XS

```
./thirdparty/llama.cpp/build/bin/llama-server \
  --model ~/llm-models/Qwen3.6-35B-A3B-UD-IQ4_XS.gguf \
  --port 8001 \
  --alias qwen3.6-35b-a3b \
  -c 8000 \
  -n 8192 \
  --parallel 1 \
  --no-context-shift \
  --temp 1 \
  --top-p 0.95 \
  --top-k 20 \
  --min-p 0 \
  --repeat-penalty 1 \
  -fa on \
  -ngl 99 \
  -ctk q4_0 -ctv q4_0 \
  --chat-template-kwargs '{"preserve_thinking": true}'
```

```
./thirdparty/llama.cpp/build/bin/llama-server \
  --model ~/llm-models/Qwen3.6-35B-A3B-UD-IQ4_XS.gguf \
  --port 8001 \
  --alias qwen3.6-35b-a3b \
  -c 4768 \
  -n 8192 \
  --no-context-shift \
  --temp 0.6 \
  --top-p 0.95 \
  --top-k 20 \
  --repeat-penalty 1.05 \
  --presence-penalty 0.00 \
  -fa on \
  -ngl 99 \
  -ctk q4_0 -ctv q4_0 \
  --chat-template-kwargs '{"preserve_thinking": true}'
```


