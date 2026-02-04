class Shipyard < Formula
  desc "CLI tool for managing project workflows with a nautical theme"
  homepage "https://github.com/NatoNathan/shipyard"
  version "0.3.1-snapshot.6"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.3.1-snapshot.6/shipyard_v0.3.1-snapshot.6_darwin_amd64.tar.gz"
    sha256 "1667fb71227b0a684dc0537d5087b36aaf52cd611bdaa0a0323cfa0c21b27c6b"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.3.1-snapshot.6/shipyard_v0.3.1-snapshot.6_darwin_arm64.tar.gz"
    sha256 "3eaf4fee6b1bacb09ec513ca6c8f94d9beeaefe9f77f9a013c051360f2e25d71"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.3.1-snapshot.6/shipyard_v0.3.1-snapshot.6_linux_amd64.tar.gz"
    sha256 "3aafb03086118ba35614c6deffba2a0f3a2f91623ac154f39f985337b0d88aae"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.3.1-snapshot.6/shipyard_v0.3.1-snapshot.6_linux_arm64.tar.gz"
    sha256 "f3432862d7f7a09225bb6224966e8d5335803d0b4679f1fd26e68f07c4db1a2e"
  end

  def install
    bin.install "shipyard"
    generate_completions_from_executable(bin/"shipyard", "completion")
  end

  test do
    assert_match "shipyard version 0.3.1-snapshot.6", shell_output("#{bin}/shipyard version")
  end
end
