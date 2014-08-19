require "git"
require "thor"

module Hobbit
  class Cli < Thor

    desc "install", "Install git repositories"
    def install
      config = ".hobbit"
      raise Thor::Error, "No .hobbit file found!" unless File.exists?(config)

      File.open(config).each do |line|
        print "#{line_num += 1} #{line}"
      end
    end
  end
end