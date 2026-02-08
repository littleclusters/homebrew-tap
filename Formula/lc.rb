class Lc < Formula
    desc "Learn distributed systems by building them from scratch"
    homepage "https://littleclusters.com/"
    url "https://github.com/littleclusters/lc.git", tag: "v0.1.1"

    depends_on "go" => :build

    def install
      system "go", "mod", "download"
      system "go", "build", "-o", "lc", "./cmd/lc"

      bin.install "lc"
    end
  end
