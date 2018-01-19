require 'formula'

class allolib < Formula
  head 'https://github.com/AlloSphere-Research-Group/allolib', :branch => "devel"

  depends_on 'cmake' => :build
  depends_on 'assimp'
  depends_on 'freeimage'
  depends_on 'freetype'
  depends_on 'glfw3'
  depends_on 'portaudio'
  depends_on 'libsndfile'

  def install
    system "cmake", ".", "-DNO_EXAMPLES=1", *std_cmake_args
    system "make"
    system "make install"
  end
end
