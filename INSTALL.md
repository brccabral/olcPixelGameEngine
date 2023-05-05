apt install cmake pkg-config
apt install libx11-dev
apt install mesa-utils libglu1-mesa-dev freeglut3-dev mesa-common-dev
apt install libpng-dev
apt install libasound2-dev

g++ -std=c++17 -DOLC_PGE_APPLICATION -DOLC_IMAGE_LIBPNG -o olcExampleProgram olcExampleProgram.cpp -lpng -lGL -lX11 -lpthread -lstdc++fs