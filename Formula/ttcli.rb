# Generated with JReleaser 1.10.0 at 2024-02-09T13:23:31.241653301Z

class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://github.com/wimdeblauwe/ttcli"
  version "1.1.2"
  license "Apache License, Version 2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.1.2/ttcli-1.1.2-linux-x86_64.zip"
    sha256 "e7105c1c11ba32a84facf16ed5d12933d87b0522f88413e7faa554c3f85433ce"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.1.2/ttcli-1.1.2-osx-aarch_64.zip"
    sha256 "7e3da13ed72d5224859a6242fb92127a8ce25c69bb4aea2d04e75095ec3cd36d"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.1.2/ttcli-1.1.2-osx-x86_64.zip"
    sha256 "f79be2f3e835262423d434f037c26c726825179a163398a0c1a5c0e160e48487"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "1.1.2", output
  end
end
