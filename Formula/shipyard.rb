class Shipyard < Formula
  desc "CLI tool for managing project workflows with a nautical theme"
  homepage "https://github.com/NatoNathan/shipyard"
  version "0.0.0-snapshot.20260204152216"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.0.0-snapshot.20260204152216/shipyard_v0.0.0-snapshot.20260204152216_darwin_amd64.tar.gz"
    sha256 "77d189c07377d1c5ae987adc568e66be335b4bf4caca8cad9e6163ba3f7186f1"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.0.0-snapshot.20260204152216/shipyard_v0.0.0-snapshot.20260204152216_darwin_arm64.tar.gz"
    sha256 "e636c7515f3766fad99fe3c1680a4e6e75cb8363106c1b6e87cc72ac8f6212ae"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.0.0-snapshot.20260204152216/shipyard_v0.0.0-snapshot.20260204152216_linux_amd64.tar.gz"
    sha256 "85d4b114005084e8bd1b1a031865df42069e4d11946c353eee05e9474b186fa6"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.0.0-snapshot.20260204152216/shipyard_v0.0.0-snapshot.20260204152216_linux_arm64.tar.gz"
    sha256 "5d5963006dcf6d0f2e24c0980c1502aa070fc515ff376ce52e0a0de5f93fdb0b"
  end

  def install
    bin.install "shipyard"
    generate_completions_from_executable(bin/"shipyard", "completion")
  end

  test do
    assert_match "shipyard version 0.0.0-snapshot.20260204152216", shell_output("#{bin}/shipyard version")
  end
end
