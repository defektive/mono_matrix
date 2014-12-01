require 'semver'

module MonoMatrix

  VERSION = SemVer.find.format "%M.%m.%p%s%d"
end
