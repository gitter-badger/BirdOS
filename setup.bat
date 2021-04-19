@ECHO OFF
echo SETUP A PROJECT
rustup component add llvm-tools-preview
rustup component add rust-src 
rustup override set nightly 
git submodule init
git submodule update