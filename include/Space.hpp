#pragma once

class Space {
    public:
        Space();
        void advance(); // this function calls update  

    private:
        void update();
};
