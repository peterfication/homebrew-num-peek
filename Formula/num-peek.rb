class NumPeek < Formula
  desc ' A CLI tool to peek into *.npy files '
  homepage 'https://github.com/peterfication/num-peek'
  version '0.1.3'
  # https://github.com/peterfication/num-peek/releases/tag/0.1.3

  if Hardware::CPU.arm?
    url 'https://github.com/peterfication/num-peek/releases/download/0.1.3/num-peek-v0.1.3-aarch64-apple-darwin.tar.gz'
    sha256 'e23a3afb50f1965fe0d47eb938526a30a654b90191c8fa7b73ffb782727c3e74'
  else
    url 'https://github.com/peterfication/num-peek/releases/download/0.1.3/num-peek-v0.1.3-x86_64-apple-darwin.tar.gz'
    sha256 '8c04d9bd3e560d3d267ecb9cf51621effa0a51fbe1d343cefd226863d518e6d3'
  end

  def install
    bin.install('num-peek')
  end

  test do
    # Simple test to verify it runs
    system "#{bin}/num-peek", '--version'
  end
end
