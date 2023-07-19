# Generated with JReleaser 1.7.0 at 2023-07-19T18:27:45.798570364Z
class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://github.com/wimdeblauwe/ttcli"
  url "https://github.com/wimdeblauwe/ttcli/releases/download/0.11.0/ttcli-0.11.0-osx-x86_64.zip"
  version "0.11.0"
  sha256 "7b50aee16c486d64214b7dc7b84383f1b7ce5698315458a14107bee74dac5e1f"
  license "Apache License, Version 2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "0.11.0", output
  end
end
