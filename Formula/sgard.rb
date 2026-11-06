class Sgard < Formula
  desc "Shimmering Clarity Gardener: dotfile management"
  homepage "https://github.com/kisom/sgard"
  url "https://github.com/kisom/sgard/archive/refs/tags/v3.2.1.tar.gz"
  sha256 "dc8d7cb77dcf7e78bd08aea7a1175e1ad6a5bff2df2470699b647713f25c274c"
  head "https://github.com/kisom/sgard.git", branch: "master"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "./cmd/sgard"
  end

  test do
    system bin/"sgard", "init", "--repo", testpath/"test-repo"
    assert_path_exists testpath/"test-repo/manifest.yaml"
  end
end
