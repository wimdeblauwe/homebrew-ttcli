# Generated with JReleaser 1.5.1 at 2023-05-30T06:57:44.944625648Z
class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://github.com/wimdeblauwe/ttcli"
  url "https://github.com/wimdeblauwe/ttcli/releases/download/0.10.0/ttcli-0.10.0-osx-x86_64.zip"
  version "0.10.0"
  sha256 "446f54ac05af70c7ed6138cd93b3cdb564ff994d3e9a302989f48fe99c96c372"
  license "Apache License, Version 2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "0.10.0", output
  end
end
