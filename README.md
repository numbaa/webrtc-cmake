# deprecated
我是shabi

# webrtc-cmake
Try building [webrtc](https://webrtc.googlesource.com/) using cmake.

Work in progress, NOT compilable yet.


Usage:
```
git clone https://github.com/numbaa/webrtc-cmake
cd webrtc-cmake
mkdir build && cd build
cmake ..
```
If you have trouble with accessing `https://webrtc.googlesource.com`, replace
```
cmake ..
```
with
```
cmake .. -DUSE_MIRROR_REPO=ON
```