module TheBathOfZahn
  module Utility
    class Extractor
      def rules_plain
        @rules_plain ||=
          rules_styleguide.reject { |key, _value| key =~ %r{^Rails/} }
      end

      private

      def rules_settings
        @rules_settings ||=
          begin
            path = File.join(path_to_rubocop, "config", "default.yml")
            YAML.load_file(path)
          end
      end

      def rules_enabled
        @rules_enabled ||=
          begin
            path = File.join(path_to_rubocop, "config", "enabled.yml")
            YAML.load_file(path)
          end
      end

      def rules_styleguide
        @rules_styleguide ||=
          rules_enabled.select { |_, v| v["StyleGuide"] }
            .map { |name, config| [name, config.merge(settings_for(name))] }
            .to_h
      end

      def settings_for(name)
        rules_settings[name] || {}
      end

      def path_to_rubocop
        `bundle show rubocop`.chomp
      end
    end
  end
end
