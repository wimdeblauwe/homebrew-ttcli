# Generated with JReleaser 1.7.0 at 2023-07-21T14:03:18.555239627Z
class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://github.com/wimdeblauwe/ttcli"
  url "https://github.com/wimdeblauwe/ttcli/releases/download/0.12.0/ttcli-0.12.0-osx-x86_64.zip"
  version "0.12.0"
  sha256 "c2256aa167f805519ff9b2c9b7d55cac30f7c6253dea7a767894bc948f7ebf94"
  license "Apache License, Version 2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "0.12.0", output
  end
end
