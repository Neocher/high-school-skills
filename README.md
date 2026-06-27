# 高中学习AI辅助Skill包

> **物理 80+提分 · 化学 80+提分 · 生物 80+提分 · 文言文分析**
>
> 跨Agent格式，兼容 Hermes / Claude Code / Codex CLI / Cursor / Windsurf

## 📦 包含的Skill

| Skill | 说明 | 目标 |
|:------|:-----|:----|
| `physics-exam-master` | 物理80+提分助手 | 30个核心模型+六大题型模板+实验五步法 |
| `chemistry-exam-master` | 化学80+提分助手 | 三大压轴题模型+方程式50条+化学反应原理 |
| `biology-exam-master` | 生物80+提分助手 | 八大长句表达模板+遗传九大题型+实验五要素 |
| `classical-chinese-analyzer` | 文言文分析助手 | 逐句翻译+18虚词+120实词+特殊句式+高考题型训练 |
| `english-study-analyzer` | 英语学习分析助手 | 语法精讲+词根词缀+全文翻译+配套练习 |

## 🚀 快速安装

### Hermes Agent

```bash
# 克隆到 Hermes skills 目录
cd ~/.hermes/skills/education/
git clone https://github.com/Neocher/high-school-skills.git

# 或者只复制需要的 skill
cp -r high-school-skills/skills/physics-exam-master ~/.hermes/skills/education/
```

### Claude Code

```bash
cd your-project
git clone https://github.com/Neocher/high-school-skills.git
cp -r high-school-skills/skills/* ~/.claude/skills/
```

### Codex CLI

```bash
cd ~/.codex/rules/
git clone https://github.com/Neocher/high-school-skills.git
# 或复制具体skill的markdown文件
cp ../high-school-skills/skills/physics-exam-master/SKILL.md ./physics-exam-master.md
```

### Cursor

```bash
# Cursor 支持 .cursor/rules/ 目录
cd .cursor/rules/
cp -r ../high-school-skills/skills/physics-exam-master/SKILL.md ./physics-exam-master.mdc
```

### 手动安装（通用方式）

在任何AI Agent对话中粘贴以下内容即可激活：

```
请加载 physics-exam-master skill：https://github.com/Neocher/high-school-skills/blob/main/skills/physics-exam-master/SKILL.md
```

## 📁 目录结构

```
high-school-skills/
├── README.md                    # 本文件（使用说明）
├── INSTALL.md                   # 各平台详细安装指南
├── skills/                      # Hermes/Claude Code 原生 SKILL.md 格式
│   ├── physics-exam-master/
│   │   ├── SKILL.md             # 主skill文件
│   │   └── test-prompts.json    # 测试用例
│   ├── chemistry-exam-master/
│   │   ├── SKILL.md
│   │   └── test-prompts.json
│   ├── biology-exam-master/
│   │   ├── SKILL.md
│   │   └── test-prompts.json
│   ├── classical-chinese-analyzer/
│   │   ├── SKILL.md
│   │   └── test-prompts.json
│   └── english-study-analyzer/  # 注意：此skill有references依赖
│       ├── SKILL.md
│       ├── references/
│       └── scripts/
├── portable/                    # 纯Markdown版本（万用格式）
│   ├── physics-80plus.md
│   ├── chemistry-80plus.md
│   ├── biology-80plus.md
│   └── classical-chinese.md
├── cursor-rules/                # Cursor 专用 .mdc 格式
│   ├── physics-exam-master.mdc
│   ├── chemistry-exam-master.mdc
│   ├── biology-exam-master.mdc
│   └── classical-chinese-analyzer.mdc
└── codify-rules/               # Codex CLI / Windsurf 规则格式
    ├── physics-exam-master.md
    ├── chemistry-exam-master.md
    ├── biology-exam-master.md
    └── classical-chinese-analyzer.md
```

## 🔄 跨Agent兼容性

| Agent | SKILL.md | 纯Markdown | .mdc | 直接复制 |
|:------|:--------:|:----------:|:----:|:--------:|
| Hermes Agent | ✅ | ✅ | ❌ | ✅ `~/.hermes/skills/` |
| Claude Code | ✅ | ✅ | ❌ | ✅ `.claude/skills/` |
| Codex CLI | ⚠️ | ✅ | ❌ | ✅ `.codex/rules/` |
| Cursor | ❌ | ✅ | ✅ | ✅ `.cursor/rules/` |
| Windsurf | ❌ | ✅ | ❌ | ✅ `.windsurf/rules/` |
| GitHub Copilot | ❌ | ✅ | ❌ | ✅ `.github/copilot-instructions.md` |
| Cline/Roo Code | ❌ | ✅ | ❌ | ✅ `.clinerules` |
| 通用对话 | ❌ | ✅ | ❌ | 粘贴文字即可 |

## 📝 使用示例

```
我：帮我复习高中物理力学，列出所有公式及其适用条件
→ Agent加载 physics-exam-master skill，按80+标准输出

我：分析这段文言文：
"师者，所以传道受业解惑也。人非生而知之者，孰能无惑？"
→ Agent加载 classical-chinese-analyzer skill，逐句翻译+虚词标注
```

## ⚙️ 达尔文优化

所有Skill已通过达尔文进化工具的8维度评估和优化，包括：
- 边界声明（什么不做）
- 步骤间检查点
- 完整示例（无截断）
- 工具集成（与web_search/read_file等联动）
- 版本记录

## 📄 许可

MIT License
