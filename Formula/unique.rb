class Unique < Formula
  desc "unique is simple tool that outputs the unique lines of its input"
  homepage "https://github.com/ro-tex/unique"
  url "https://github.com/ro-tex/unique/archive/refs/tags/v0.0.4.tar.gz"
  sha256 "f910e85c60889c671dda92d303760f6e0f109d945a851477b7f9f188ae18e969"
  license "MIT License"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath

    bin_path = buildpath/"src/github.com/ro-tex/unique"
    # Copy all files from their current location (GOPATH root) to $GOPATH/src/github.com/ro-tex/unique
    bin_path.install Dir["*"]
    cd bin_path do
      system "go", "build", "-o", bin/"unique", "."
    end
  end

  test do
    system "#{bin}/unique --help"
  end
end
