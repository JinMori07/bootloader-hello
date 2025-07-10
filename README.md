# bootloader-hello
Bootloader in assembly that prints 'HELLO WORLD' and takes input until enter

# readme

Assemble the code with nasm like so:

**nasm -f bin boot.asm -o boot.bin**

run the boot.bin with qemu:

**qemu-system-x86_64 -drive format=raw,file=boot.bin**
