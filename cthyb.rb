class Cthyb < Formula
  desc "A fast and generic hybridization-expansion solver"
  homepage "https://triqs.github.io/cthyb/2.1.x/"
  url "https://github.com/TRIQS/cthyb/archive/2.1.0.tar.gz"
  sha256 "e673c8fd00f2b2fe56d86b925b12711b62bd5044aa67ae4d51db3b8cbd22bf95"
  head "https://github.com/TRIQS/cthyb"

  # doi "10.1016/j.cpc.2015.10.023"
  # tag "quantumphysics"

  depends_on "cmake" => :build
  depends_on "triqs" => "2.1"
  depends_on "nfft"

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
    system "python -c 'import triqs_cthyb'"
  end
end
