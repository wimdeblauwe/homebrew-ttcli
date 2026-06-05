# Generated with JReleaser 1.24.0 at 2026-06-05T08:36:24.61250116Z

class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://github.com/wimdeblauwe/ttcli"
  version "1.12.1"
  license "Apache License, Version 2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.12.1/ttcli-1.12.1-linux-x86_64.zip"
    sha256 "fc987c61f4757ac0c6db94caef52f60dc8a559c808d47a45fd9a64486652279e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.12.1/ttcli-1.12.1-osx-aarch_64.zip"
    sha256 "899bce895d82f1e867d9f81b303645ce0a3d586abdf1536a8f220a3b06863ce8"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.12.1/ttcli-1.12.1-osx-x86_64.zip"
    sha256 "cdbbeddb3637f75983229f60e3fa853b2f00b20b5d5e3050cffc7b55bf4e1b36"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "1.12.1", output
  end
end
