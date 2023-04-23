# Generated with JReleaser 1.5.1 at 2023-04-23T07:37:18.988119026Z
class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://spring.io/projects/spring-boot/ttcli"
  url "https://github.com/wimdeblauwe/ttcli/releases/download/0.8.0/ttcli-0.8.0-osx-x86_64.zip"
  version "0.8.0"
  sha256 "9e40df36a626d6d1be50da67e93b61aa0070a2cac044f337b8a3f109f1d83c63"
  license "Apache License, Version 2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "0.8.0", output
  end
end
