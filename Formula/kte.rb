class Kte < Formula
  desc "Kyle's text editor"
  homepage "https://git.wntrmute.dev/kyle/kte"
  url "https://github.com/kisom/kte/archive/refs/tags/v1.14.0.tar.gz"
  sha256 "e6b7ec2571bbc13bedb0d0251b487fbb5cd62b6934c03a88cb5a21db579aa834"
  license "ISC"
  head "https://github.com/kisom/kte.git", branch: "master"

  depends_on "cmake" => :build
  depends_on "ncurses"

  def install
    system "cmake", "-S", ".", "-B", "build", "-DKTE_USE_PIECE_TABLE=ON", "-DBUILD_GUI=OFF"
    system "cmake", "--build", "build"
    bin.install "build/kte"
    man1.install "docs/kte.1"
  end

  test do
    assert_match "kte v#{version}", shell_output("#{bin}/kte --version")
  end
end
