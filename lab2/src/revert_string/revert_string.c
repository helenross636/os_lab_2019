#include "revert_string.h"

void RevertString(char *str)
{
    char* Pointer=str,Buffer; 
    for(;*Pointer;Pointer++); 
    for(;str<Pointer;) 
    Buffer=*str, 
    *(str++)=*(--Pointer), 
    *Pointer=Buffer; 
}

