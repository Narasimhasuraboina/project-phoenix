#include <stdio.h>
#include <string.h>

void reverse_string(char *str) {
    if (!str) return;
    int left = 0;
    int right = (int)strlen(str) - 1;
    while (left < right) {
        char temp = str[left];
        str[left] = str[right];
        str[right] = temp;
        left++;
        right--;
    }
}

int main(void) {
    char test1[] = "Project Phoenix";
    char test2[] = "Antigravity";

    printf("Original: %s\n", test1);
    reverse_string(test1);
    printf("Reversed: %s\n\n", test1);

    printf("Original: %s\n", test2);
    reverse_string(test2);
    printf("Reversed: %s\n", test2);

    return 0;
}
