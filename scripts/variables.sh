VAR_KEY_PREFIX="@sidebar-key"
REGISTERED_PANE_PREFIX="@-sidebar-registered-pane"
REGISTERED_SIDEBAR_PREFIX="@-sidebar-is-sidebar"
MINIMUM_WIDTH_FOR_SIDEBAR="71"

TREE_KEY="Tab"
TREE_OPTION="@sidebar-tree"

TREE_FOCUS_KEY="Bspace"
TREE_FOCUS_OPTION="@sidebar-tree-focus"

TREE_COMMAND="tree"
TREE_COMMAND_OPTION="@sidebar-tree-command"

TREE_PAGER='sh -c "LESS= less --dumb --chop-long-lines --tilde --IGNORE-CASE --RAW-CONTROL-CHARS"'
TREE_PAGER_OPTION="@sidebar-tree-pager"

TREE_POSITION="left"
TREE_POSITION_OPTION="@sidebar-tree-position"

TREE_WIDTH="40"
TREE_WIDTH_OPTION="@sidebar-tree-width"

SUPPORTED_TMUX_VERSION="1.9"

SIDEBAR_DIR_XDG="${XDG_CONFIG_HOME:-$HOME/.config}/tmux/sidebar"
SIDEBAR_DIR_OLD="$HOME/.tmux/sidebar"
if [ -d "$SIDEBAR_DIR_XDG" ]; then
	SIDEBAR_DIR="$SIDEBAR_DIR_XDG"
elif [ -d "$SIDEBAR_DIR_OLD" ]; then
	SIDEBAR_DIR="$SIDEBAR_DIR_OLD"
else
	SIDEBAR_DIR="$SIDEBAR_DIR_XDG"
fi
unset SIDEBAR_DIR_XDG SIDEBAR_DIR_DEFAULT
