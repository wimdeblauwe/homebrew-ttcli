# Generated with JReleaser 1.8.0 at 2023-10-15T07:54:25.864301425Z
class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://github.com/wimdeblauwe/ttcli"
  url "https://github.com/wimdeblauwe/ttcli/releases/download/0.15.0/ttcli-0.15.0-osx-x86_64.zip"
  version "0.15.0"
  sha256 "d7e0840b78ebc64f2feb9d2087504f6e8004cf65d350ed2cc6ecb818ca916bc1"
  license "Apache License, Version 2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "0.15.0", output
  end
end
