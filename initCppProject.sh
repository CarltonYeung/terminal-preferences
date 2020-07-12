#/usr/bin/bash
set -e

__main=\
"int main(int argc, char** argv) {
    return 0;
}
"

FILE=tutorial.cpp
if [ ! -f "$FILE" ]; then
    echo "$__main" >> $FILE
fi

if [ ! -f CMakeLists.txt ]; then
    cp ~/CMakeLists.txt $PWD
fi

BUILD_DIR=$PWD/build
if [ ! -d "$BUILD_DIR" ]; then
    mkdir $BUILD_DIR
fi

LINK_SRC=$BUILD_DIR/compile_commands.json
if [ ! -f "$LINK_SRC" ]; then
    cd $BUILD_DIR 
    cmake ..
    cmake --build .
    cd ..
fi

LINK_DEST=compile_commands.json
if [ ! -L "$LINK_DEST" ]; then
    ln -s $LINK_SRC $LINK_DEST
fi

echo "Done"

exit 0

