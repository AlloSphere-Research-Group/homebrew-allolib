class Allolib < Formula
  desc "AlloSystem for OpenGL 3.3 or higher"
  homepage "https://github.com/AlloSphere-Research-Group/allolib"
  head "https://github.com/akshay1992/allolib.git"

  depends_on "cmake" => :build
  depends_on "Gamma"
  depends_on "assimp"
  depends_on "freeimage"
  depends_on "freetype"
  depends_on "glfw"
  depends_on "libsndfile"
  depends_on "portaudio"

  def install
    mkdir "build" do
      system "cmake", "..", "-DNO_EXAMPLES=1", *std_cmake_args
      system "make", "al"
      system "make", "install"
    end

    lib.install Dir["al/lib/libal.a"]
    lib.install Dir["al/lib/libGamma.a"]
    include.install Dir["al/include/al"]

    test do
    end
  end

  def uninstall
    lib.uninstall Dir["al/lib/libal.a"]
    lib.uninstall Dir["al/lib/libGamma.a"]
    include.uninstall Dir["al/include/al"]
  end
end
