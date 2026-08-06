class Lector < Formula
  desc "Read-only document viewer for Markdown, reStructuredText, and org-mode"
  homepage "https://github.com/kisom/lector"
  url "https://github.com/kisom/lector/archive/refs/tags/v1.3.7.tar.gz"
  sha256 "c949d56d12c17d5e02a4ca8fbbda445e94f9d51e9423310e73bcbe3c02a4cdf8"
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
