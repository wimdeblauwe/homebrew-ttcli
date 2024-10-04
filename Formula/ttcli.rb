# Generated with JReleaser 1.14.0 at 2024-10-04T10:13:30.913988162Z

class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://github.com/wimdeblauwe/ttcli"
  version "1.4.2"
  license "Apache License, Version 2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.4.2/ttcli-1.4.2-linux-x86_64.zip"
    sha256 "0b2be4e631730644be9088cfa97e5bb920781bebcfa271ae85fbf92fbe4d430d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.4.2/ttcli-1.4.2-osx-aarch_64.zip"
    sha256 "cbbc07dc678922d0f9b2fffd35ecc477f965d287b3b616d0eead9ac92154df8d"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.4.2/ttcli-1.4.2-osx-x86_64.zip"
    sha256 "f3ca114a98d1c27026b2daa055720a3f843c95af15617e20a735a2d416a0f04e"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "1.4.2", output
  end
end
