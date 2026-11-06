class KameSite < Formula
  desc "Static site generator for kame documents and notebooks"
  homepage "https://github.com/kisom/kame"
  url "https://github.com/kisom/kame/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "3a2e7d04cab85607f7be089a8b942dd472b358bbe471bec0895320d1494bcee3"
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
