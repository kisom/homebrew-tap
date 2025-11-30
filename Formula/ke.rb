class Ke < Formula
  desc "ke - kyle's editor"
  homepage "https://git.wntrmute.dev/kyle/ke"
  head "https://github.com/kisom/ke.git", branch: "main"
  license "ISC"
  head "https://github.com/kisom/ke"
  url "https://github.com/kisom/ke/archive/refs/tags/v2.1.2.tar.gz"
  sha256 "45ed8a21aa7a4f5ad4d3582b30fffdf0075084961af42228bcb6591c06b0c4fb"
  version "2.1.2"

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
