all : kbuild krun qemu
kbuild:
	echo COMPILING KERNEL 
	cargo kbuild
krun:
	echo COMPILING BOOTLOADER
	cargo krun
qemu:
	echo RUNINING A SYSTEM
	target/x86_64-blog_os/debug/boot-bios-blog_os.img