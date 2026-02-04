class Shipyard < Formula
  desc "CLI tool for managing project workflows with a nautical theme"
  homepage "https://github.com/NatoNathan/shipyard"
  version "0.3.1-snapshot.5"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.3.1-snapshot.5/shipyard_v0.3.1-snapshot.5_darwin_amd64.tar.gz"
    sha256 "e033c59421f37466c066d6f4d4874c6687034f7b1f06434b80ec003233eb23a0"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.3.1-snapshot.5/shipyard_v0.3.1-snapshot.5_darwin_arm64.tar.gz"
    sha256 "5a6010e67f347eb73094bfe76167786a9c400c95d382cf4eeb53c9ee3fd26f52"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.3.1-snapshot.5/shipyard_v0.3.1-snapshot.5_linux_amd64.tar.gz"
    sha256 "6d68a33e7bbd6b8fac50eb5a450a2e405a107ae23ba8eefa97f4501bae1337a6"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.3.1-snapshot.5/shipyard_v0.3.1-snapshot.5_linux_arm64.tar.gz"
    sha256 "466b06a61e31ac7b6e1c1ae7695db57dbc4d0675242180df02c72854e153d1c3"
  end

  def install
    bin.install "shipyard"
    generate_completions_from_executable(bin/"shipyard", "completion")
  end

  test do
    assert_match "shipyard version 0.3.1-snapshot.5", shell_output("#{bin}/shipyard version")
  end
end
