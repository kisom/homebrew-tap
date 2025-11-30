class Ke < Formula
  desc "ke - kyle's editor"
  homepage "https://git.wntrmute.dev/kyle/ke"
  head "https://github.com/kisom/ke.git", branch: "main"
  license "ISC"
  head "https://github.com/kisom/ke"
  url "https://github.com/kisom/ke/archive/refs/tags/v2.1.3.tar.gz"
  sha256 "735634ca2ad8ebd580a26f7f723230806c228d0ac206c7f608507b38bac39bd4"
  version "2.1.3"

  depends_on "cmake" => :build

  def install
    system "cmake", "-S", ".", "-B", "build", "-DENABLE_ASAN=ON"
    system "cmake", "--build", "build"
    bin.install "build/ke"

    man1.install "ke.1"
  end

  test do
    # Placeholder test; adjust based on what the project installs (e.g., executable or library)
    return "true"
  end
end
