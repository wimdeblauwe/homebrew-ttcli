# Generated with JReleaser 1.16.0 at 2025-01-29T08:25:37.938311892Z

class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://github.com/wimdeblauwe/ttcli"
  version "1.7.0"
  license "Apache License, Version 2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.7.0/ttcli-1.7.0-linux-x86_64.zip"
    sha256 "5d3edb3a5d8c708af5c04d465ed921ee1dd369e4fe9ad8c02a133a2e2064df17"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.7.0/ttcli-1.7.0-osx-aarch_64.zip"
    sha256 "8463ee572f17998bf2e02cc413d0a4339bdc2a5bbb69566c47f75258eca711be"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.7.0/ttcli-1.7.0-osx-x86_64.zip"
    sha256 "b7e0bf904448e05432f4f4396af415b9052ce85c6be31264ad607ed9dfa3852a"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "1.7.0", output
  end
end
