#include <stdio.h>
#include <stdlib.h>

/// A struct for the example
struct a_struct {
    int integer; ///< an integer
    char character; ///< a char
};

/// \param n a number, used as a size
/// \param list a list of structs
void example(int n, struct a_struct* list) {
    /* TODO In a real life scenario, you will describe here what you want the
    end user to do with this generated code */
}

int main() {
    int n; ///< a number, used as a size
    scanf("%d\n", &n);
    struct a_struct* list = calloc(n, sizeof(struct a_struct)); ///< a list of structs
    for (int i = 0; i < n; ++i) {
        scanf("%d %c\n", &list[i].integer, &list[i].character);
    }
    example(n, list);

    return 0;
}
