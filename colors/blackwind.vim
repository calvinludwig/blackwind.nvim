lua << EOF
package.loaded['blackwind'] = nil
package.loaded['blackwind.util'] = nil
package.loaded['blackwind.colors'] = nil
package.loaded['blackwind.theme'] = nil
package.loaded['blackwind.functions'] = nil

require('blackwind').set()
EOF
