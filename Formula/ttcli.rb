# Generated with JReleaser 1.26.0 at 2026-10-09T18:38:35.30101133Z

class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://github.com/wimdeblauwe/ttcli"
  version "1.14.0"
  license "Apache License, Version 2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.14.0/ttcli-1.14.0-linux-x86_64.zip"
    sha256 "ed759d42943e6304b4e37ab4aaa1cd5d29092054a5034bb05e90127f76bec1ed"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.14.0/ttcli-1.14.0-osx-aarch_64.zip"
    sha256 "657620f2b2a88c8dae8910650216cb1335ce2311848bf987523a57e73d67224d"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.14.0/ttcli-1.14.0-osx-x86_64.zip"
    sha256 "8e27cee9640d98da9f56bfeb6fd1c5380a4a5b23986647d9740d174d5b4c3e4a"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "1.14.0", output
  end
end
