# Generated with JReleaser 1.5.1 at 2023-05-11T07:54:58.870663672Z
class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://github.com/wimdeblauwe/ttcli"
  url "https://github.com/wimdeblauwe/ttcli/releases/download/0.9.3/ttcli-0.9.3-osx-x86_64.zip"
  version "0.9.3"
  sha256 "ea68238d8be9231706bdbabdcf8d2070b5e033305eb5bdba34d8949d37205d31"
  license "Apache License, Version 2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "0.9.3", output
  end
end
