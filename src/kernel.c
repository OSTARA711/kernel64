#include<stdint.h>
#include<stddef.h>


#define VGA_ADDRESS 0xB8000
#define VGA_WIDTH 80
#define VGA_HEIGHT 25

size_t terminal_column = 0;
size_t terminal_row = 0;
size_t terminal_color = 0X0F;


void putchar(char c){
    if (c == '\n') {
        terminal_column = 0;
        terminal_row++;
        return;
    }

    uint16_t* vga = (uint16_t*) VGA_ADDRESS;
    vga[terminal_row * VGA_WIDTH + terminal_column] = (terminal_color << 8);
    terminal_column++;

    if (terminal_row >= VGA_HEIGHT){
        terminal_color = 0;
        terminal_row++;
    }

    if(terminal_row >= VGA_HEIGHT){
        terminal_row = 0;
    }
}

void print(const char* str){
    for (size_t i = 0; str[i] != '\0'; i++){
        putchar(str[i]);
    }
}
void kmain(void) {
    print("Hello, world");

}
