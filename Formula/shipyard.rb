class Shipyard < Formula
  desc "CLI tool for managing project workflows with a nautical theme"
  homepage "https://github.com/NatoNathan/shipyard"
  version "0.3.1-snapshot.9"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.3.1-snapshot.9/shipyard_v0.3.1-snapshot.9_darwin_amd64.tar.gz"
    sha256 "98a5c4a58da4a4785d3ed1341fa133579a3e46d89185d8d95c90d85a0f868bc4"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.3.1-snapshot.9/shipyard_v0.3.1-snapshot.9_darwin_arm64.tar.gz"
    sha256 "177eca50c0f2bd09ec764940f651efa26a60fdeca5be65dc77dcd95a6fe44a46"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.3.1-snapshot.9/shipyard_v0.3.1-snapshot.9_linux_amd64.tar.gz"
    sha256 "09da95e429c8231f03f35cca084e2f73aa19814fbf208fd8e5d9cb0aa3faaec4"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.3.1-snapshot.9/shipyard_v0.3.1-snapshot.9_linux_arm64.tar.gz"
    sha256 "52df927df3fce60c2d032190b77dc6cac937f870a7b79227a3c7cc8e3a09ecc6"
  end

  def install
    bin.install "shipyard"
    generate_completions_from_executable(bin/"shipyard", "completion")
  end

  test do
    assert_match "shipyard version 0.3.1-snapshot.9", shell_output("#{bin}/shipyard version")
  end
end
