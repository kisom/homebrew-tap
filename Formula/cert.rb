# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://docs.brew.sh/rubydoc/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cert < Formula
  desc "Swiss army knife for x509/TLS work."
  homepage "https://github.com/kisom/cert"
  license "Apache-2.0"
  head "https://github.com/kisom/cert"
  url "https://github.com/kisom/cert/archive/refs/tags/v1.6.0.tar.gz"
  sha256 "8504e130f28fcc795f4b216884deae43ee2dfc879b4b2bbb56b31dd62ce54e02"
  version "1.6.0"

  depends_on "go" => :build

  # Additional dependency
  # resource "" do
  #   url ""
  #   sha256 ""
  # end

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X github.com/kisom/cert/cmd.Version=v#{version}")

    bash_completion.install "completions/cert.bash"
    zsh_completion.install  "completions/cert.zsh"
    fish_completion.install "completions/cert.fish" => "cert.fish"

    man1.install "docs/man1/cert-completion-fish.1"
    man1.install "docs/man1/cert-completion-powershell.1"
    man1.install "docs/man1/cert-completion-zsh.1"
    man1.install "docs/man1/cert-completion.1"
    man1.install "docs/man1/cert-csrpub.1"
    man1.install "docs/man1/cert-doc.1"
    man1.install "docs/man1/cert-docgen.1"
    man1.install "docs/man1/cert-dump.1"
    man1.install "docs/man1/cert-expiry.1"
    man1.install "docs/man1/cert-filetype.1"
    man1.install "docs/man1/cert-gencsr.1"
    man1.install "docs/man1/cert-genkey.1"
    man1.install "docs/man1/cert-matchkey.1"
    man1.install "docs/man1/cert-pem.1"
    man1.install "docs/man1/cert-selfsign.1"
    man1.install "docs/man1/cert-serial.1"
    man1.install "docs/man1/cert-signcsr.1"
    man1.install "docs/man1/cert-ski.1"
    man1.install "docs/man1/cert-stealchain.1"
    man1.install "docs/man1/cert-tlsinfo.1"
    man1.install "docs/man1/cert-verify.1"
    man1.install "docs/man1/cert-version.1"
    man1.install "docs/man1/cert.1"

    man5.install "docs/man5/cert-bundler.5"
    man5.install "docs/man5/cert-request.5"
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
