# Generated with JReleaser 1.8.0 at 2023-10-25T15:23:56.446244292Z
class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://github.com/wimdeblauwe/ttcli"
  url "https://github.com/wimdeblauwe/ttcli/releases/download/1.0.0/ttcli-1.0.0-osx-x86_64.zip"
  version "1.0.0"
  sha256 "af3693551524365e988f3a69c75aadd728d604a7ad6bb7545d1b840bfdd4ecc9"
  license "Apache License, Version 2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "1.0.0", output
  end
end
