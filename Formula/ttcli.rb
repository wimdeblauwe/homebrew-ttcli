# Generated with JReleaser 1.5.1 at 2023-05-09T19:46:16.938492206Z
class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://spring.io/projects/spring-boot/ttcli"
  url "https://github.com/wimdeblauwe/ttcli/releases/download/0.9.2/ttcli-0.9.2-osx-x86_64.zip"
  version "0.9.2"
  sha256 "ac2e8e62d101529cf7b5a4e93367713ca3b10507b26a540efc35b3e10db2b56d"
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
