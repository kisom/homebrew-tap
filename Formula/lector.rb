class Lector < Formula
  desc "Read-only document viewer for Markdown, reStructuredText, and org-mode"
  homepage "https://github.com/kisom/lector"
  url "https://github.com/kisom/lector/archive/refs/tags/v1.3.6.tar.gz"
  sha256 "dc2e09cd9a2370ef4d5985b8ca7f3e9424b0008b9030fea7187d77735b1b3b33"
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
