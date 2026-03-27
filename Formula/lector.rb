class Lector < Formula
  desc "Read-only document viewer for Markdown, reStructuredText, and org-mode"
  homepage "https://github.com/kisom/lector"
  license "MIT"
  url "https://github.com/kisom/lector/archive/refs/tags/v1.3.2.tar.gz"
  sha256 "c53ff071655a5425a889b9f8e67790b64d4cfb2e40be8898f18e7323a86c54ea"
  version "1.3.2"
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
