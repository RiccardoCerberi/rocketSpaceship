#pragma once
#include<iostream>

class Object {
    public:
        // it returns the name of the object, usefull for debugging
        virtual std::string name() = 0; 

        // compute the texture
        virtual void animate() = 0;

        // compute next location
        virtual void advance()=0;

        // solve collisions:
        // for example collision between asteroid and spaceship:
        // if 
        virtual void solveCollisions() = 0;

        // takes info about the object that is hit
        virtual void hit(Object&) = 0;
};
