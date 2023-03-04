# Generated with JReleaser 1.5.0 at 2023-03-04T09:46:12.027804489Z
class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://spring.io/projects/spring-boot/ttcli"
  url "https://github.com/wimdeblauwe/ttcli/releases/download/0.7.0/ttcli-0.7.0-osx-x86_64.zip"
  version "0.7.0"
  sha256 "c32a5b3661e120420a74be34bb279a0b3dab70f8400cde9a2a0ca3c98afddd11"
  license "Apache License, Version 2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "0.7.0", output
  end
end
