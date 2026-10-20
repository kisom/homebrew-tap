class Lector < Formula
  desc "Read-only document viewer for Markdown, reStructuredText, and org-mode"
  homepage "https://github.com/kisom/lector"
  url "https://github.com/kisom/lector/archive/refs/tags/v1.3.8.tar.gz"
  sha256 "7d6c05e94870a0a4641b6ecfe754e8187b2c9227f1f8f884bba43a0b2f236bd4"
  license "MIT"
  head "https://github.com/kisom/lector.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/lector-gui")
    system "cargo", "install", *std_cargo_args(path: "crates/lector-tui")
  end

  test do
    assert_match "lector", shell_output("#{bin}/lector --help 2>&1", 2)
  end
end
