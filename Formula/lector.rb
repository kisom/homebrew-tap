class Lector < Formula
  desc "Read-only document viewer for Markdown, reStructuredText, and org-mode"
  homepage "https://github.com/kisom/lector"
  license "MIT"
  url "https://github.com/kisom/lector/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "eee16bc89cff5ae0393c96984608da609fd68ac9ee98e3e0893edcdb8afbe42d"
  version "1.0.1"
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
