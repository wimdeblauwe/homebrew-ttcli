# Generated with JReleaser 1.3.1 at 2022-11-15T22:23:22.668799216Z
class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://spring.io/projects/spring-boot/ttcli"
  url "https://github.com/wimdeblauwe/ttcli/releases/download/0.3.0/ttcli-0.3.0-osx-x86_64.zip"
  version "0.3.0"
  sha256 "178efc95cc715b890b0c65307c36d289cd774927d44d2c0618ed68d404aa72b7"
  license "Apache License, Version 2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "0.3.0", output
  end
end
