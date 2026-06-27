class Shipyard < Formula
  desc "CLI tool for managing project workflows with a nautical theme"
  homepage "https://github.com/NatoNathan/shipyard"
  version "0.7.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.7.1/shipyard_v0.7.1_darwin_amd64.tar.gz"
    sha256 "68e4a1abba5f2dede9bc6e67c1654c7069bf3bdb4d92937b93e7f68de7e34fba"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.7.1/shipyard_v0.7.1_darwin_arm64.tar.gz"
    sha256 "0878d350294d1bad31ac3f20803783daf5708ebbea6968a1de6504059b7efdb9"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.7.1/shipyard_v0.7.1_linux_amd64.tar.gz"
    sha256 "b0d45154ef2d7aef766177c6215e0f29d332764c9a743d9e0334c8789e5f43f3"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.7.1/shipyard_v0.7.1_linux_arm64.tar.gz"
    sha256 "74d6cfe1cca026e0aec12f586031e4bbec436bfdaefca1e79caa76ba31f833e4"
  end

  def install
    bin.install "shipyard"
    generate_completions_from_executable(bin/"shipyard", "completion")
  end

  test do
    assert_match "shipyard version 0.7.1", shell_output("#{bin}/shipyard version")
  end
end
