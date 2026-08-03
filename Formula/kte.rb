class Kte < Formula
  desc "Kyle's text editor"
  homepage "https://git.wntrmute.dev/kyle/kte"
  url "https://github.com/kisom/kte/archive/refs/tags/v1.12.0.tar.gz"
  sha256 "ee670a9adf4fc9f46ee918a934f6b24c479869165e82bbcf85e0be69202c2447"
  license "ISC"
  head "https://github.com/kisom/kte.git", branch: "master"

  depends_on "cmake" => :build
  depends_on "freetype"
  depends_on "ncurses"
  depends_on "sdl2"

  def install
    system "cmake", "-S", ".", "-B", "build", "-DKTE_USE_PIECE_TABLE=ON", "-DBUILD_GUI=OFF"
    system "cmake", "--build", "build"
    bin.install "build/kte"
    man1.install "docs/kte.1"
  end

  test do
    # Placeholder test; adjust based on what the project installs (e.g., executable or library)
    return "true"
  end
end
