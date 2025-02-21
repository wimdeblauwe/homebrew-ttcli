# Generated with JReleaser 1.16.0 at 2025-02-21T21:59:53.265573667Z

class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://github.com/wimdeblauwe/ttcli"
  version "1.8.0"
  license "Apache License, Version 2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.8.0/ttcli-1.8.0-linux-x86_64.zip"
    sha256 "8e2cf5771273f490395fd194eae340deb770ff6afd0a9ea2538e80975d4e02aa"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.8.0/ttcli-1.8.0-osx-aarch_64.zip"
    sha256 "4cc43db406e69aeaa201f7e681e5c411d6a293c1b5b2029bd806a60a4f81e89e"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.8.0/ttcli-1.8.0-osx-x86_64.zip"
    sha256 "4dde68e7559cbdc94ec4c3c9027130baa0373a6b3718969b89d60cc544e404f1"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "1.8.0", output
  end
end
