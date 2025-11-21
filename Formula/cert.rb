# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://docs.brew.sh/rubydoc/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cert < Formula
  desc "Swiss army knife for x509/TLS work."
  homepage "https://github.com/kisom/cert"
  license "Apache-2.0"
  head "https://github.com/kisom/cert"
  url "https://github.com/kisom/cert/archive/refs/tags/v1.4.0.tar.gz", tag: "v1.4.0"
  sha256 "9df3fa4ea7aa4ebaef14bf540b42164554361756fc954c88b0917c5ef6cf7a3a"

  depends_on "go" => :build

  # Additional dependency
  # resource "" do
  #   url ""
  #   sha256 ""
  # end

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X github.com/kisom/cert/cmd.Version=v#{version}")
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test cert`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system bin/"program", "do", "something"`.
    system "true"
  end
end
