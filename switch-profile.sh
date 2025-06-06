#!/bin/bash

# MCP Profile Switcher for Cursor
# Usage: ./switch-profile.sh [profile-name]

PROFILES_DIR="$HOME/.cursor/mcp-profiles"
MCP_CONFIG="$HOME/.cursor/mcp.json"

# Available profiles
PROFILES=("essential" "development" "research" "automation" "full-backup")

show_usage() {
    echo "Usage: $0 [profile-name]"
    echo ""
    echo "Available profiles:"
    for profile in "${PROFILES[@]}"; do
        echo "  - $profile"
    done
    echo ""
    echo "Examples:"
    echo "  $0 essential     # Switch to minimal essential MCPs"
    echo "  $0 development   # Switch to development-focused MCPs"
    echo "  $0 research      # Switch to research-focused MCPs"
    echo "  $0 automation    # Switch to automation-focused MCPs"
    echo "  $0 full-backup   # Restore full original configuration"
}

if [ $# -eq 0 ]; then
    show_usage
    exit 1
fi

PROFILE="$1"

# Check if profile exists
if [[ ! " ${PROFILES[@]} " =~ " ${PROFILE} " ]]; then
    echo "Error: Profile '$PROFILE' not found."
    show_usage
    exit 1
fi

PROFILE_FILE="$PROFILES_DIR/${PROFILE}.json"

if [ ! -f "$PROFILE_FILE" ]; then
    echo "Error: Profile file '$PROFILE_FILE' not found."
    exit 1
fi

# Create backup of current config
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
cp "$MCP_CONFIG" "$PROFILES_DIR/backup_${TIMESTAMP}.json"

# Switch to new profile
cp "$PROFILE_FILE" "$MCP_CONFIG"

echo "✅ Switched to '$PROFILE' profile"
echo "📁 Backup saved as: backup_${TIMESTAMP}.json"
echo "🔄 Please restart Cursor to apply changes"

# Show active MCPs
echo ""
echo "Active MCPs in '$PROFILE' profile:"
if command -v jq &> /dev/null; then
    jq -r '.mcpServers | keys[]' "$MCP_CONFIG" | sed 's/^/  - /'
else
    echo "  (Install 'jq' to see MCP list)"
fi