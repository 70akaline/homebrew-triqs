class Triqs < Formula
  desc "Toolbox for Research on Interacting Quantum Systems"
  homepage "https://triqs.github.io/triqs/2.2.x/"
  url "https://github.com/TRIQS/triqs/releases/download/2.2.3/triqs-2.2.3.tar.gz"
  sha256 "8296979a57b4cf21df6eb8cffbae77b0acd0b0c955393a08e89fb255f75a4af7"
  head "https://github.com/TRIQS/triqs"

  # doi "10.1016/j.cpc.2015.04.023"
  # tag "quantumphysics"

  depends_on "cmake" => :build
  depends_on "llvm"
  depends_on "boost"
  depends_on "hdf5@1.10"
  depends_on "gmp"
  depends_on "fftw"
  depends_on "open-mpi"
  #depends_on "python@2"
  #depends_on "scipy"
  #depends_on "numpy"
  depends_on "pkg-config" => :run

  def install
    #system "python", "-m", "pip", "install",  "matplotlib"
    #system "python", "-m", "pip", "install", "--upgrade", "--user", "jupyter"
    #system "python", "-m", "pip", "install", "mako"
    #system "python", "-m", "pip", "install", "--no-binary=h5py", "h5py"
    #system "python", "-m", "pip", "install", "--no-binary=mpi4py", "mpi4py"

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
