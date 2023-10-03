# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Unique < Formula
  desc "unique is simple tool that outputs the unique lines of its input"
  homepage "https://github.com/ro-tex/unique"
  url "https://github.com/ro-tex/unique/archive/refs/tags/v0.0.4.tar.gz"
  sha256 "f910e85c60889c671dda92d303760f6e0f109d945a851477b7f9f188ae18e969"
  license "MIT License"

  # bottle do
  #   sha256 cellar: :any_skip_relocation, arm64_ventura: "cef4134a29f53b972338c99723f35f0eb06622ff736f027ec51d5515b708bbd3"
  # end

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
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test unique`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    # system "false"

    system "#{bin}/unique --help"
  end
end
