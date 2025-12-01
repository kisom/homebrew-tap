cask "anybar" do
  version "1.0.4"
  sha256 "c87dbc6aff5411676a471e84905d69c671b62b93b1210bd95c9d776d087de95c"

  url "https://github.com/kisom/kte/releases/download/#{version}/kge.app.zip"
  name "kge"
  desc "kyle's text editor"
  homepage "https://github.com/kisom/kte"

  app "kge.app"
end
