# Youtu-LLM-2B-F16

```
./thirdparty/llama.cpp/build/bin/llama-server \
  --model ~/llm-models/Youtu-LLM-2B-F16.gguf \
  --port 8001 \
  --alias youtu-2b-reasoning \
  -c 16384 \
  -fa on \
  -ngl 99 \
  -b 1024 \
  --temp 1.0 \
  --top-p 0.95 \
  --top-k 20 \
  --repeat-penalty 1.05 \
  --chat-template-kwargs '{"preserve_thinking": true}'
```
