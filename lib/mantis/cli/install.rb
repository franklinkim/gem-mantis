module Mantis
  class CLI::Install
    attr_reader :options

    def initialize(options)
      @options = options.dup
    end

    def run
      Installer.install(options)
      puts "Your bundle is complete!"
    end

  end
end
