class Shipyard < Formula
  desc "CLI tool for managing project workflows with a nautical theme"
  homepage "https://github.com/NatoNathan/shipyard"
  version "0.3.1-snapshot.10"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.3.1-snapshot.10/shipyard_v0.3.1-snapshot.10_darwin_amd64.tar.gz"
    sha256 "6c4b67d9e32413cfcf2e4a1d691a7ed735439b358d90b54d9e951029068c08fe"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.3.1-snapshot.10/shipyard_v0.3.1-snapshot.10_darwin_arm64.tar.gz"
    sha256 "56bed5fe690825bba27accf5822f1e872e298a189d9f52ba40337ed159906095"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.3.1-snapshot.10/shipyard_v0.3.1-snapshot.10_linux_amd64.tar.gz"
    sha256 "baba7cc2d890195a1eb5c7d8a57b3aeac3c9ef43d8a63aba17cd6bef2d755772"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.3.1-snapshot.10/shipyard_v0.3.1-snapshot.10_linux_arm64.tar.gz"
    sha256 "7d6feb05722d6a5335587cc65315bc68250e56e3e39b1b99f8b3a28088e604b8"
  end

  def install
    bin.install "shipyard"
    generate_completions_from_executable(bin/"shipyard", "completion")
  end

  test do
    assert_match "shipyard version 0.3.1-snapshot.10", shell_output("#{bin}/shipyard version")
  end
end
