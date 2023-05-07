# Generated with JReleaser 1.5.1 at 2023-05-07T15:08:13.352941714Z
class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://spring.io/projects/spring-boot/ttcli"
  url "https://github.com/wimdeblauwe/ttcli/releases/download/0.9.0/ttcli-0.9.0-osx-x86_64.zip"
  version "0.9.0"
  sha256 "e1edcf8d92d8a1151e33008558c6b964ebb7cb108ec4638e99d979566e4aa098"
  license "Apache License, Version 2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "0.9.0", output
  end
end
