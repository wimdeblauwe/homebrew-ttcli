# Generated with JReleaser 1.9.0 at 2023-12-14T20:13:20.081609342Z
class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://github.com/wimdeblauwe/ttcli"
  url "https://github.com/wimdeblauwe/ttcli/releases/download/1.1.0/ttcli-1.1.0-osx-x86_64.zip"
  version "1.1.0"
  sha256 "37e9ed7b3c94fda9661d04e2e39c68126d2555ecdaf5eb7edb394dd3d81394fa"
  license "Apache License, Version 2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "1.1.0", output
  end
end
