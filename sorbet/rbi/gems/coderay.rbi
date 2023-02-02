# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: false
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/coderay/all/coderay.rbi
#
# coderay-1.1.3

module CodeRay
end
module CodeRay::PluginHost
end
class CodeRay::PluginHost::PluginNotFound < LoadError
end
class CodeRay::PluginHost::HostNotFound < LoadError
end
module CodeRay::Encoders
  extend CodeRay::PluginHost
end
module CodeRay::Plugin
end
class CodeRay::Encoders::Encoder
  extend CodeRay::Plugin
end
class CodeRay::Encoders::Terminal < CodeRay::Encoders::Encoder
end
module CodeRay::FileType
end
class CodeRay::FileType::UnknownFileType < Exception
end
class CodeRay::Tokens < Array
end
class CodeRay::TokensProxy
end
module CodeRay::Scanners
  extend CodeRay::PluginHost
end
class CodeRay::Scanners::Scanner < StringScanner
  extend CodeRay::Plugin
  include Enumerable
end
class CodeRay::Scanners::Scanner::ScanError < StandardError
end
class CodeRay::WordList < Hash
end
class CodeRay::WordList::CaseIgnoring < CodeRay::WordList
end
module CodeRay::Scanners::Java::BuiltinTypes
end
class CodeRay::Scanners::Java < CodeRay::Scanners::Scanner
end
class CodeRay::Scanners::Ruby < CodeRay::Scanners::Scanner
end
module CodeRay::Scanners::Ruby::Patterns
end
class CodeRay::Scanners::Ruby::StringState < Anonymous_Struct_48
end
class CodeRay::Encoders::HTML < CodeRay::Encoders::Encoder
end
module CodeRay::Encoders::HTML::Output
end
class CodeRay::Encoders::HTML::Output::Template < String
end
class CodeRay::Encoders::HTML::CSS
end
module CodeRay::Encoders::HTML::Numbering
end
module CodeRay::Styles
  extend CodeRay::PluginHost
end
class CodeRay::Styles::Style
  extend CodeRay::Plugin
end
class CodeRay::Duo
end