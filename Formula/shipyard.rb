class Shipyard < Formula
  desc "CLI tool for managing project workflows with a nautical theme"
  homepage "https://github.com/NatoNathan/shipyard"
  version "0.3.1-snapshot.7"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.3.1-snapshot.7/shipyard_v0.3.1-snapshot.7_darwin_amd64.tar.gz"
    sha256 "7ac2099975985539204f91961b6b513138656c057cddd393a86c83676f8f8737"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.3.1-snapshot.7/shipyard_v0.3.1-snapshot.7_darwin_arm64.tar.gz"
    sha256 "97ff5657441998810f58e80dcfdea7cb953deefffe65e53081e975c902d0cb0d"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.3.1-snapshot.7/shipyard_v0.3.1-snapshot.7_linux_amd64.tar.gz"
    sha256 "05e5ddcef1ed181ce2781e8dc4c95059d653eac455c6e8bb0f808430bbc0016e"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.3.1-snapshot.7/shipyard_v0.3.1-snapshot.7_linux_arm64.tar.gz"
    sha256 "96d66f2befde4c9b55e2cdd0155f02513bc3d0bc2f2417d7d10f24f9f7746402"
  end

  def install
    bin.install "shipyard"
    generate_completions_from_executable(bin/"shipyard", "completion")
  end

  test do
    assert_match "shipyard version 0.3.1-snapshot.7", shell_output("#{bin}/shipyard version")
  end
end
