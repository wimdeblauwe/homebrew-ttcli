# Generated with JReleaser 1.5.1 at 2023-05-08T21:05:55.54765075Z
class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://spring.io/projects/spring-boot/ttcli"
  url "https://github.com/wimdeblauwe/ttcli/releases/download/0.9.2/ttcli-0.9.2-osx-x86_64.zip"
  version "0.9.2"
  sha256 "0e34b23e02211513ff037cbd09c67c2b6f8fd523c52f47ca84d71d1d2fb12f87"
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
