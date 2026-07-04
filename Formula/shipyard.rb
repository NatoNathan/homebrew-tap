class Shipyard < Formula
  desc "CLI tool for managing project workflows with a nautical theme"
  homepage "https://github.com/NatoNathan/shipyard"
  version "0.7.2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.7.2/shipyard_v0.7.2_darwin_amd64.tar.gz"
    sha256 "ff9a79b9318b758007225f5e039e2ac4f214ecd9e56e2b53ad164fb8052f780b"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.7.2/shipyard_v0.7.2_darwin_arm64.tar.gz"
    sha256 "283ca225ab0858a5de1f6d2c06811e41a2f03f00aa146c104f839aed01ff1f5b"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.7.2/shipyard_v0.7.2_linux_amd64.tar.gz"
    sha256 "81f71458165dc1c68307d94234841907686e555a91b469de41513b3308eddcb6"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.7.2/shipyard_v0.7.2_linux_arm64.tar.gz"
    sha256 "a78bd64161ca7236d22e49d451db50a9c1edecb58ca4d31dce96dc9da930d19a"
  end

  def install
    bin.install "shipyard"
    generate_completions_from_executable(bin/"shipyard", "completion")
  end

  test do
    assert_match "shipyard version 0.7.2", shell_output("#{bin}/shipyard version")
  end
end
