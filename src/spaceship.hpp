#include<cstring>
#include<iostream>
class Spaceship {
    public:
    Spaceship(char* name) : m_file_name((char*)malloc(500*sizeof(char))){
        std::strcpy(m_file_name,name);
    }
    void print_file_name() {
        std::size_t len = std::strlen(m_file_name);
        for(int i = 0; i < len; ++i) {
            std::cout << m_file_name[i] << " ";
        }
        std::cout << std::endl;
    }
    private:
        char* m_file_name;
};
