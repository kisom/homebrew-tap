class Ke < Formula
  desc "ke - kyle's editor"
  homepage "https://git.wntrmute.dev/kyle/ke"
  head "https://github.com/kisom/ke.git", branch: "main"
  license "ISC"
  head "https://github.com/kisom/ke"
  url "https://github.com/kisom/ke/archive/refs/tags/v2.1.1.tar.gz"
  sha256 "19d3a35905a8396727908c8cf1c3f9def70d425e3e25e5ac4db56f70472bc747"
  version "2.1.1"

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
