# Generated with JReleaser 1.3.1 at 2022-12-11T13:15:55.038647353Z
class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://spring.io/projects/spring-boot/ttcli"
  url "https://github.com/wimdeblauwe/ttcli/releases/download/0.5.0/ttcli-0.5.0-osx-x86_64.zip"
  version "0.5.0"
  sha256 "1949d230e9b197a1d77a5323bb91c6e433c9c5e8587d6633a216df003019e9b8"
  license "Apache License, Version 2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "0.5.0", output
  end
end
