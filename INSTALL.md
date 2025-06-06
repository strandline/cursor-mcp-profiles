# MCP Management System Installation

## 🚀 Quick Setup

### 1. Download and Install Files
```bash
# Create the directory
mkdir -p ~/.cursor/mcp-profiles

# Download files from this repository
cd ~/.cursor/mcp-profiles
curl -O https://raw.githubusercontent.com/strandline/cursor-mcp-profiles/main/essential.json
curl -O https://raw.githubusercontent.com/strandline/cursor-mcp-profiles/main/development.json
curl -O https://raw.githubusercontent.com/strandline/cursor-mcp-profiles/main/research.json
curl -O https://raw.githubusercontent.com/strandline/cursor-mcp-profiles/main/automation.json
curl -O https://raw.githubusercontent.com/strandline/cursor-mcp-profiles/main/full-backup.json
curl -O https://raw.githubusercontent.com/strandline/cursor-mcp-profiles/main/switch-profile.sh
curl -O https://raw.githubusercontent.com/strandline/cursor-mcp-profiles/main/mcp-status.sh
curl -O https://raw.githubusercontent.com/strandline/cursor-mcp-profiles/main/weekly-reminder.sh

# Make scripts executable
chmod +x ~/.cursor/mcp-profiles/*.sh
```

### 2. Add Shell Aliases
Add these convenient aliases to your shell configuration:

**For zsh users (~/.zshrc):**
```bash
cat >> ~/.zshrc << 'ALIASES'

# MCP Profile Management Aliases
alias mcp-status="~/.cursor/mcp-profiles/mcp-status.sh"
alias mcp-switch="cd ~/.cursor/mcp-profiles && ./switch-profile.sh"
alias mcp-essential="cd ~/.cursor/mcp-profiles && ./switch-profile.sh essential"
alias mcp-dev="cd ~/.cursor/mcp-profiles && ./switch-profile.sh development"
alias mcp-research="cd ~/.cursor/mcp-profiles && ./switch-profile.sh research"
alias mcp-automation="cd ~/.cursor/mcp-profiles && ./switch-profile.sh automation"
alias mcp-full="cd ~/.cursor/mcp-profiles && ./switch-profile.sh full-backup"
ALIASES

source ~/.zshrc
```

**For bash users (~/.bashrc):**
```bash
cat >> ~/.bashrc << 'ALIASES'

# MCP Profile Management Aliases
alias mcp-status="~/.cursor/mcp-profiles/mcp-status.sh"
alias mcp-switch="cd ~/.cursor/mcp-profiles && ./switch-profile.sh"
alias mcp-essential="cd ~/.cursor/mcp-profiles && ./switch-profile.sh essential"
alias mcp-dev="cd ~/.cursor/mcp-profiles && ./switch-profile.sh development"
alias mcp-research="cd ~/.cursor/mcp-profiles && ./switch-profile.sh research"
alias mcp-automation="cd ~/.cursor/mcp-profiles && ./switch-profile.sh automation"
alias mcp-full="cd ~/.cursor/mcp-profiles && ./switch-profile.sh full-backup"
ALIASES

source ~/.bashrc
```

### 3. Configure API Keys
Replace the placeholder API keys in the JSON files with your actual keys:

**Required API Keys:**
- `YOUR_GITHUB_PERSONAL_ACCESS_TOKEN_HERE` → Your GitHub personal access token
- `YOUR_BRAVE_API_KEY_HERE` → Your Brave Search API key  
- `YOUR_PERPLEXITY_API_KEY_HERE` → Your Perplexity API key
- `YOUR_OPENROUTER_API_KEY_HERE` → Your OpenRouter API key

**Example:**
```bash
# Edit the files to add your API keys
nano ~/.cursor/mcp-profiles/development.json
nano ~/.cursor/mcp-profiles/research.json
# etc.
```

### 4. Copy Workspace Cheatsheet (Optional)
```bash
curl -O https://raw.githubusercontent.com/strandline/cursor-mcp-profiles/main/MCP-PROFILES-CHEATSHEET.md
cp MCP-PROFILES-CHEATSHEET.md ~/Workspace/
```

### 5. Start with Essential Profile
```bash
mcp-essential
# This will create your initial MCP configuration
```

### 6. Restart Cursor
**Important**: Restart Cursor completely to apply the new MCP configuration.

## 🔑 Obtaining API Keys

### GitHub Personal Access Token
1. Go to [GitHub Settings > Personal Access Tokens](https://github.com/settings/tokens)
2. Click "Generate new token (classic)"
3. Set expiration and select scopes: `repo`, `user`, `gist`
4. Copy the token and replace `YOUR_GITHUB_PERSONAL_ACCESS_TOKEN_HERE`

### Brave Search API Key
1. Visit [Brave Search API](https://api.search.brave.com/)
2. Sign up and get your API key
3. Replace `YOUR_BRAVE_API_KEY_HERE` in the configuration

### Perplexity API Key
1. Go to [Perplexity Settings](https://www.perplexity.ai/settings/api)
2. Generate an API key
3. Replace `YOUR_PERPLEXITY_API_KEY_HERE`

### OpenRouter API Key
1. Visit [OpenRouter Keys](https://openrouter.ai/keys)
2. Create an API key
3. Replace `YOUR_OPENROUTER_API_KEY_HERE`

## ✅ Verification

After installation, verify everything works:

```bash
# Check status
mcp-status

# Test profile switching
mcp-essential
# Restart Cursor and verify 4 MCPs are loaded

mcp-dev  
# Restart Cursor and verify 8 MCPs are loaded
```

## 🔧 Troubleshooting

### Scripts Not Executable
```bash
chmod +x ~/.cursor/mcp-profiles/*.sh
```

### Aliases Not Working
```bash
# Reload shell configuration
source ~/.zshrc  # or ~/.bashrc
```

### MCPs Not Loading
1. Check that API keys are correctly configured
2. Verify file paths in JSON configurations match your system
3. Check Cursor developer console for errors
4. Ensure you've restarted Cursor after switching profiles

### Need Help?
- Check the main [README.md](README.md) for detailed documentation
- Look at the [cheatsheet](MCP-PROFILES-CHEATSHEET.md) for quick reference
- Verify your configuration with `mcp-status`

---

**🎉 You're all set!** Start with `mcp-essential` for daily work and switch profiles as needed.