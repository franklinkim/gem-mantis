require "git"
require "thor"

module Mantis
  class CLI < Thor
    include Thor::Actions

    default_task :install
    class_option "verbose",  :type => :boolean, :banner => "Enable verbose output mode", :aliases => "-v"

    desc "install", "Install the current environment to the system"
    long_desc <<-D
      Install will install all of the git repositories in the current bundle, making them
      available for use. In a freshly checked out repository, this command will give you the same
      git repository versions as the last person who updated the Mantisfile and ran `mantis update`.
    D
    def install
      require 'mantis/cli/install'
      Install.new(options.dup).run
    end

  end
end