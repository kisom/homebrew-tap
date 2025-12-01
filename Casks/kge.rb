cask "kge" do
  version "1.0.4"
  sha256 "7355e463c79af6c0b45b939f34ab9d20f309ce0f29c132354bacce97dece6792"

  url "https://github.com/kisom/kte/releases/download/v#{version}/kge.app.zip"

  desc "kyle's text editor"
  homepage "https://github.com/kisom/kte"

  app "kge.app"
end
