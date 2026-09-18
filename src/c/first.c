#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <string.h>
#include <assert.h>

int main(int argc, char *argv[]) {
    (void)argc;
    (void)argv;

    int fd = open("/tmp/phoenix_file.txt", O_WRONLY | O_CREAT | O_TRUNC, S_IRUSR | S_IWUSR);
    assert(fd >= 0);

    char buffer[64];
    sprintf(buffer, "Hello from Project Phoenix low-level I/O!\n");

    ssize_t rc = write(fd, buffer, strlen(buffer));
    assert(rc == (ssize_t)strlen(buffer));

    fsync(fd);
    close(fd);

    printf("Successfully wrote to /tmp/phoenix_file.txt (%zd bytes)\n", rc);
    return 0;
}
