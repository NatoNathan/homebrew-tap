class Shipyard < Formula
  desc "CLI tool for managing project workflows with a nautical theme"
  homepage "https://github.com/NatoNathan/shipyard"
  version "0.3.1-snapshot.8"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.3.1-snapshot.8/shipyard_v0.3.1-snapshot.8_darwin_amd64.tar.gz"
    sha256 "1b4184e73b8663111a0df8132a0e2c9ba1afee861fef299587d3cd2dc6e295f7"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.3.1-snapshot.8/shipyard_v0.3.1-snapshot.8_darwin_arm64.tar.gz"
    sha256 "cab5bf2e957f8e4a945ba78df1751955b98a2f28b26927c8016d4b3df4cb1b27"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.3.1-snapshot.8/shipyard_v0.3.1-snapshot.8_linux_amd64.tar.gz"
    sha256 "8d0a368059ad50b9f70f8b4162e49d8eca484d83dc73776c826d8fd66364c585"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.3.1-snapshot.8/shipyard_v0.3.1-snapshot.8_linux_arm64.tar.gz"
    sha256 "77f55e122f2637163c95f63c6dc7f6cd4e5ee922f476ea6cd9b2271101769b7c"
  end

  def install
    bin.install "shipyard"
    generate_completions_from_executable(bin/"shipyard", "completion")
  end

  test do
    assert_match "shipyard version 0.3.1-snapshot.8", shell_output("#{bin}/shipyard version")
  end
end
