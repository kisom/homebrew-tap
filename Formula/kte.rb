class Kte < Formula
  desc "ke - kyle's editor"
  homepage "https://git.wntrmute.dev/kyle/kte"
  head "https://github.com/kisom/kte.git", branch: "main"
  license "ISC"
  head "https://github.com/kisom/ke"
  url "https://github.com/kisom/kte/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "2376a228c629e25ba99bc4a223c1974afdb804a0c5dd574b44a9a93e84643bbb"
  version "1.2.0"

  depends_on "cmake" => :build
  depends_on "sdl2"
  depends_on "ncurses"
  depends_on "freetype"

  def install
    system "cmake", "-S", ".", "-B", "build", "-DKTE_USE_PIECE_TABLE=ON", "-DBUILD_GUI=ON"
    system "cmake", "--build", "build"
    bin.install "build/kte"
    man1.install "docs/kte.1"
  end

  test do
    # Placeholder test; adjust based on what the project installs (e.g., executable or library)
    return "true"
  end
end
