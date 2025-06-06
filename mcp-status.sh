#!/bin/bash

# MCP Status Checker - Shows current profile and reminds about switching

PROFILES_DIR="$HOME/.cursor/mcp-profiles"
MCP_CONFIG="$HOME/.cursor/mcp.json"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}🔧 MCP Profile Status${NC}"
echo "=========================="

# Check if MCP config exists
if [ ! -f "$MCP_CONFIG" ]; then
    echo -e "${RED}❌ No MCP config found${NC}"
    exit 1
fi

# Count active MCPs
MCP_COUNT=$(jq '.mcpServers | length' "$MCP_CONFIG" 2>/dev/null || echo "0")

# Determine current profile by comparing with profile files
CURRENT_PROFILE="unknown"
for profile in essential development research automation full-backup; do
    if [ -f "$PROFILES_DIR/${profile}.json" ]; then
        if cmp -s "$MCP_CONFIG" "$PROFILES_DIR/${profile}.json"; then
            CURRENT_PROFILE="$profile"
            break
        fi
    fi
done

# Display current status
echo -e "${GREEN}📊 Current Profile:${NC} $CURRENT_PROFILE"
echo -e "${GREEN}🔌 Active MCPs:${NC} $MCP_COUNT"

if [ "$MCP_COUNT" -gt 8 ]; then
    echo -e "${YELLOW}⚠️  High MCP count - consider switching to a lighter profile${NC}"
fi

echo ""
echo -e "${BLUE}📋 Available Profiles:${NC}"
echo "  • essential (4)    - Daily coding"
echo "  • development (8)  - Active projects"  
echo "  • research (7)     - Research & content"
echo "  • automation (7)   - Testing & data"
echo "  • full-backup (22) - All MCPs"

echo ""
echo -e "${BLUE}🚀 Quick Switch:${NC}"
echo "  cd ~/.cursor/mcp-profiles && ./switch-profile.sh [profile-name]"

# Show active MCP list if jq is available
if command -v jq &> /dev/null && [ "$MCP_COUNT" -gt 0 ]; then
    echo ""
    echo -e "${BLUE}🔌 Active MCPs:${NC}"
    jq -r '.mcpServers | keys[]' "$MCP_CONFIG" | sed 's/^/  • /' | head -10
    if [ "$MCP_COUNT" -gt 10 ]; then
        echo "  ... and $((MCP_COUNT - 10)) more"
    fi
fi