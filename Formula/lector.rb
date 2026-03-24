class Lector < Formula
  desc "Read-only document viewer for Markdown, reStructuredText, and org-mode"
  homepage "https://github.com/kisom/lector"
  license "MIT"
  url "https://github.com/kisom/lector/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "023cee596c2cad4f10a386661bbd0e4aa0bf282133b3db7442caa114fd7a123e"
  version "1.0.2"
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
