```
apt install cmake pkg-config
apt install libx11-dev
apt install mesa-utils libglu1-mesa-dev freeglut3-dev mesa-common-dev
apt install libpng-dev
apt install libasound2-dev
```
Download https://openal-soft.org/ 
The latest release is 1.23.1, and is available in source form.
openal-soft-1.23.1.tar.bz2
Extract openal-soft-1.23.1.tar.bz2
```
cd openal-soft-1.23.1
mkdir -p build
cd build
cmake ..
make -j10
sudo make install
```

```
g++ -std=c++17 -DOLC_PGE_APPLICATION -o olcExampleProgram olcExampleProgram.cpp -lpng -lGL -lX11 -lpthread -lstdc++fs
```
With OpenAL (sound support)
```
g++ -std=c++17 -DOLC_PGE_APPLICATION -DOLC_PGEX_SOUND -DUSE_OPENAL -o olcExampleProgram olcExampleProgram.cpp -lpng -lGL -lX11 -lpthread -lstdc++fs -lopenal
```