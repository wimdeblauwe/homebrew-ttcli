# Generated with JReleaser 1.13.1 at 2024-08-26T15:37:45.611251983Z

class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://github.com/wimdeblauwe/ttcli"
  version "1.4.0"
  license "Apache License, Version 2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.4.0/ttcli-1.4.0-linux-x86_64.zip"
    sha256 "c3498eb5b7a0bb8fd7ac295b7264f0f3af62d5444b03bbcaf86a69f81d406e0c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.4.0/ttcli-1.4.0-osx-aarch_64.zip"
    sha256 "568e5258c8327c03a8509ce6eceba07d6c1ee4729b99dd5a28060142fc5a9d82"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.4.0/ttcli-1.4.0-osx-x86_64.zip"
    sha256 "b983d731521edf585fe112521f51af30e735b22e14556850452f2d63c171f205"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "1.4.0", output
  end
end
