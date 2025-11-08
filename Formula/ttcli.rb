# Generated with JReleaser 1.21.0 at 2025-11-08T10:50:15.123515545Z

class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://github.com/wimdeblauwe/ttcli"
  version "1.10.0"
  license "Apache License, Version 2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.10.0/ttcli-1.10.0-linux-x86_64.zip"
    sha256 "f393a337567da065b3c1058b7d201229752fa153f4042968e8f5a6d09a405325"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.10.0/ttcli-1.10.0-osx-aarch_64.zip"
    sha256 "7fe919f64648510dd3d8a7020bfff68413a4f2413decb1da1d151431065a968a"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.10.0/ttcli-1.10.0-osx-x86_64.zip"
    sha256 "3b098253463e1543e2e52d9e212737e347b804bcad931fb4e987fdb9d416b8ee"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "1.10.0", output
  end
end
