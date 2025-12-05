cask "kge" do
  version "1.4.1"
  sha256 "78bbaca4a51f3546045ffd269ff02a91fd87480c660174d3c1a98545e0370f2f"

  url "https://github.com/kisom/kte/releases/download/v1.4.1/kge.app.zip"
  desc "kyle's text editor"
  homepage "https://github.com/kisom/kte"

  app "kge.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge.app"],
                   sudo: false
  end
end
