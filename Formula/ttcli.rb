# Generated with JReleaser 1.22.0 at 2026-05-22T10:07:40.204745125Z

class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://github.com/wimdeblauwe/ttcli"
  version "1.12.0"
  license "Apache License, Version 2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.12.0/ttcli-1.12.0-linux-x86_64.zip"
    sha256 "fbc975c48c1ad532b21463c008a65ec14cb3ede6f5e34b970c7485f597ea5a50"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.12.0/ttcli-1.12.0-osx-aarch_64.zip"
    sha256 "d9e23fd2e12b618294df07d1a0b1055d7c5069f916670866832558e303de41ba"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.12.0/ttcli-1.12.0-osx-x86_64.zip"
    sha256 "9a5f97a6ff37f689a35c43dff19ba45e2ccb5bc84ec499a746bc5c825329a15f"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "1.12.0", output
  end
end
