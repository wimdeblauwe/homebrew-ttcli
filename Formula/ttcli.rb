# Generated with JReleaser 1.21.0 at 2025-11-22T15:15:16.322825934Z

class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://github.com/wimdeblauwe/ttcli"
  version "1.10.1"
  license "Apache License, Version 2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.10.1/ttcli-1.10.1-linux-x86_64.zip"
    sha256 "c56833b903fecc0bcaf725f1b5ad899ad57ef46d0977681e62de7adcb664c098"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.10.1/ttcli-1.10.1-osx-aarch_64.zip"
    sha256 "dc54848c5d0e5f8b964bd692020e0c1069c453fcdba0bd56ff6f662ddbb30513"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.10.1/ttcli-1.10.1-osx-x86_64.zip"
    sha256 "850a68feffc2f8008a7a67043321f2bda5d03834e7e2569e29cc5411d51fafbd"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "1.10.1", output
  end
end
