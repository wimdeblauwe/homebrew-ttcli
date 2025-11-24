# Generated with JReleaser 1.21.0 at 2025-11-24T20:40:47.626530217Z

class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://github.com/wimdeblauwe/ttcli"
  version "1.10.2"
  license "Apache License, Version 2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.10.2/ttcli-1.10.2-linux-x86_64.zip"
    sha256 "f0a991b9b1b7d48fb76a28c541d50ae33a1e5053a78130b4aa1647470486d822"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.10.2/ttcli-1.10.2-osx-aarch_64.zip"
    sha256 "6a4f5f1fc98d99259f0e5314786839e4e999610911b408567c9c803e5ed23894"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.10.2/ttcli-1.10.2-osx-x86_64.zip"
    sha256 "1dfe47282451dead1252afb9e16b15370092f90e644fbeea530be00788913344"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "1.10.2", output
  end
end
