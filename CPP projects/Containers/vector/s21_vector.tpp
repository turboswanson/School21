#include "s21_vector.hpp"

namespace s21 {
    template<typename T>
    vector<T> :: vector(){
        this->vector_init();
    }

    template<typename T>
    vector<T> :: vector(size_type n) {
        if(n < 0 || n >= this->max_size()){
            throw std::out_of_range("Vector size should be non-negative");
        }

        if(!n){
            this->vector_init();
        } else {
            size_ = n;
            capacity_ = n;
            ptr_ = new T[n];
        }
    }

    template<typename T>
    vector<T> :: vector(const std::initializer_list<value_type>& items)
                 : vector(items.size()){
        int index = 0;

        for(auto &element : items){
            ptr_[index] = element;
            ++index;
        }
    }

    template<typename T>
    vector<T> :: vector(const vector &other) {
        this->copy_vector(other);
    }

    template<typename T>
    vector<T> :: vector(vector&& other) {
        this->swap(other);
        other.vector_init();   
    }

    template<typename T>
    vector<T>& vector<T> :: operator = (vector&& other) {
       this->swap(other);
        other.vector_init(); 

        return *this;
    }


    template<typename T>
    vector<T> :: ~vector(){
        this->remove();
    }

    // Vector Element access

    template<typename T>
    typename vector<T>:: value_type* vector<T> :: data() noexcept {
        return ptr_ ;
    }

    template<typename T>
    typename vector<T>::reference vector<T> :: at(vector<T>::size_type pos){
        if (pos >= size() || pos < 0) {
            throw std::out_of_range("The index is out of range");
        }

        return this->ptr_[pos];
    }

    template<typename T>
    typename vector<T>::reference vector<T> :: operator [](vector<T>::size_type pos){
        if (pos >= size() || pos < 0) {
            throw std::out_of_range("The index is out of range");
        }

        return this->ptr_[pos];
    }

    // Capacity

    template<typename T>
    bool vector<T> :: empty() const noexcept{
       return size_ == 0; 
    }

    template<typename T>
    typename vector<T> :: size_type vector<T> :: size() const noexcept{
        return size_;
    }

    template<typename T>
    typename vector<T> :: size_type vector<T> :: capacity() const noexcept{
        return capacity_;
    }

    /// @brief 
    /// @tparam T 
    /// @details numeric_limits<size_type>::max() returns UINT_MAX depends on 32 or 64-bit system
    /// @details pow(2,bits)/sizeof(value_type), bits = 31 or 63  
    template<typename T>
    typename vector<T> :: size_type vector<T> :: max_size() const noexcept{
        return std::numeric_limits<size_type>::max() / (2 * sizeof(T));
     }
        


    
    // AUX

    template<typename T>
    void vector<T> :: vector_init() {
        this->size_ = 0;
        this->capacity_ = 0;
        this->ptr_ = nullptr;
    }

    template<typename T>
    void vector<T> :: remove(){
        if(this->ptr_){
            delete[] ptr_;
        }

        ptr_ = nullptr;

        this->size_ = 0;
        this->capacity_ = 0;
    }

    template<typename T>
    void vector<T> :: copy_vector(const vector& other) {
        this->size_ = other.size_;
        this->capacity_ = other.capacity_;
        this->ptr_ = new T[this->size_];

        for(int i = 0; i < this->size_;i++){
            this->ptr_[i] = other.ptr_[i];
        }    
    }

    template<typename T>
    void vector<T> :: swap(const vector& other){
        this->size_ = other.size_;
        this->capacity_ = other.capacity_;
        this->ptr_ = other.ptr_;
    }

}