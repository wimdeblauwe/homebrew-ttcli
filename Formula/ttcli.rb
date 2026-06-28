# Generated with JReleaser 1.24.0 at 2026-06-28T16:21:17.989282224Z

class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://github.com/wimdeblauwe/ttcli"
  version "1.12.4"
  license "Apache License, Version 2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.12.4/ttcli-1.12.4-linux-x86_64.zip"
    sha256 "c079d8241d13534e3138f584a81abb26ea93af8ed0ba124e07e2fdff165a2265"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.12.4/ttcli-1.12.4-osx-aarch_64.zip"
    sha256 "40a1b6386e4144b3701e1bd60e0b5548b17acbac9b6c243c61679b7102d6d6a1"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.12.4/ttcli-1.12.4-osx-x86_64.zip"
    sha256 "7e786355995466c5a24dd884380e9ebb470e90a119e8541ae93ade8d7b047cae"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "1.12.4", output
  end
end
