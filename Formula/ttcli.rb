# Generated with JReleaser 1.10.0 at 2024-02-02T08:20:11.362325124Z

class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://github.com/wimdeblauwe/ttcli"
  version "1.1.1"
  license "Apache License, Version 2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.1.1/ttcli-1.1.1-osx-aarch_64.zip"
    sha256 "7f20f3f3b1c30ee2da8d146b73310135b53092505d3cae17c788e17aa1a5bd05"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.1.1/ttcli-1.1.1-osx-x86_64.zip"
    sha256 "28a8385d8266b4edfd36a937eef881d473a30b89dcafe13e0d42f78c98e9fc47"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "1.1.1", output
  end
end
