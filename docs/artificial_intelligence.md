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
* [Hyperbolic](https://hyperbolic.xyz/)
* [OpenRouter](https://openrouter.ai/)
* [Scaleway](https://www.scaleway.com/)
* [Together AI](https://www.together.ai/)

## Software

* [ansible-role-homeassistantfrigate #llm](https://github.com/andornaut/ansible-ctrl/tree/master/roles/homeassistant-frigate#llm)
* [ansible-role-homeassistantfrigate #voice-assistant](https://github.com/andornaut/ansible-ctrl/tree/master/roles/homeassistant-frigate#voice-assistant)
* [Claude Code](https://github.com/anthropics/claude-code)
  * [claude-code-router](https://github.com/musistudio/claude-code-router) - Use OpenRouter
  * [free-claude-code](https://github.com/Alishahryar1/free-claude-code) - Proxy that converts Claude Code's API requests to NVIDIA NIM or OpenRouter format
* [Codex](https://developers.openai.com/codex) by OpenAI
* [Keras](https://keras.io/)
* [LibreChat](https://www.librechat.ai/)
* [Model Context Protocol (MCP)](https://modelcontextprotocol.io/)
  * [Inspector](https://github.com/modelcontextprotocol/inspector) - Debug a server without wiring it into a client first
  * [Registry](https://registry.modelcontextprotocol.io/)
  * [Servers](https://github.com/modelcontextprotocol/servers)
* [OpenClaw](https://openclaw.ai/)
* [OpenCode](https://opencode.ai/)
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

* [Braintrust](https://www.braintrust.dev/)
* [Inspect](https://inspect.aisi.org.uk/) - Evaluation framework from the UK AI Security Institute
* [Langfuse](https://langfuse.com/) - Tracing, prompt management, and evaluation
* [promptfoo](https://www.promptfoo.dev/) - Prompt testing and red-teaming from the command line

### Software development tools

* [Aider](https://aider.chat/)
* [Antigravity](https://antigravity.google/) by Google - Agent platform; the IDE plus [Antigravity CLI](https://antigravity.google/product/antigravity-cli)
  * Supersedes [Gemini CLI](https://github.com/google-gemini/gemini-cli), which stopped serving consumer tiers (AI Pro/Ultra, free Code Assist) on 2026-06-18. The repo still gets releases and enterprise access is unchanged, but new work goes to Antigravity CLI - see the [transition notice](https://developers.googleblog.com/an-important-update-transitioning-gemini-cli-to-antigravity-cli/)
* [Augment Code](https://www.augmentcode.com/)
* [Claude Code](https://code.claude.com/docs/en/overview)
* [Cline](https://github.com/cline/cline)
* [Continue](https://www.continue.dev/)
* [./Cursor](./cursor.md)
* [GitHub Copilot for VS Code](https://code.visualstudio.com/docs/copilot/overview)
* [goose](https://github.com/block/goose) - Open source agent from Block; CLI and desktop, any model, MCP extensions
* [Kilo Code](https://github.com/Kilo-Org/kilocode)
* [OpenAI Codex CLI](https://github.com/openai/codex)
* [Roo Code](https://github.com/RooVetGit/Roo-Code)
  * [Community Projects](https://docs.roocode.com/community)
* [Windsurf Editor](https://windsurf.com/editor)
* [Zed](https://zed.dev/)

## Articles and blogs
* [Building effective agents](https://www.anthropic.com/engineering/building-effective-agents) - Start with the simplest thing that works; most "agent" problems are a workflow
* [Claude Code: Best practices for agentic coding](https://www.anthropic.com/engineering/claude-code-best-practices)
* [Effective context engineering for AI agents](https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents)
* [Gemini - Prompting guide 101](https://services.google.com/fh/files/misc/gemini-for-google-workspace-prompting-guide-101.pdf)
* [GPT 4.1 Prompting Guide](https://cookbook.openai.com/examples/gpt4-1_prompting_guide) - Written for GPT-4.1; the model-specific parts have dated, the structure hasn't
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
