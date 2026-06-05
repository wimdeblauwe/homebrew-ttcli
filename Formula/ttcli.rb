# Generated with JReleaser 1.24.0 at 2026-06-05T10:07:58.581538202Z

class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://github.com/wimdeblauwe/ttcli"
  version "1.12.3"
  license "Apache License, Version 2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.12.3/ttcli-1.12.3-linux-x86_64.zip"
    sha256 "6be248ba2692b511d1d064be71903e89d1269fc79071d17b56b7149b19721196"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.12.3/ttcli-1.12.3-osx-aarch_64.zip"
    sha256 "025de4f97d795feb0b1182f829f1090a69dcf4257bb01e261c68f192332a5e04"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.12.3/ttcli-1.12.3-osx-x86_64.zip"
    sha256 "06937522ab1c547d1a2c209323b1de569d6d645f588d9f1588226c74581ad6c2"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "1.12.3", output
  end
end
