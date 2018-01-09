
const char str[] = "hello world!\n";

int main(int argc, char** argv)
{
    asm volatile("movl $4, %eax;"
            "movl $1, %ebx;"
            "movl $str, %ecx;"
            "movl $14, %edx;"
            "int $0x80");
    return 0;
}
