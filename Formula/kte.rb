class Kte < Formula
  desc "ke - kyle's editor"
  homepage "https://git.wntrmute.dev/kyle/kte"
  head "https://github.com/kisom/kte.git", branch: "main"
  license "ISC"
  head "https://github.com/kisom/ke"
  url "https://github.com/kisom/kte/archive/refs/tags/v1.5.5.tar.gz"
  sha256 "ebf26d38a1c0f012f6e4fd0af8e71c13da63c7e1d8fe122d9facbd60f46f9b22"
  version "1.5.5"

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
