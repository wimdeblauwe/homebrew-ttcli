# Generated with JReleaser 1.11.0 at 2024-05-01T09:08:38.898594189Z

class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://github.com/wimdeblauwe/ttcli"
  version "1.2.0"
  license "Apache License, Version 2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.2.0/ttcli-1.2.0-linux-x86_64.zip"
    sha256 "52f307a2340f03447b4898df53c11af1113faa00c723a6d6e19d2e78ab3acee5"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.2.0/ttcli-1.2.0-osx-aarch_64.zip"
    sha256 "c8b820decb2abf69a889675558398d7a5c2dbda891a4ca7db7363240e5271c3d"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.2.0/ttcli-1.2.0-osx-x86_64.zip"
    sha256 "1b829cc8d8e3d1306feb2b18d2f3a21b12c3b375e6073e765ec1df4a479d635d"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "1.2.0", output
  end
end
