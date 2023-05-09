# Generated with JReleaser 1.5.1 at 2023-05-09T11:05:52.311686001Z
class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://spring.io/projects/spring-boot/ttcli"
  url "https://github.com/wimdeblauwe/ttcli/releases/download/0.9.2/ttcli-0.9.2-osx-x86_64.zip"
  version "0.9.2"
  sha256 "619f978db3f28c07de058d52f6be053e37734bc3eaf7bbcef2dc5380a7b402b0"
  license "Apache License, Version 2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "0.9.2", output
  end
end
