class Clarinet < Formula
  desc "CLI for Clarity smart contract development, testing and deployment"
  homepage "https://github.com/hirosystems/clarinet/blob/master/README.md"
  url "https://github.com/hirosystems/clarinet/archive/refs/tags/v0.13.0.tar.gz"
  sha256 "af88713821b341c37d265c5dd2d722115356e545edc0c6b033ffb6944c72080a"
  license "GPL-3.0-only"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/clarinet", "new", "test"
    assert_predicate testpath/"test/Clarinet.toml", :exist?
  end
end
