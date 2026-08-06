class Lector < Formula
  desc "Read-only document viewer for Markdown, reStructuredText, and org-mode"
  homepage "https://github.com/kisom/lector"
  url "https://github.com/kisom/lector/archive/refs/tags/v1.3.5.tar.gz"
  sha256 "b0fb15f7823ec1850cecb2de3c8d576f1635b443625ef32aeb1b7d8495241fc2"
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
