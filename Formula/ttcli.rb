# Generated with JReleaser 1.12.0 at 2024-06-11T19:23:36.893508891Z

class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://github.com/wimdeblauwe/ttcli"
  version "1.2.1"
  license "Apache License, Version 2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.2.1/ttcli-1.2.1-linux-x86_64.zip"
    sha256 "5200d99700bc227bdb57a99bfa5a0fed455fa470ad9e311e52059388bfaeaa58"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.2.1/ttcli-1.2.1-osx-aarch_64.zip"
    sha256 "60f9c5cdcfc199cd1028fe3ac7c1da7a4e9217cf379561b772462e217ba0a5f1"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.2.1/ttcli-1.2.1-osx-x86_64.zip"
    sha256 "6940d9ec28fc4154dc4f5c15832bc0c61ec085111043e40e079ea6fb4e242177"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "1.2.1", output
  end
end
