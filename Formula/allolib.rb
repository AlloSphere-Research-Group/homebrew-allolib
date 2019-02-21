require 'formula'

class Allolib < Formula
  url 'https://github.com/akshay1992/allolib'

  depends_on 'cmake' => :build
  depends_on 'assimp'
  depends_on 'freeimage'
  depends_on 'freetype'
  depends_on 'glfw3'
  depends_on 'portaudio'
  depends_on 'libsndfile'

  def install
    mkdir "build" do
      system "cmake", "..", "-DNO_EXAMPLES=1", *std_cmake_args
      system "make al"
      system "make install"
   end
  end
end
