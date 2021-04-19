all : kbuild krun qemu
kbuild:
	echo COMPILING KERNEL
	cd kernel 
	cargo kbuild
krun:
	echo COMPILING BOOTLOADER
	cargo krun
	cd ..
	
qemu:
	echo RUNINING A SYSTEM
	kernel/target/x86_64-blog_os/debug/boot-bios-blog_os.img

setup:
	rustup override set nightly 
	rustup component add llvm-tools-preview
	rustup component add rust-src 
	git submodule init
	git submodule update
