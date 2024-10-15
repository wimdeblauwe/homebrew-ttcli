# Generated with JReleaser 1.14.0 at 2024-10-15T14:34:16.530011459Z

class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://github.com/wimdeblauwe/ttcli"
  version "1.5.1"
  license "Apache License, Version 2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.5.1/ttcli-1.5.1-linux-x86_64.zip"
    sha256 "da0d8d226c5a7f5e66bd5dad9c1a438dbd6bcfb82ec3b81097fd3645dc93a664"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.5.1/ttcli-1.5.1-osx-aarch_64.zip"
    sha256 "249a636d8c2eb26272f5beef9197172b2760fcac30091ef3d0d222557817f34b"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.5.1/ttcli-1.5.1-osx-x86_64.zip"
    sha256 "af6ee081f7af2bae79c4c5aaeaf0ecf2b5a06b30b8271040c60d8b7afdb5da89"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "1.5.1", output
  end
end
