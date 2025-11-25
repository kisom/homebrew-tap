class Ke < Formula
  desc "ke - kyle's editor"
  homepage "https://git.wntrmute.dev/kyle/ke"
  head "https://github.com/kisom/ke.git", branch: "main"
  license "ISC"
  head "https://github.com/kisom/ke"
  url "https://github.com/kisom/ke/archive/refs/tags/v1.3.3.tar.gz"
  sha256 "5d987281b8a7ec5ba5c8376568e187be82e98142fe911e4440b33991d5b71d7f"
  version "1.3.3"

  depends_on "cmake" => :build

  def install
    system "cmake", "-S", ".", "-B", "build"
    system "cmake", "--build", "build"
    bin.install "build/ke"

    man1.install "ke.1"
  end

  test do
    # Placeholder test; adjust based on what the project installs (e.g., executable or library)
    return "true"
  end
end
