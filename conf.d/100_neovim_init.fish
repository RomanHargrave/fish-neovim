# Init hook for NVim support.
# NVim support requires python 2 to talk to neovim

# Locate installation point.
# Dir topology expected
#
# <installed location>
# |- bin/               
# |  |- <IPC Helper>
# |- conf.d/
# |  |- <this file>
# |- lib/
# |  |- <plugin source>
set -gx __neovim_plugin_base (realpath (dirname (readlink (status -f)))/..)

if set -q NVIM_LISTEN_ADDRESS
    source $__neovim_plugin_base/lib/neovim.fish
    __neovim_define_helpers
end
