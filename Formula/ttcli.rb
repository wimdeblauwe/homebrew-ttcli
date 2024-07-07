# Generated with JReleaser 1.13.1 at 2024-07-07T09:01:08.713580526Z

class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://github.com/wimdeblauwe/ttcli"
  version "1.3.1"
  license "Apache License, Version 2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.3.1/ttcli-1.3.1-linux-x86_64.zip"
    sha256 "14f88344efa49041f70428ad73d35985395a07722927c46db1ee0b08d9f02bce"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.3.1/ttcli-1.3.1-osx-aarch_64.zip"
    sha256 "3dbf8c0c277647f1a95cdf8cc0e4e9846d74636fcdefb0dcc0e1f8dc27052154"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.3.1/ttcli-1.3.1-osx-x86_64.zip"
    sha256 "c341b6957841d887ba057afee4ed8d7055bd672d830e832851cc60700ec4b01b"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "1.3.1", output
  end
end
