$LOAD_PATH << "/Users/chuck/Projects/xiki/lib/"
# $LOAD_PATH << "/projects/xiki/lib/"
require 'xiki'
Xiki.init
Xiki::KeyShortcuts.keys   # Use default key shortcuts
Xiki::Themes.use "Default"  # Use xiki theme
