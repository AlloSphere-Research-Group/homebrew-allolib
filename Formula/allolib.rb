require 'formula'

class Allolib < Formula
  head 'https://github.com/AlloSphere-Research-Group/allolib', :branch => "devel"

  depends_on 'cmake' => :build
  depends_on 'assimp'
  depends_on 'freeimage'
  depends_on 'freetype'
  depends_on 'glfw3'
  depends_on 'portaudio'
  depends_on 'libsndfile'

  def install
    system "git submodule init"
    system "git submodule update"
    mkdir "build" do
      system "cmake", "..", "-DNO_EXAMPLES=1", *std_cmake_args
      system "make al"
      system "make install"
   end
  end
end
