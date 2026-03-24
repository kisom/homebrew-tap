class Lector < Formula
  desc "Read-only document viewer for Markdown, reStructuredText, and org-mode"
  homepage "https://github.com/kisom/lector"
  license "MIT"
  url "https://github.com/kisom/lector/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "0055ab13aaa5c6b2ba6c4cb8b0927b882f183a9ba24e861d10044a8e2b0f0723"
  version "1.0.0"
  head "https://github.com/kisom/lector.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--package", "lector-gui", "--package", "lector-tui"
    bin.install "target/release/lector"
    bin.install "target/release/clector"
  end

  test do
    assert_match "lector", shell_output("#{bin}/lector --help 2>&1", 2)
  end
end
