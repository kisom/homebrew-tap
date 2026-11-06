class Cert < Formula
  desc "Swiss army knife for X.509/TLS work"
  homepage "https://github.com/kisom/cert"
  url "https://github.com/kisom/cert/archive/refs/tags/v1.7.1.tar.gz"
  sha256 "db5a45f74bd495828655e2173f044d5a3fc9ff89cdbc6c6d90eda0251ebbfe63"
  license "Apache-2.0"
  head "https://github.com/kisom/cert.git", branch: "master"

  depends_on "go" => :build

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
    assert_match "v#{version}", shell_output("#{bin}/cert version")
  end
end
