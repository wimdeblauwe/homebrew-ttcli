# Generated with JReleaser 1.16.0 at 2025-01-23T10:21:10.91551411Z

class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://github.com/wimdeblauwe/ttcli"
  version "1.6.3"
  license "Apache License, Version 2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.6.3/ttcli-1.6.3-linux-x86_64.zip"
    sha256 "2ee39cdd912719d429110b9ea28bb88d3832c37ce0e0c90465aba225dc789924"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.6.3/ttcli-1.6.3-osx-aarch_64.zip"
    sha256 "2c33e835d3a16476ff0afc97a4f057d9651ca78fbed7263206b4cfbf64eb9fbe"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.6.3/ttcli-1.6.3-osx-x86_64.zip"
    sha256 "ab7308ae5f02a67da77242ca42679278b6f0da01117a87a6e67f33c64bd81823"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "1.6.3", output
  end
end
