# Generated with JReleaser 1.3.1 at 2022-11-28T06:35:55.509693369Z
class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://spring.io/projects/spring-boot/ttcli"
  url "https://github.com/wimdeblauwe/ttcli/releases/download/0.4.0/ttcli-0.4.0-osx-x86_64.zip"
  version "0.4.0"
  sha256 "5c7189fdd17284a4b8d3b12b4adf95d96ba113b14c127d88c81ec77202375cf5"
  license "Apache License, Version 2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "0.4.0", output
  end
end
