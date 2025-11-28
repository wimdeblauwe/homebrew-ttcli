# Generated with JReleaser 1.21.0 at 2025-11-28T07:00:04.175127095Z

class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://github.com/wimdeblauwe/ttcli"
  version "1.11.0"
  license "Apache License, Version 2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.11.0/ttcli-1.11.0-linux-x86_64.zip"
    sha256 "1e5323784295686696a9b5dee2175ffa2325236098cb00be85071ddd6e956f40"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.11.0/ttcli-1.11.0-osx-aarch_64.zip"
    sha256 "9e918da2b060fd6bf4aaf7399ec5a294d83a194ebc04e10d7e0aae798dc6de53"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.11.0/ttcli-1.11.0-osx-x86_64.zip"
    sha256 "2a6d02ea8a33b99ea494907ed3ceef70a118bb4357e9fe61ba61960bfea60fe1"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "1.11.0", output
  end
end
