#making the kernel entry point 

    #cross-compiler   filename with path  output object
    i686-elf-as       boot.s -o           boot.o
  

#making the C - kernel
i686-elf-gcc -c kernel.c -o kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra



#making the cpp kernel
i686-elf-g++ -c kernel.c++ -o kernel.o -ffreestanding -O2 -Wall -Wextra -fno-exceptions -fno-rtti



#linking the kernel code to the kernel entry point assembly code
i686-elf-gcc -T linker.ld -o myos.bin -ffreestanding -O2 -nostdlib boot.o kernel.o -lgcc



#running the OS
#todo write the code to create the iso file and running it in a VM