require 'fastlane/action'
require_relative '../helper/niels_helper'

module Fastlane
  module Actions
    class NielsAction < Action
      def self.run(params)
        require 'rqrcode'

        qrcode = RQRCode::QRCode.new("https://www.youtube.com/watch?v=dQw4w9WgXcQ")

        # NOTE: showing with default options specified explicitly
        svg = qrcode.as_ansi(
          light: "\033[47m", dark: "\033[40m",
          fill_character: '  ',
          quiet_zone_size: 4
        )

        puts(svg)
      end

      def self.description
        "its my own plugin"
      end

      def self.authors
        ["Niels Robben"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        # Optional:
        "my very own plugin"
      end

      def self.available_options
        [
          # FastlaneCore::ConfigItem.new(key: :your_option,
          #                         env_name: "NIELS_YOUR_OPTION",
          #                      description: "A description of your option",
          #                         optional: false,
          #                             type: String)
        ]
      end

      def self.is_supported?(platform)
        # Adjust this if your plugin only works for a particular platform (iOS vs. Android, for example)
        # See: https://docs.fastlane.tools/advanced/#control-configuration-by-lane-and-by-platform
        #
        # [:ios, :mac, :android].include?(platform)
        true
      end
    end
  end
end
