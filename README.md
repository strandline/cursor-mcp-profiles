# MCP Management System

## 🎯 Overview
This system organizes your MCPs (Model Context Protocols) into focused profiles for different use cases, dramatically improving IDE performance.

**Problem Solved**: Reduces active MCPs from 22 → 4 (82% reduction!) while maintaining full functionality when needed.

## 📊 Performance Impact

### Before: 22 Active MCPs
- Slow IDE startup and operation
- High memory usage
- All tools loaded regardless of need

### After: 4-8 MCPs per Profile
- ⚡ **82% faster** with essential profile
- 🎯 **Focused workflows** - only load what you need
- 🔄 **Easy switching** between profiles
- 📊 **Performance monitoring** with built-in warnings

## 🗂️ Available Profiles

| Profile | MCPs | Best For | Use Case |
|---------|------|----------|----------|
| **Essential** | 4 | Daily coding | `memory`, `filesystem`, `git`, `time` |
| **Development** | 8 | Active projects | Essential + `github`, `taskmanager`, `software-planning`, `sequential-thinking` |
| **Research** | 7 | Content creation | `memory`, `time` + search, obsidian, markdown tools |
| **Automation** | 7 | Testing & data | `memory`, `time` + browser automation, databases |
| **Full-Backup** | 22 | Emergency | All your original MCPs |

## 🚀 Quick Start

### 1. Installation
See [INSTALL.md](INSTALL.md) for complete setup instructions.

### 2. Daily Usage
```bash
mcp-status        # Check current profile
mcp-essential     # Switch to minimal setup (recommended daily)
mcp-dev          # Switch for development work
mcp-research     # Switch for research/writing
mcp-automation   # Switch for testing/automation
```

### 3. Profile Switching
```bash
cd ~/.cursor/mcp-profiles
./switch-profile.sh [profile-name]
# Restart Cursor after switching
```

## ⚡ Key Features

- **🔧 Smart Profile Management** - 5 optimized profiles for different workflows
- **📊 Performance Monitoring** - Built-in status checks and warnings
- **🔄 Automatic Backups** - Every switch creates a timestamped backup
- **🎯 Cross-IDE Support** - Manages Cursor, Windsurf, and VS Code separately
- **⚙️ Shell Integration** - Convenient aliases for quick switching
- **📋 Visual Reminders** - Workspace cheatsheet and status displays

## ⚠️ Important Notes

### MCP Settings Are IDE-Specific
- **Cursor**: `~/.cursor/mcp.json`
- **Windsurf**: `~/.codeium/windsurf/mcp_config.json`
- **VS Code**: Uses Cline extension (separate config)

### After Switching Profiles
1. **Restart the IDE** - Required for changes to take effect
2. **Check functionality** - Test that needed tools work
3. **Monitor performance** - Watch for improvements

## 🔑 Security

This repository contains **sanitized configurations** with API keys removed. After installation:
1. Replace `YOUR_*_TOKEN_HERE` placeholders with your actual API keys
2. Never commit files with real API keys to version control
3. Use the provided `.gitignore` to exclude sensitive files

## 📖 Documentation

- **[README.md](README.md)** - This overview (you are here)
- **[INSTALL.md](INSTALL.md)** - Complete installation instructions
- **[MCP-PROFILES-CHEATSHEET.md](MCP-PROFILES-CHEATSHEET.md)** - Quick reference guide

## 🎯 Recommended Workflow

1. **Daily Work**: Start with `mcp-essential` (4 MCPs)
2. **Development**: Switch to `mcp-dev` when coding projects
3. **Research**: Use `mcp-research` for content creation
4. **Testing**: Switch to `mcp-automation` for testing/data work
5. **Special Needs**: Temporarily use `mcp-full` when you need everything

## 🔧 Troubleshooting

### Profile Switch Not Working
```bash
chmod +x ~/.cursor/mcp-profiles/*.sh  # Make scripts executable
ls ~/.cursor/mcp-profiles/            # Verify files exist
# Restart Cursor completely
```

### MCPs Not Loading
1. Check API keys are configured correctly
2. Verify MCP server paths exist
3. Check Cursor developer console for errors

### Performance Still Slow
1. Use `mcp-essential` profile (only 4 MCPs)
2. Close unnecessary IDE instances
3. Check for other performance issues

## 🤝 Contributing

This system is designed to be:
- **Extensible** - Easy to add new profiles
- **Customizable** - Modify profiles for your workflow
- **Shareable** - Safe backup and restore across machines

Feel free to customize profiles for your specific needs!

## 📊 System Requirements

- **Cursor IDE** with MCP support
- **bash/zsh shell** for profile switching
- **jq** for JSON processing (optional, for enhanced status display)
- **Git** for version control integration

---

**🌟 Star this repo if it helped optimize your MCP setup!**

Made with ❤️ for the MCP community. As MCPs become more popular, efficient management becomes crucial for maintaining IDE performance while leveraging powerful AI tools.