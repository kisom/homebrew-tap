cask "kge" do
  version "1.0.4"
  sha256 "39d0a6d8d46f253d9b2573fee3f1d49599fb28ccb8a7e775941370a16d628e6b"

  url "https://github.com/kisom/kte/releases/download/v#{version}/kge.app.zip"

  desc "kyle's text editor"
  homepage "https://github.com/kisom/kte"

  app "kge.app"
end
