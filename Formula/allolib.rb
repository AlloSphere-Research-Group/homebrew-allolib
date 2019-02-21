class Allolib < Formula
  desc "AlloSystem for OpenGL 3.3 or higher"
  homepage "https://github.com/AlloSphere-Research-Group/allolib"
  head "https://github.com/akshay1992/allolib.git"

  depends_on "cmake" => :build
  depends_on "assimp"
  depends_on "freeimage"
  depends_on "freetype"
  depends_on "glfw"
  depends_on "libsndfile"
  depends_on "portaudio"

  def install
    mkdir "build" do
    system "cmake", ".", "-DNO_EXAMPLES=1", *std_cmake_args
    system "make", "al"
    system "make", "install"
    end

    test do
    end
  end
end
