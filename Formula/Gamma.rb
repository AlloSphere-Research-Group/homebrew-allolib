class Gamma < Formula
  desc "AlloSystem for OpenGL 3.3 or higher"
  homepage "https://github.com/AlloSphere-Research-Group/Gamma"
  head "https://github.com/AlloSphere-Research-Group/Gamma.git"

  depends_on "cmake" => :build
  depends_on "libsndfile"
  depends_on "portaudio"

  def install
    system "cmake", ".", "-DNO_EXAMPLES=1", *std_cmake_args
    system "make", "Gamma"

    lib.install Dir["build/lib/libGamma.a"]
    include.install Dir["Gamma"]

    test do
    end
  end

  def uninstall
    lib.uninstall Dir["build/lib/libGamma.a"]
    include.uninstall Dir["Gamma"]
  end
end
