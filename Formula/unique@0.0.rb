# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class UniqueAT00 < Formula
  desc "Outputs the unique lines of its input"
  homepage "https://github.com/ro-tex/unique"
  version "0.0.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ro-tex/unique/releases/download/v0.0.5/unique_0.0.5_darwin_arm64.tar.gz"
      sha256 "2ce0904851d13ea780fa5f87a76d0851cf78fe1d3fe78798bc4424754c40ff59"

      def install
        bin.install "unique"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ro-tex/unique/releases/download/v0.0.5/unique_0.0.5_darwin_amd64.tar.gz"
      sha256 "a0456bafedcc217e04267a2ffc62e9fe16b8dbc93c6b398299c833c2009360d7"

      def install
        bin.install "unique"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ro-tex/unique/releases/download/v0.0.5/unique_0.0.5_linux_arm64.tar.gz"
      sha256 "bf61c05ee859c70318fea9b13e4022c77c80e9962b837efb023da29fdf921fda"

      def install
        bin.install "unique"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ro-tex/unique/releases/download/v0.0.5/unique_0.0.5_linux_amd64.tar.gz"
      sha256 "755ab4eaffd3c1e95eef2d9a0cabc16f7805c37730daf0bcd440e918840069a8"

      def install
        bin.install "unique"
      end
    end
  end
end
