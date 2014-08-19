require "git"

module Mantis
  class Installer

    # Begins the installation process for Bundler.
    # For more information see the #run method on this class.
    def self.install(options = {})
      installer = new()
      installer.run(options)
      installer
    end

    def run(options)
      config = "Mantisfile"
      raise Thor::Error, "No Mantisfile file found!" unless File.exists?(config)

      text = File.open(config).read
      text.gsub!(/\r\n?/, "\n")
      text.each_line do |line|

        next if line.strip! == ""

        uri, tag, name = line.split(',')

        if Dir.exists?(name.strip)
          puts "Entering #{uri.strip} in #{name.strip}"
          g = Git.open(name.strip)
        else
          puts "Cloning #{uri.strip} to #{name.strip}..."
          g = Git.clone(uri.strip, name.strip)
        end

        g.chdir do
          g.checkout(tag.strip)
          puts "Checking out #{tag.strip}"
        end
      end

    end
  end
end
