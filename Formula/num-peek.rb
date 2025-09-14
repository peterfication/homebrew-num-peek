class NumPeek < Formula
  desc ' A CLI tool to peek into *.npy files '
  homepage 'https://github.com/peterfication/num-peek'
  version '0.1.4'
  # https://github.com/peterfication/num-peek/releases/tag/0.1.4

  if Hardware::CPU.arm?
    url 'https://github.com/peterfication/num-peek/releases/download/0.1.4/num-peek-v0.1.4-aarch64-apple-darwin.tar.gz'
    sha256 '27943b8d2985d394ec8309c79eb33f7b9f3ef1e79cabe704c5c364fc11bcf4fd'
  else
    url 'https://github.com/peterfication/num-peek/releases/download/0.1.4/num-peek-v0.1.4-x86_64-apple-darwin.tar.gz'
    sha256 '8a02d8911f1aad847162f69895ee3942067a9d2b89ec5d881c695328452590eb'
  end

  def install
    bin.install('num-peek')
  end

  test do
    # Simple test to verify it runs
    system "#{bin}/num-peek", '--version'
  end
end
