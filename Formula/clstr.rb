class Clstr < Formula
    desc "Learn distributed systems by building them from scratch"
    homepage "https://clstr.io/"
    url "https://github.com/clstr-io/clstr.git", tag: "v0.3.0"

    depends_on "go" => :build

    def install
      system "go", "mod", "download"
      system "go", "build", "-o", "clstr", "./cmd/clstr"

      bin.install "clstr"
    end
  end
