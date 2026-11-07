class KameSite < Formula
  desc "Static site generator for kame documents and notebooks"
  homepage "https://github.com/kisom/kame"
  url "https://github.com/kisom/kame/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "e01892cce6fc7590dcaf65b5df4c264d932b36793324a8a8f403a8a9e9feabde"
  license all_of: ["Apache-2.0", "OFL-1.1"]
  head "https://github.com/kisom/kame.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/kame-site")
  end

  test do
    system bin/"kame-site", "new", testpath/"site"
    assert_path_exists testpath/"site/site.yaml"
  end
end
