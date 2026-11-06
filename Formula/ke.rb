class Ke < Formula
  desc "Kyle's editor"
  homepage "https://git.wntrmute.dev/kyle/ke"
  url "https://github.com/kisom/ke/archive/refs/tags/v2.1.4.tar.gz"
  sha256 "d5d41372b3ea6c8979480717ed89ee266a1c57bf94eb489b1f2976003b022035"
  license "ISC"
  head "https://github.com/kisom/ke.git", branch: "master"

  depends_on "cmake" => :build

  def install
    system "cmake", "-S", ".", "-B", "build", "-DENABLE_ASAN=ON"
    system "cmake", "--build", "build"
    bin.install "build/ke"

    man1.install "ke.1"
  end

  test do
    assert_path_exists bin/"ke"
    assert_path_exists man1/"ke.1"
  end
end
