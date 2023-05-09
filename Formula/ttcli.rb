# Generated with JReleaser 1.5.1 at 2023-05-09T06:31:26.879117574Z
class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://spring.io/projects/spring-boot/ttcli"
  url "https://github.com/wimdeblauwe/ttcli/releases/download/0.9.2/ttcli-0.9.2-osx-x86_64.zip"
  version "0.9.2"
  sha256 "a1a091d9e19ca17cb5f4581f7b6c98be69a49c1a5c01409ee43c15a60338bcc9"
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
