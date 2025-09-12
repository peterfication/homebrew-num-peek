class NumPeek < Formula
  desc ' A CLI tool to peek into *.npy files '
  homepage 'https://github.com/peterfication/num-peek'
  version '0.1.2'

  if Hardware::CPU.arm?
    url 'https://github.com/peterfication/num-peek/releases/download/0.1.2/num-peek-v0.1.2-aarch64-apple-darwin.tar.gz'
    sha256 '60249f995a24eef2bca0e49102ba56b89a4bdb44be7a295ce0fc34ea59d4955a'
  else
    url 'https://github.com/peterfication/num-peek/releases/download/0.1.2/num-peek-v0.1.2-x86_64-apple-darwin.tar.gz'
    sha256 '60ca808be8885441a965d2cfd254d336d238685e90d7fda8f7104f17f1cadddb'
  end

  def install
    bin.install('num-peek')
  end

  test do
    # Simple test to verify it runs
    system "#{bin}/num-peek", '--version'
  end
end
