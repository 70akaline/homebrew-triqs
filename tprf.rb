class Tprf < Formula
  desc "The Two-Particle Response Function tool box for TRIQS"
  homepage "https://triqs.github.io/tprf/2.1.x/"
  url "https://github.com/TRIQS/tprf/archive/2.1.1.tar.gz"
  sha256 "64e69f56ad7b38a5597dd82541a2a6b8b31398366aece153f66efab05ead29ac"
  head "https://github.com/TRIQS/tprf"

  # doi "10.5281/zenodo.2638058"
  # tag "quantumphysics"

  depends_on "cmake" => :build
  depends_on "triqs" => "2.1"

  def install

    args = %W[
      ..
      -DCMAKE_BUILD_TYPE=Release
      -DCMAKE_CXX_COMPILER=/usr/local/opt/llvm/bin/clang++
      -DCMAKE_EXE_LINKER_FLAGS=-L/usr/local/opt/llvm/lib
      -DCMAKE_SHARED_LINKER_FLAGS=-L/usr/local/opt/llvm/lib
      -DCMAKE_MODULE_LINKER_FLAGS=-L/usr/local/opt/llvm/lib
      -DCMAKE_CXX_FLAGS="-stdlib=libc++"
    ]

    mkdir "build" do
      system "cmake", *args
      system "make"
      system "make", "test"
      system "make", "install"
    end
  end

  test do
    system "python -c 'import triqs_tprf'"
  end
end
