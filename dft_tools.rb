class DftTools < Formula
  desc "Toolbox for ab initio calculations of correlated materials"
  homepage "https://triqs.github.io/dft_tools/2.1.x/"
  url "https://github.com/TRIQS/dft_tools/archive/2.1.0.tar.gz"
  sha256 "e26098ec6a35981f9258ca4295df3bdac8677a2264f3dce9c16faac48e505039"
  head "https://github.com/TRIQS/dft_tools"

  # doi "10.1016/j.cpc.2016.03.014"
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
    system "python -c 'import triqs_dft_tools'"
  end
end
