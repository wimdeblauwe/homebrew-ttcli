# Generated with JReleaser 1.14.0 at 2024-09-23T06:55:35.269129677Z

class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://github.com/wimdeblauwe/ttcli"
  version "1.4.1"
  license "Apache License, Version 2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.4.1/ttcli-1.4.1-linux-x86_64.zip"
    sha256 "b90eed73de6ab6fb4764f6308ccf18955b8eec4fd6eb0191b5582a37b9365891"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.4.1/ttcli-1.4.1-osx-aarch_64.zip"
    sha256 "4147118b7bbee54682b2093d0e2c14b42ec2cbdb1976de71354122ef15105e57"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.4.1/ttcli-1.4.1-osx-x86_64.zip"
    sha256 "4a558f7c1dd495ad3cbe088d983c93e6deef44ff9250884ef062c1879e570b85"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "1.4.1", output
  end
end
