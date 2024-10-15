# Generated with JReleaser 1.14.0 at 2024-10-15T06:55:03.178559858Z

class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://github.com/wimdeblauwe/ttcli"
  version "1.5.0"
  license "Apache License, Version 2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.5.0/ttcli-1.5.0-linux-x86_64.zip"
    sha256 "3d9d802dcc6723ba5999e941ad35e369e635156868b0e34672e6666f28344c53"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.5.0/ttcli-1.5.0-osx-aarch_64.zip"
    sha256 "029a2266ce2fefb7920983128b69b3046c2dd10117ad565a85cb3db78de4b218"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.5.0/ttcli-1.5.0-osx-x86_64.zip"
    sha256 "61cc2e4111f9ba23fba3792efe8e2d3f536bdfc8bc2f8fd5c558ad8a138b15c7"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "1.5.0", output
  end
end
