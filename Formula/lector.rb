class Lector < Formula
  desc "Read-only document viewer for Markdown, reStructuredText, and org-mode"
  homepage "https://github.com/kisom/lector"
  license "MIT"
  url "https://github.com/kisom/lector/archive/refs/tags/v1.3.1.tar.gz"
  sha256 "e70009da4ca2434c3ec83896ff8f66cd0bbdc9d3696f99954c1a146709af1f7a"
  version "1.3.1"
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
