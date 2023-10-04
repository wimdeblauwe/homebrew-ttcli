# Generated with JReleaser 1.8.0 at 2023-10-04T14:59:21.348466581Z
class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://github.com/wimdeblauwe/ttcli"
  url "https://github.com/wimdeblauwe/ttcli/releases/download/0.14.0/ttcli-0.14.0-osx-x86_64.zip"
  version "0.14.0"
  sha256 "350e526fa086a5a2fd60176df37f7ad924ce9a3e0b5df779317398a5e4e9902d"
  license "Apache License, Version 2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "0.14.0", output
  end
end
