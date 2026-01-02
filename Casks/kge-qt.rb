cask "kge-qt" do
  version "1.5.6"
  sha256 "a2227cc106e5c97ef154db679d891ac5ebee1630433cd6cd3648e315b6f33e47"

  url "https://github.com/kisom/kte/releases/download/v1.5.3/kge-qt.app.zip"
  desc "kyle's text editor (Qt build)"
  homepage "https://github.com/kisom/kte"

  app "kge-qt.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge-qt.app"],
                   sudo: false
  end
end
