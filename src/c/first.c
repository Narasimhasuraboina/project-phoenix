#include<fcnti.h>
#include<sys/stat.h>
#include<sys/types.h>
#include<string.h>
int main(int argc,char, *args[]){
    int fd=open("/tmp/file",O_WRONLY | O_CREAT | O_TRUNC,S_IWUSR | S_IWUSR);
        assert(fd>=0);
        char buffer[20];
        sprintf(buffer,"hello world"\n);
        int rc=write(fd,buffer,strlen(buffer));
        assert(rc==(strlen(buffer)));
        fsync(fd);
        close(fd);
        return 0;
}

