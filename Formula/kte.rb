class Kte < Formula
  desc "ke - kyle's editor"
  homepage "https://git.wntrmute.dev/kyle/kte"
  head "https://github.com/kisom/kte.git", branch: "main"
  license "ISC"
  head "https://github.com/kisom/ke"
  url "https://github.com/kisom/kte/archive/refs/tags/v1.5.7.tar.gz"
  sha256 "32fe58c993dcf18b0eb81da66b2db1a5a91786e901585afe52351e5f4abe447c"
  version "1.5.7"

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
