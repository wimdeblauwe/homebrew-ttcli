# Generated with JReleaser 1.24.0 at 2026-06-05T09:05:30.158872399Z

class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://github.com/wimdeblauwe/ttcli"
  version "1.12.2"
  license "Apache License, Version 2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.12.2/ttcli-1.12.2-linux-x86_64.zip"
    sha256 "3f97027c7a7485bbd43d500552885c25ed9d6e1efb7e329c313fe5b9412f4f25"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.12.2/ttcli-1.12.2-osx-aarch_64.zip"
    sha256 "d363c3cad2a840e5e080069157f11ededae656eb7c320f94c17b4e6273702c6c"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.12.2/ttcli-1.12.2-osx-x86_64.zip"
    sha256 "cf54693b2ddeedfdd77a22de88a0b7d427e71563f58e6cade92fc0404a27ab62"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "1.12.2", output
  end
end
