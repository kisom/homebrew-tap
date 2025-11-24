class Ke < Formula
  desc "ke - kyle's editor"
  homepage "https://git.wntrmute.dev/kyle/ke"
  head "https://github.com/kisom/ke.git", branch: "main"
  license "ISC"
  head "https://github.com/kisom/ke"
  url "https://github.com/kisom/ke/archive/refs/tags/v1.2.1.tar.gz"
  sha256 "8447e75e15ea2e12b3b2af05f2c36ad3da74edbdb8c3ad5353c86c06d4c71975"
  version "1.2.1"

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
