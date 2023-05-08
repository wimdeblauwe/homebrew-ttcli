# Generated with JReleaser 1.5.1 at 2023-05-08T19:37:35.816358829Z
class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://spring.io/projects/spring-boot/ttcli"
  url "https://github.com/wimdeblauwe/ttcli/releases/download/0.9.1/ttcli-0.9.1-osx-x86_64.zip"
  version "0.9.1"
  sha256 "30b24bd4e3207d9249b83560c1c11e488c1d45ed90693745abf2c93488593193"
  license "Apache License, Version 2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "0.9.1", output
  end
end
