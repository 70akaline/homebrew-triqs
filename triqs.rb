class Triqs < Formula
  desc "Toolbox for Research on Interacting Quantum Systems"
  homepage "https://triqs.github.io/triqs/2.1.x/"
  url "https://github.com/TRIQS/triqs/archive/2.1.1.tar.gz"
  sha256 "f76909c02bf306d0796297d9854ad5f1262f2cbd6b8c8521760e972dd72f9d13"
  head "https://github.com/TRIQS/triqs"

  # doi "10.1016/j.cpc.2015.04.023"
  # tag "quantumphysics"

  depends_on "cmake" => :build
  depends_on "llvm"
  depends_on "boost"
  depends_on "hdf5"
  depends_on "gmp"
  depends_on "fftw"
  depends_on "open-mpi"
  depends_on "python@2"
  depends_on "scipy"
  depends_on "numpy"
  depends_on "pkg-config" => :run

  def install
    system "/usr/local/bin/pip2", "install", "--upgrade", "matplotlib"
    system "/usr/local/bin/pip2", "install", "--upgrade", "jupyter"
    system "/usr/local/bin/pip2", "install", "--upgrade", "mako"
    system "/usr/local/bin/pip2", "install", "--upgrade", "--force-reinstall", "--no-binary=h5py", "h5py"
    system "/usr/local/bin/pip2", "install", "--upgrade", "--force-reinstall", "--no-binary=mpi4py", "mpi4py"

    args = %W[
      ..
      -DCMAKE_BUILD_TYPE=Release
      -DCMAKE_CXX_COMPILER=/usr/local/opt/llvm/bin/clang++
      -DCMAKE_EXE_LINKER_FLAGS=-L/usr/local/opt/llvm/lib
      -DCMAKE_SHARED_LINKER_FLAGS=-L/usr/local/opt/llvm/lib
      -DCMAKE_MODULE_LINKER_FLAGS=-L/usr/local/opt/llvm/lib
      -DCMAKE_CXX_FLAGS="-stdlib=libc++"
      -DCMAKE_INSTALL_PREFIX=#{prefix}
    ]

    mkdir "build" do
      system "cmake", *args
      system "make"
      system "make", "test"
      system "make", "install"
    end
  end

  test do
    system "python -c 'import pytriqs'"
  end
end
