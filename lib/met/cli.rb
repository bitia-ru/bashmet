require 'thor'


module Met
  class CLI < Thor
    class Daemon < Thor
      desc 'up', 'Start daemon'

      def up
      end

      desc 'down', 'Stop daemon'

      def down
      end
    end

    desc 'daemon SUBCOMMAND ...ARGS', 'Manage met daemon'
    subcommand 'daemon', Daemon
  end
end

