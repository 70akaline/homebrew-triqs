class Nfft < Formula
  desc "Nonequispaced fast Fourier transform"
  homepage "https://www-user.tu-chemnitz.de/~potts/nfft"
  url "https://www-user.tu-chemnitz.de/~potts/nfft/download/nfft-3.5.1.tar.gz"
  sha256 "bb95b2c240c6d972d4bb20740751a8efeba8b48b3be1d61fd59883909776fee3"

  option "with-openmp", "Enable OpenMP multithreading"

  depends_on "fftw"

  needs :openmp if build.with? "openmp"

  def install
    args = %W[--disable-debug --disable-dependency-tracking --prefix=#{prefix}]
    args << "--enable-openmp" if build.with? "openmp"
    system "./configure", *args
    system "make", "install"
    system "make", "check"
  end

  def caveats
    <<~EOS
    NFFT is built as serial (not multi-threaded) library by default
    when being built with clang, as this compiler doesn't support
    OpenMP.

    A multi-threaded version of the NFFT library can be build with
    Homebrew's GNU C compiler, using

      brew install nfft --with-openmp

    which will create both serial and multi-threaded NFFT libraries.

    Linking against the serial libraries:

       ... -L#{opt_lib} -lnfft -lfftw3 ...

    Linking against the multi-threaded libraries (if built):

       ... -L#{opt_lib} -lnfft_threads -lfftw3_threads ...

    EOS
  end

  test do
    (testpath/"test.c").write <<~EOS
      #include <nfft3.h>
      #include <nfft3util.h>

      int main()
      {
        nfft_plan p;
        int N=14;
        int M=19;
        nfft_init_1d(&p,N,M);
        nfft_vrand_shifted_unit_double(p.x,p.M_total);
        return 0;
      }
    EOS
    system ENV.cc, "test.c", "-I#{include}", "-L#{lib}", "-lnfft3", "-o", "test"
    system "./test"
  end
end
