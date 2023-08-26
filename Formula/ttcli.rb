# Generated with JReleaser 1.7.0 at 2023-08-26T10:38:23.572106879Z
class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://github.com/wimdeblauwe/ttcli"
  url "https://github.com/wimdeblauwe/ttcli/releases/download/0.13.0/ttcli-0.13.0-osx-x86_64.zip"
  version "0.13.0"
  sha256 "919c845a2889fe9ddd47ebacc33ea0fcd60c8b11c2054e127630a44252abd92e"
  license "Apache License, Version 2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "0.13.0", output
  end
end
