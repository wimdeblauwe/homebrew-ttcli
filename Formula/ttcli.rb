# Generated with JReleaser 1.5.1 at 2023-05-30T07:38:28.874202071Z
class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://github.com/wimdeblauwe/ttcli"
  url "https://github.com/wimdeblauwe/ttcli/releases/download/0.10.1/ttcli-0.10.1-osx-x86_64.zip"
  version "0.10.1"
  sha256 "aa77fedd5575c77ea412c5ce10fde987ecb071198851da03db552d7d0838c928"
  license "Apache License, Version 2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "0.10.1", output
  end
end
