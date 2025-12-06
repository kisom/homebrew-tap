cask "kge" do
  version "1.5.0"
  sha256 "d037ac220c810c2e47d7a81710ac1e2c0fb40447b8ea4e5bde8234364662179c"

  url "https://github.com/kisom/kte/releases/download/v1.5.0/kge.app.zip"
  desc "kyle's text editor"
  homepage "https://github.com/kisom/kte"

  app "kge.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge.app"],
                   sudo: false
  end
end
