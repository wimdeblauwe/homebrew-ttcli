# Generated with JReleaser 1.15.0 at 2024-12-05T21:52:04.583176119Z

class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://github.com/wimdeblauwe/ttcli"
  version "1.6.2"
  license "Apache License, Version 2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.6.2/ttcli-1.6.2-linux-x86_64.zip"
    sha256 "c621e681c989c5a43ffcbca055d3022fa189ddc654ade1d8b7a79d84889c3970"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.6.2/ttcli-1.6.2-osx-aarch_64.zip"
    sha256 "2ad93b75ed20ef3169ff0b79117608fd0c7df4843e6651e378894f8f7d41a4c0"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.6.2/ttcli-1.6.2-osx-x86_64.zip"
    sha256 "006ab3495a7077d6c92fab98d6217ba210577a7a0a331b67d54bfb2676903ca7"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "1.6.2", output
  end
end
