class Kame < Formula
  desc "Kyle's marginalia editor: a typeset prose editor"
  homepage "https://github.com/kisom/kame"
  url "https://github.com/kisom/kame/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "4af41981f6e7fe6e25b4083bc23a26285662118f838adb469df2eac9dcedec05"
  license all_of: ["Apache-2.0", "OFL-1.1"]
  head "https://github.com/kisom/kame.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    system "cargo", "install", *std_cargo_args(path: "crates/kame-site")
  end

  test do
    system bin/"kame-site", "new", testpath/"site"
    assert_path_exists testpath/"site/site.yaml"
  end
end
