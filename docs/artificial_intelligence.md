# Artificial Intelligence (AI)

## Chat services

* [ChatGPT](https://chatgpt.com/) by [OpenAI](https://openai.com/)
* [Claude](https://claude.ai/new) by [Anthropic](https://www.anthropic.com/)
* [DeepSeek](https://chat.deepseek.com)
* [Gemini](https://gemini.google.com/)
  * [Google AI studio](https://aistudio.google.com/prompts/new_chat)
* [Grok](https://grok.com/) by [xAI](https://x.ai/)
* [Kimi](https://www.kimi.com/) by [Moonshot AI](https://www.moonshot.ai/)
* [Le Chat](https://chat.mistral.ai/chat)
* [Perplexity](https://www.perplexity.ai/)
* [Qwen Chat](https://chat.qwen.ai/) by Alibaba

## Models and leaderboards

n.b. Which model is best changes every few weeks, so prefer a tracker over any ranking written down here.

* [Artificial Analysis](https://artificialanalysis.ai/) - Independent benchmarks of quality, speed, and price, per model and per provider
* [Epoch AI](https://epoch.ai/) - Trends in training compute, cost, and capability
* [Hugging Face models](https://huggingface.co/models) - Where open-weight models are published
* [LMArena](https://lmarena.ai/) - Ranked by blind human preference

Task-specific benchmarks:

* [Aider LLM leaderboards](https://aider.chat/docs/leaderboards/) - Code editing
* [SWE-bench](https://www.swebench.com/) - Resolving real GitHub issues
* [Terminal-Bench](https://www.tbench.ai/) - Agentic work in a terminal

Model documentation, which is the only authoritative source for context windows, pricing, and model IDs:

* [Anthropic](https://platform.claude.com/docs/en/about-claude/models/overview)
* [Google](https://ai.google.dev/gemini-api/docs/models)
* [OpenAI](https://platform.openai.com/docs/models)

## Platforms

* [Amazon Bedrock](https://aws.amazon.com/bedrock/)
* [Cerebras](https://www.cerebras.ai/)
* [Fireworks AI](https://fireworks.ai/)
* [Groq](https://groq.com/)
* [Hugging Face](https://huggingface.co/)
* [OpenRouter](https://openrouter.ai/)
* [Together AI](https://www.together.ai/)

## Software

* [ansible-role-homeassistantfrigate #llm](https://github.com/andornaut/ansible-ctrl/tree/master/roles/homeassistant-frigate#llm)
* [ansible-role-homeassistantfrigate #voice-assistant](https://github.com/andornaut/ansible-ctrl/tree/master/roles/homeassistant-frigate#voice-assistant)
* [Claude Code](https://github.com/anthropics/claude-code)
  * [claude-code-router](https://github.com/musistudio/claude-code-router) - Local control plane that routes an agent across models and providers
  * [free-claude-code](https://github.com/Alishahryar1/free-claude-code) - Proxy that converts Claude Code's API requests to NVIDIA NIM or OpenRouter format
* [Keras](https://keras.io/)
* [LibreChat](https://www.librechat.ai/)
* [Model Context Protocol (MCP)](https://modelcontextprotocol.io/)
  * [Inspector](https://github.com/modelcontextprotocol/inspector) - Debug a server without wiring it into a client first
  * [Registry](https://registry.modelcontextprotocol.io/)
  * [Servers](https://github.com/modelcontextprotocol/servers)
* [OpenClaw](https://openclaw.ai/)
* [Open WebUI](https://openwebui.com/)
* [Speaches](https://speaches.ai/) - An OpenAI API-compatible server supporting streaming transcription, translation, and speech generation
* [TensorFlow](https://www.tensorflow.org/)
* [Whisper](https://openai.com/index/whisper/)
  * [awesome-whisper](https://github.com/sindresorhus/awesome-whisper) - A list of whisper software
  * [superwhisper](https://superwhisper.com/) - Voice dictation on macOS

### Local inference

* [llama.cpp](https://github.com/ggml-org/llama.cpp) - Inference engine in C/C++; runs on almost anything, including CPU-only
* [LM Studio](https://lmstudio.ai/) - Desktop app for finding and running local models
* [MLX](https://github.com/ml-explore/mlx) - Apple Silicon array framework; the fastest local option on a Mac
* [Ollama](https://ollama.com/) - Model manager and local server
* [SGLang](https://github.com/sgl-project/sglang) - Serving, for many concurrent users
* [vLLM](https://github.com/vllm-project/vllm) - Serving, for many concurrent users

n.b. Ollama and LM Studio are for one person on one machine; vLLM and SGLang are for a box serving many. Reaching for a serving engine on a laptop buys nothing.

### Agent frameworks

* [Claude Agent SDK](https://code.claude.com/docs/en/agent-sdk)
* [LangGraph](https://github.com/langchain-ai/langgraph)
* [OpenAI Agents SDK](https://github.com/openai/openai-agents-python)
* [Pydantic AI](https://ai.pydantic.dev/)

### Evaluation and observability

* [Inspect](https://inspect.aisi.org.uk/) - Evaluation framework from the UK AI Security Institute
* [Langfuse](https://langfuse.com/) - Tracing, prompt management, and evaluation
* [promptfoo](https://www.promptfoo.dev/) - Prompt testing and red-teaming from the command line

### Software development tools

* [Aider](https://aider.chat/) - Terminal pair programming against the git repo; model-agnostic, auto-commits
* [Antigravity](https://antigravity.google/) by Google - Agent platform; the IDE plus [Antigravity CLI](https://antigravity.google/product/antigravity-cli). Replaced Gemini CLI in 2026-06
* [Claude Code](https://code.claude.com/docs/en/overview)
* [Cline](https://github.com/cline/cline) - VS Code agent with per-action approval; broad model support
* [./Cursor](./cursor.md)
* [Devin Desktop](https://devin.ai/desktop) by Cognition - The former Windsurf Editor, rebranded 2026-06-02; windsurf.com now redirects to devin.ai
* [GitHub Copilot for VS Code](https://code.visualstudio.com/docs/copilot/overview)
* [goose](https://github.com/block/goose) - Open source agent from Block; CLI and desktop, any model, MCP extensions
* [Kilo Code](https://github.com/Kilo-Org/kilocode) - Agent that runs in VS Code, JetBrains, and the CLI; 500+ models at provider pricing
* [OpenAI Codex](https://developers.openai.com/codex) - [Codex CLI](https://github.com/openai/codex)
* [OpenCode](https://opencode.ai/) - Terminal agent from the SST team; any of 75+ providers
* [Zed](https://zed.dev/)

## Articles and blogs
* [Building effective agents](https://www.anthropic.com/engineering/building-effective-agents) - Start with the simplest thing that works; most "agent" problems are a workflow
* [Claude Code: Best practices for agentic coding](https://www.anthropic.com/engineering/claude-code-best-practices)
* [Effective context engineering for AI agents](https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents)
* [Simon Willison’s Weblog](https://simonwillison.net/2025/Mar/11/using-llms-for-code/)
* [Stephen Wolfram - What Is ChatGPT Doing … and Why Does It Work?](https://writings.stephenwolfram.com/2023/02/what-is-chatgpt-doing-and-why-does-it-work/)

## Books

* [Generative Deep Learning, 2nd Edition](https://www.oreilly.com/library/view/generative-deep-learning/9781098134174/)
 
## Courses
* [Agents Towards Production](https://github.com/NirDiamant/agents-towards-production)
* [generative-ai-for-beginners](https://github.com/microsoft/generative-ai-for-beginners) - 21 Lessons, Get Started Building with Generative AI
* [Generative AI & Large Language Models Courses](https://learn.activeloop.ai/)
* [Practical Deep Learning](https://course.fast.ai/)

## Videos

* [3Blue1Brown - Neural Networks](https://www.3blue1brown.com/topics/neural-networks)
* [AlphaGo - The Movie](https://youtu.be/WXuK6gekU1Y?si=EuLOmjwqvATUdL2T)
* [Andrej Karpathy - Deep Dive into LLMs like ChatGPT](https://www.youtube.com/watch?v=7xTGNNLPyMI)
* [vcubingx - Language Modeling (playlist)](https://www.youtube.com/watch?v=1il-s4mgNdI&list=PLyPKqVSnetmELS_I3FRfXZRKAxV5HB9fc)
