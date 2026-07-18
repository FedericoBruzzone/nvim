# gemma-4-26B-A4B-it-UD-Q4_K_M

```
./thirdparty/llama.cpp/build/bin/llama-server \
  --model ~/llms/gemma-4-26B-A4B-it-UD-Q4_K_M.gguf \
  --port 8001 \
  --alias gemma-4-26b-q4km \
  -c 16384 \
  -n 8192 \
  --parallel 1 \
  -fa on \
  -ngl 99 \
  -ctk q4_0 -ctv q4_0 \
  --temp 0.7 \
  --min-p 0.05 \
  --repeat-penalty 1.05 \
  --chat-template-kwargs '{"preserve_thinking": true}'
```
