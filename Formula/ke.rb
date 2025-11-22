class Ke < Formula
  desc "ke - kyle's editor"
  homepage "https://git.wntrmute.dev/kyle/ke"
  head "https://github.com/kisom/ke.git", branch: "main"
  license "ISC"
  head "https://github.com/kisom/ke"
  url "https://github.com/kisom/ke/archive/refs/tags/v1.0.6.tar.gz"
  sha256 "16df9cb80a3c47b70d17fe7f4243df5931f66937661cc485509f66d0dd296f0d"
  version "1.0.6"

  depends_on "cmake" => :build

  def install
    system "cmake", "-S", ".", "-B", "build"
    system "cmake", "--build", "build"
    bin.install "build/bin/ke"
  end

  test do
    # Placeholder test; adjust based on what the project installs (e.g., executable or library)
    return "true"
  end
end
