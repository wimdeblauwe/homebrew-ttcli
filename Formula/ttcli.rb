# Generated with JReleaser 1.5.1 at 2023-05-11T05:47:43.348482284Z
class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://spring.io/projects/spring-boot/ttcli"
  url "https://github.com/wimdeblauwe/ttcli/releases/download/0.9.2/ttcli-0.9.2-osx-x86_64.zip"
  version "0.9.2"
  sha256 "42633d58a22c3e4f39aba821b74c605176f9d40a1a9d12c08151321f61562f73"
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
