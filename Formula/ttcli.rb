# Generated with JReleaser 1.15.0 at 2024-12-03T22:55:44.495958138Z

class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://github.com/wimdeblauwe/ttcli"
  version "1.6.1"
  license "Apache License, Version 2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.6.1/ttcli-1.6.1-linux-x86_64.zip"
    sha256 "a3459728108d1a63d1daea8d7f139a735bbaa5818a3ea449ead9625735d7618e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.6.1/ttcli-1.6.1-osx-aarch_64.zip"
    sha256 "75deac35cf85350dc43a2cd88fe3c639473facd7e215e872a85fbaa137620d1e"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.6.1/ttcli-1.6.1-osx-x86_64.zip"
    sha256 "9020bbd5c26e11f875969dd3b2b1f8ed6141e9bc2454dd886e2ceb6af176310b"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "1.6.1", output
  end
end
