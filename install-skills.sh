#!/bin/bash
# 高中学习AI辅助Skill包 — 跨Agent一键安装脚本 v1.0
# 仓库: https://github.com/Neocher/high-school-skills
# 用法: bash install-skills.sh [agent-type]
# agent-type: hermes | claude-code | codex | cursor | windsurf | copilot | cline

REPO="https://github.com/Neocher/high-school-skills"
AGENT=${1:-hermes}

echo "=============================="
echo "高中学习AI辅助Skill包 一键安装"
echo "Agent: $AGENT"
echo "=============================="

# 下载仓库
echo "==> 下载技能包..."
if command -v gh &>/dev/null; then
  gh repo clone Neocher/high-school-skills /tmp/hs-skills 2>/dev/null
else
  if command -v curl &>/dev/null; then
    curl -L -o /tmp/hs-skills.zip "$REPO/archive/refs/heads/main.zip"
  else
    wget -O /tmp/hs-skills.zip "$REPO/archive/refs/heads/main.zip"
  fi
  unzip -qo /tmp/hs-skills.zip -d /tmp/hs-skills-tmp
  mkdir -p /tmp/hs-skills
  mv /tmp/hs-skills-tmp/high-school-skills-main/* /tmp/hs-skills/
  rm -rf /tmp/hs-skills-tmp /tmp/hs-skills.zip
fi

# 安装到指定Agent
case "$AGENT" in
  hermes)
    mkdir -p ~/.hermes/skills/education
    cp -r /tmp/hs-skills/skills/* ~/.hermes/skills/education/
    echo "✅ 已安装到 Hermes: ~/.hermes/skills/education/"
    echo "   重启: systemctl --user restart hermes-gateway"
    ;;
  claude-code)
    mkdir -p .claude/skills
    cp -r /tmp/hs-skills/skills/* .claude/skills/
    echo "✅ 已安装到 Claude Code: .claude/skills/"
    ;;
  codex)
    mkdir -p ~/.codex/rules
    cp /tmp/hs-skills/portable/*.md ~/.codex/rules/
    echo "✅ 已安装到 Codex CLI: ~/.codex/rules/"
    echo "   请重启 Codex 桌面版"
    ;;
  cursor)
    mkdir -p .cursor/rules
    for skill in math chinese physics chemistry biology; do
      case "$skill" in
        math|chinese|physics|chemistry|biology)
          cp "/tmp/hs-skills/skills/${skill}-exam-master/SKILL.md" ".cursor/rules/${skill}-80plus.mdc"
          ;;
      esac
    done
    cp "/tmp/hs-skills/skills/classical-chinese-analyzer/SKILL.md" ".cursor/rules/classical-chinese.mdc"
    cp "/tmp/hs-skills/skills/english-study-analyzer/SKILL.md" ".cursor/rules/english-study.mdc"
    echo "✅ 已安装到 Cursor: .cursor/rules/"
    ;;
  windsurf)
    mkdir -p .windsurf/rules
    cp /tmp/hs-skills/portable/*.md .windsurf/rules/
    echo "✅ 已安装到 Windsurf: .windsurf/rules/"
    ;;
  copilot)
    mkdir -p .github
    cat /tmp/hs-skills/portable/*.md >> .github/copilot-instructions.md
    echo "✅ 已安装到 GitHub Copilot: .github/copilot-instructions.md"
    ;;
  cline)
    for f in /tmp/hs-skills/portable/*.md; do
      echo -e "\n---\n" >> .clinerules
      cat "$f" >> .clinerules
    done
    echo "✅ 已安装到 Cline/Roo Code: .clinerules"
    ;;
  *)
    echo "❌ 不支持的Agent类型: $AGENT"
    echo "可选: hermes | claude-code | codex | cursor | windsurf | copilot | cline"
    rm -rf /tmp/hs-skills
    exit 1
    ;;
esac

# 清理
rm -rf /tmp/hs-skills /tmp/hs-skills.zip 2>/dev/null

echo ""
echo "🎉 安装完成！已安装以下技能:"
echo "   数学80+提分   → 六大模块+解答题模板+选填快解"
echo "   语文80+提分   → 现代文阅读+古诗鉴赏+作文+语用"
echo "   英语分析      → 语法精讲+词根词缀+全文翻译"
echo "   物理80+提分   → 30个核心模型+六大题型模板"
echo "   化学80+提分   → 三大压轴题模型+方程式50条"
echo "   生物80+提分   → 八大长句模板+遗传九大题型"
echo "   文言文分析    → 逐句翻译+18虚词+120实词"
echo ""
echo "📖 使用示例:"
echo "   输入 '帮我分析这道物理题' → 触发物理Skill"
echo "   输入 '分析这段文言文'     → 触发文言文Skill"
echo ""
echo "🔗 仓库: https://github.com/Neocher/high-school-skills"
