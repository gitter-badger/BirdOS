
@ECHO OFF 
echo COMPILING KERNEL
cd kernel
cargo kbuild
echo COMPILING BOOTLOADER
cargo krun
cd ..
echo RUN BIRDOS IN QEMU
qemu-system-x86_64 kernel\target\x86_64-blog_os\debug\boot-bios-blog_os.img