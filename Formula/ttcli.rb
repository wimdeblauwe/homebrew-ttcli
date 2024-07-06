# Generated with JReleaser 1.13.1 at 2024-07-06T21:21:51.069300269Z

class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://github.com/wimdeblauwe/ttcli"
  version "1.3.0"
  license "Apache License, Version 2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.3.0/ttcli-1.3.0-linux-x86_64.zip"
    sha256 "268f0dfe2e02cba5b11cccb4025a812f71e63ffbeab042b2e2d26ad8096dc705"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.3.0/ttcli-1.3.0-osx-aarch_64.zip"
    sha256 "e42414a772ca86e0a49fe56e38b855db6456461dad224905d494b809105b83ad"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.3.0/ttcli-1.3.0-osx-x86_64.zip"
    sha256 "6a162bdc744a7c4a45e1bad73b77d679a7dff4b427e649b498878b2901ce52cf"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "1.3.0", output
  end
end
