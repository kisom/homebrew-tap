class Sgard < Formula
  desc "Shimmering Clarity Gardener: dotfile management"
  homepage "https://github.com/kisom/sgard"
  head "https://github.com/kisom/sgard"
  url "https://github.com/kisom/sgard/archive/refs/tags/v3.1.0.tar.gz"
  sha256 ""
  version "3.1.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "./cmd/sgard"
  end

  test do
    system bin/"sgard", "init", "--repo", testpath/"test-repo"
    assert_predicate testpath/"test-repo/manifest.yaml", :exist?
  end
end
