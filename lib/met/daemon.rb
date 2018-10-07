module Met
  class Daemon
    def self.daemon
      @@daemon
    end

    def initialize
      @@daemon ||= self
    end

    def mainloop
      loop do
      end
    rescue Interrupt
    end

    class CLI < Thor
      default_task :up

      desc 'up', 'Start daemon'
      option 'help'

      def up
        if options[:help]
          CLI.command_help(Thor::Base.shell.new, 'up')
          return
        end

        Daemon.daemon.mainloop
      end
    end

    def run(argv = ARGV)
      argv.unshift(CLI.default_task)
      CLI.start(argv)
    end
  end

  class Application
    def daemon
      @daemon ||= Daemon.new
    end
  end
end

