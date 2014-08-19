require "git"
require "thor"

module Mantis
  class Cli < Thor

    default_task :install
    class_option "verbose",  :type => :boolean, :banner => "Enable verbose output mode", :aliases => "-V"


    desc "install [OPTIONS]", "Install the current environment to the system"
    long_desc <<-D
      Install will install all of the git repositories in the current bundle, making them
      available for use. In a freshly checked out repository, this command will give you the same
      git repository versions as the last person who updated the Gitfile and ran `mantis update`.
    D
    def install
      require 'mantis/cli/install'
      Install.new(options.dup).run
    end

    desc "install", "Install git repositories"
    def install
      config = ".mantis"
      raise Thor::Error, "No .mantis file found!" unless File.exists?(config)

      File.open(config).each do |line|
        print "#{line_num += 1} #{line}"
      end
    end
  end
end