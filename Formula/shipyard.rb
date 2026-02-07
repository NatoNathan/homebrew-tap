class Shipyard < Formula
  desc "CLI tool for managing project workflows with a nautical theme"
  homepage "https://github.com/NatoNathan/shipyard"
  version "0.4.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.4.0/shipyard_v0.4.0_darwin_amd64.tar.gz"
    sha256 "9b2de4fcc53b480b48452a3fa08e3d59a7cd0745ddf5634145d9a3f9512a967f"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.4.0/shipyard_v0.4.0_darwin_arm64.tar.gz"
    sha256 "5f002ba8e5b92622ce96e41efc38256e56d448c631aee36ef36841fb7fc75860"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.4.0/shipyard_v0.4.0_linux_amd64.tar.gz"
    sha256 "6c3d1d2f998f42cb27534877796ffaf4973d7913865433fe81b6b203fc0d7070"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.4.0/shipyard_v0.4.0_linux_arm64.tar.gz"
    sha256 "d000fc84f5db0d8cc81b370666c6421a1141e61b921497de891c3e77bd79b07a"
  end

  def install
    bin.install "shipyard"
    generate_completions_from_executable(bin/"shipyard", "completion")
  end

  test do
    assert_match "shipyard version 0.4.0", shell_output("#{bin}/shipyard version")
  end
end
