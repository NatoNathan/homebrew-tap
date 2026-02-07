class Shipyard < Formula
  desc "CLI tool for managing project workflows with a nautical theme"
  homepage "https://github.com/NatoNathan/shipyard"
  version "0.5.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.5.0/shipyard_v0.5.0_darwin_amd64.tar.gz"
    sha256 "64338aee252cb0dadb2fd02aa6f8dd4ee99b57886a4950b3b33da8c0d3f622e5"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.5.0/shipyard_v0.5.0_darwin_arm64.tar.gz"
    sha256 "0d4c7cc6322f9f418d1bfaab34cd26e66139546c0cbf528f219e17269768fa26"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.5.0/shipyard_v0.5.0_linux_amd64.tar.gz"
    sha256 "7718448dd071e6809fa437dbb163c758de39da278b1c92b0c33ec93b93ef58be"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/NatoNathan/shipyard/releases/download/v0.5.0/shipyard_v0.5.0_linux_arm64.tar.gz"
    sha256 "a8b197505f29d09e396b46638ef5f34be1f2604978b55a319be9361c2080229e"
  end

  def install
    bin.install "shipyard"
    generate_completions_from_executable(bin/"shipyard", "completion")
  end

  test do
    assert_match "shipyard version 0.5.0", shell_output("#{bin}/shipyard version")
  end
end
