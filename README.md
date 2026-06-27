# 高中学习AI辅助Skill包 — 六科全覆盖

> **语数外物化生** 全科80+提分辅助
> 
> 跨Agent格式，兼容 Hermes / Claude Code / Codex CLI / Cursor / Windsurf

## 📦 六科Skill一览

| 学科 | Skill | 核心功能 | 状态 |
|:---:|:------|:---------|:----:|
| 📖 **语文** | `chinese-exam-master` | 现代文阅读模板+古诗词鉴赏框架+议论文六段式+语用题型 | ✅ **新增** |
| 📖 **语文·文言文** | `classical-chinese-analyzer` | 逐句翻译+虚词/实词/句式/通假字+断句训练 | ✅ 已有 |
| 🔢 **数学** | `math-exam-master` | 六大模块+解答题标准模板+选填快解技巧+导数压轴策略 | ✅ **新增** |
| 🌍 **英语** | `english-study-analyzer` | 逐句中英对照+语法精讲+词根词缀+配套练习 | ✅ 已有 |
| ⚡ **物理** | `physics-exam-master` | 30个核心模型+实验五步法+计算规范+80+策略 | ✅ 已有 |
| 🧪 **化学** | `chemistry-exam-master` | 三大压轴题模型+方程式50条+化学反应原理+工艺流程 | ✅ 已有 |
| 🧬 **生物** | `biology-exam-master` | 八大长句模板+遗传九大题型+实验五要素+易混概念 | ✅ 已有 |

## 🚀 一键安装

```bash
# 方式一：gh（推荐）
gh repo clone Neocher/high-school-skills /tmp/skills
cp -r /tmp/skills/skills/* 【对应Agent的安装目录】

# 方式二：curl（无GitHub环境）
curl -L -o /tmp/s.zip https://github.com/Neocher/high-school-skills/archive/main.zip
unzip /tmp/s.zip -d /tmp/ && cp -r /tmp/high-school-skills-main/skills/* 【安装目录】

# 方式三：一键脚本（最推荐）
bash <(curl -L https://github.com/Neocher/high-school-skills/raw/main/install-skills.sh) hermes
# 替换 hermes 为: claude-code | codex | cursor | windsurf | copilot | cline
```

### 各Agent安装目录

| Agent | 安装目录 | 重启方式 |
|:------|:---------|:---------|
| Hermes | `~/.hermes/skills/education/` | `systemctl --user restart hermes-gateway` |
| Claude Code | `.claude/skills/` | 重启终端 |
| Codex CLI | `~/.codex/rules/` | 重启桌面版 |
| Cursor | `.cursor/rules/` | 重启编辑器 |
| Windsurf | `.windsurf/rules/` | 重启IDE |

## 📁 目录结构

```
high-school-skills/
├── README.md
├── install-skills.sh          # 一键安装脚本
├── skills/                    # SKILL.md 原生格式
│   ├── math-exam-master/          数学80+提分  ✅ NEW
│   ├── chinese-exam-master/       语文80+提分  ✅ NEW
│   ├── physics-exam-master/       物理80+提分
│   ├── chemistry-exam-master/     化学80+提分
│   ├── biology-exam-master/       生物80+提分
│   ├── classical-chinese-analyzer/ 文言文分析
│   └── english-study-analyzer/    英语学习分析
└── portable/                  # 纯Markdown版（万用格式）
    ├── math.md
    ├── chinese.md
    ├── physics.md
    ├── chemistry.md
    ├── biology.md
    └── classical-chinese.md
```

## 📝 快速使用

### 语文
```
"帮我分析这段现代文阅读..."
"这篇作文怎么写？给我六段式结构"
"分析这首古诗用了什么手法"
"这些成语题帮我做一下"
```

### 数学
```
"帮我解这道导数压轴题"
"圆锥曲线大题的标准模板"
"数列求通项公式的方法总结"
"选填快解技巧训练"
```

### 英语
```
"分析这篇英语文章的语法和重点词汇"
"逐句中英对照翻译这个段落"
"给我生成完形填空练习"
```

### 物理/化学/生物
```
"帮我分析这道受力分析题"（物理）
"配平这个氧化还原方程式"（化学）
"这道遗传概率怎么算"（生物）
```

## 🔗 仓库
https://github.com/Neocher/high-school-skills
