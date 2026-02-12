class Shipyard < Formula
  desc "CLI tool for managing project workflows with a nautical theme"
  homepage "https://github.com/NatoNathan/shipyard"
  version "0.6.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.6.0/shipyard_v0.6.0_darwin_amd64.tar.gz"
    sha256 "9e4eb5d169ef593d6e98753ec700d54bba576331a6c2f5978aec686b74770ccc"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.6.0/shipyard_v0.6.0_darwin_arm64.tar.gz"
    sha256 "72fc322e3845dd578ec4033054b78b387b64a93d0c7d3c9a00a3b246e5f569e7"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.6.0/shipyard_v0.6.0_linux_amd64.tar.gz"
    sha256 "bb2a6607420e4fc4343d22d44293bda4746722528e19e7239e52aad070a7e9d6"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.6.0/shipyard_v0.6.0_linux_arm64.tar.gz"
    sha256 "bc368d7553c93bcac4d76ada3b3c771d0fb70e810c44ffcf71d2319c1f2ee360"
  end

  def install
    bin.install "shipyard"
    generate_completions_from_executable(bin/"shipyard", "completion")
  end

  test do
    assert_match "shipyard version 0.6.0", shell_output("#{bin}/shipyard version")
  end
end
