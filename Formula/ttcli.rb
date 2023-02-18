# Generated with JReleaser 1.3.1 at 2023-02-18T16:47:08.436467516Z
class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://spring.io/projects/spring-boot/ttcli"
  url "https://github.com/wimdeblauwe/ttcli/releases/download/0.5.1/ttcli-0.5.1-osx-x86_64.zip"
  version "0.5.1"
  sha256 "98860c1833422825dd3436542aedbbfc845bc7050ff483ca08cecfd8fb490aa3"
  license "Apache License, Version 2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "0.5.1", output
  end
end
