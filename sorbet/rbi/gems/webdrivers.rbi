# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/webdrivers/all/webdrivers.rbi
#
# webdrivers-5.2.0

module Webdrivers
end
class Webdrivers::Network
end
class Webdrivers::System
end
class Webdrivers::Logger < Selenium::WebDriver::Logger
end
class Webdrivers::ConnectionError < StandardError
end
class Webdrivers::VersionError < StandardError
end
class Webdrivers::NetworkError < StandardError
end
class Webdrivers::BrowserNotFound < StandardError
end
class Webdrivers::Common
end
class Webdrivers::ChromeFinder
end
class Webdrivers::Chromedriver < Webdrivers::Common
end
class Webdrivers::Geckodriver < Webdrivers::Common
end
class Webdrivers::EdgeFinder
end
class Webdrivers::Edgedriver < Webdrivers::Chromedriver
end
class Webdrivers::IEdriver < Webdrivers::Common
end
class Webdrivers::Railtie < Rails::Railtie
end
