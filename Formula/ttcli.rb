# Generated with JReleaser 1.18.0 at 2025-06-04T18:45:46.936199056Z

class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://github.com/wimdeblauwe/ttcli"
  version "1.9.0"
  license "Apache License, Version 2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.9.0/ttcli-1.9.0-linux-x86_64.zip"
    sha256 "a91d9415c52f78637be889ee77bfbb9f8a768430266747dc9463a90055fa7b66"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.9.0/ttcli-1.9.0-osx-aarch_64.zip"
    sha256 "62fd36092361441c3389e02675e8fa5659cb1c32dd93f453596f2c93e2e2ce0f"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.9.0/ttcli-1.9.0-osx-x86_64.zip"
    sha256 "7800f25ac8583ad04da8523fbd67fd15f071cf4140a09b12bcbcefc6d23ac0cc"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "1.9.0", output
  end
end
