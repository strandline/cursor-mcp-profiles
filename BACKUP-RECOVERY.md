# 🔄 Backup & Recovery Guide

## 🎯 Overview

This repository serves as a **disaster recovery backup** for your MCP Profile Management System. If your computer crashes, gets replaced, or you need to set up MCP profiles on a new machine, you can restore everything quickly.

## 💾 What's Backed Up

### ✅ Complete Profile System
- **5 optimized MCP profiles** (essential, development, research, automation, full-backup)
- **Management scripts** (profile switcher, status monitor, reminders)
- **Documentation** (installation guide, quick reference, troubleshooting)
- **Shell aliases** for convenient access

### ✅ Security Features
- **API keys sanitized** - No sensitive credentials exposed
- **Safe for public sharing** - All tokens replaced with placeholders
- **Version controlled** - Track changes and improvements over time

## 🚨 Disaster Recovery

### Quick Restore (5 minutes)
```bash
# 1. Download and install core files
mkdir -p ~/.cursor/mcp-profiles
cd ~/.cursor/mcp-profiles

# Download all profile files
curl -O https://raw.githubusercontent.com/strandline/cursor-mcp-profiles/main/essential.json
curl -O https://raw.githubusercontent.com/strandline/cursor-mcp-profiles/main/development.json
curl -O https://raw.githubusercontent.com/strandline/cursor-mcp-profiles/main/switch-profile.sh
curl -O https://raw.githubusercontent.com/strandline/cursor-mcp-profiles/main/mcp-status.sh

# Make scripts executable
chmod +x *.sh

# 2. Add shell aliases (see INSTALL.md for details)
# 3. Configure your API keys in the JSON files
# 4. Start with essential profile
./switch-profile.sh essential
```

### Complete Restore
See [INSTALL.md](INSTALL.md) for full installation instructions.

## 🔄 Cross-Machine Sync

### Benefits
- **Consistent setup** across all your development machines
- **Performance optimizations** travel with you
- **No more manual MCP configuration** on new setups
- **Instant productivity** on any machine

### Use Cases
- **New laptop setup** - Get your MCP profiles running in minutes
- **Work vs personal machines** - Same optimized setup everywhere  
- **Team sharing** - Share profile strategies with colleagues
- **Backup paranoia** - Never lose your MCP configuration again

## 📊 Performance Impact Preservation

This backup preserves your **82% performance improvement**:
- **Before**: 22 active MCPs (slow, resource-heavy)
- **After**: 4-8 MCPs per profile (fast, focused)
- **Workflow optimization** maintained across all machines

## 🔧 Keeping Backups Updated

### Local Changes → GitHub
When you improve your local setup:

```bash
# 1. Create sanitized backup
~/.cursor/mcp-profiles/create-backup.sh

# 2. Update your GitHub repo with improvements
cd ~/.cursor/mcp-profiles/github-backup
# Copy/commit new changes to your repo
```

### GitHub → New Machine
```bash
# Pull latest improvements to a new machine
git clone https://github.com/strandline/cursor-mcp-profiles.git
cd cursor-mcp-profiles
# Follow INSTALL.md
```

## 🌍 Community Value

### Why This Matters
As **MCPs become more popular**, profile management becomes crucial:
- **Performance bottlenecks** from too many active MCPs
- **Workflow optimization** needs for different use cases  
- **Resource management** for development machines
- **Sharing best practices** across the developer community

### Your Contribution
Your backup repository demonstrates:
- **Professional MCP management** strategies
- **Performance optimization** techniques
- **Workflow-based organization** of AI tools
- **Practical solutions** to real MCP scaling problems

## 🎯 Recovery Scenarios

### Scenario 1: New Machine Setup
1. Clone this repository
2. Follow INSTALL.md
3. Add your API keys
4. Start with `mcp-essential`
5. **Result**: Full MCP system in 10 minutes

### Scenario 2: Cursor Reinstall
1. Your profiles are already in `~/.cursor/mcp-profiles/`
2. Just run `mcp-essential` to restore active config
3. **Result**: Instant restoration

### Scenario 3: Profile Corruption
1. Your backups are automatically created on every switch
2. Check `~/.cursor/mcp-profiles/backup_*.json`
3. Restore with `cp backup_TIMESTAMP.json ~/.cursor/mcp.json`
4. **Result**: Quick rollback to working state

### Scenario 4: Sharing with Team
1. Share this GitHub repository URL
2. Team follows INSTALL.md
3. Everyone gets optimized MCP setup
4. **Result**: Team-wide performance improvement

## 🔐 Security Notes

### What's Safe to Share
- ✅ Profile configurations (API keys removed)
- ✅ Management scripts  
- ✅ Documentation
- ✅ Installation procedures

### What to Keep Private
- ❌ Your actual API keys
- ❌ Personal file paths
- ❌ Active `mcp.json` with real credentials

### Best Practices
- **Never commit** files with real API keys
- **Always use** the sanitized backup script
- **Review changes** before pushing to GitHub
- **Use private repos** if you prefer extra security

---

**🎉 Your MCP setup is now disaster-proof!**

This backup system ensures your valuable optimization work survives any hardware failure, system reinstall, or machine migration. As MCPs become essential development tools, having reliable profile management becomes increasingly important.