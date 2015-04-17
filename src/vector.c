#include "vector.h"

// Private

void vector_init(vector*);
void vector_init_with_size(vector*, long);
long vector_size(vector*);

/* * * * * * * * * *
* vector_create()
*
* @brief: creates a new vector
*
* @return a new vector
* * * * * * * * * */
vector* vector_create(void) 
{

    vector* v = malloc(sizeof(vector));;
    vector_init(v);
    return v;

}

/* * * * * * * * * *
* vector_create_with_size(s)
*
* @brief: creates a new vector with size s
*
* @param[in]: s, capacity of vector
*
* @return a new vector with capacity s
* * * * * * * * * */
vector* vector_create_with_size(long s) {

    vector* v = malloc(sizeof(vector));
    vector_init_with_size(v, s);
    return v;

}

/**
* vector_init(v): returns a vector v
*
* param[in]: v, a vector
* pre@: v is a valid vector
**/
void vector_init(vector *v)
{
    v->data = NULL;  // array to track data
    v->size = 0;     // size of the vector
    v->count = 0;    // number of elements in vector
}

/**
* vector_init_with_size(v, i): returns a vector v with
* preallocated size of i elements
*
* advantage over vector_init is that if we know the size
* we won't have to make multiple calls to malloc!
*
* param[in]: v, a vector
* pre@: v is a valid vector
**/
void vector_init_with_size(vector *v, long i)
{
    v->data = malloc(sizeof(void*) * i);  // array to track data
    v->size = i;     // size of the vector
    memset(v->data, '\0', sizeof(void*) * v->size);
    v->count = 0;    // number of elements in vector
}

/**
* vector_count(v): returns size of v
*
* param[in]: v, a vector
* pre@: v is a valid vector
**/
long vector_count(vector *v)
{
    if (!v) {
        return 0;
    }

    return v->count;
}
/**
* vector_count(v): returns size of v
*
* param[in]: v, a vector
* pre@: v is a valid vector
**/
long vector_size(vector *v)
{
    return v->size;
}

/**
* vector_push(v, e): pushes e to the back of v
*
* param[in]: v, a vector
* param[in]: e is valid element
* @pre: v is a valid vector
* @pre: 0 <= index < v.size()
* @post: pushes an element into v
**/
void vector_push(vector *v, void *e)
{
    if (!v)
    {
        v = vector_create();
    }

    if (v->size == 0) {
        v->size = 10;
        v->data = malloc(sizeof(void*) * v->size);
        memset(v->data, '\0', sizeof(void*) * v->size);
    }

    // condition to increase v->data:
    // last slot exhausted
    if (v->size == v->count) {
        v->size *= 2;
        v->data = realloc(v->data, sizeof(void*) * v->size);
    }

    v->data[v->count] = e;
    ++(v->count);
}

/**
* vector_set(v, index): sets element at index from vector v
*
* param[in]: v, a vector
* param[in]: index into v
* pre@: v is a valid vector
* pre@: 0 <= index < v.size()
* post@: sets the element at index i
**/
void vector_set(vector *v, long index, void *e)
{
    // safety check to access only within the vector size
    if (index >= v->count) {
        return;
    }

    v->data[index] = e;
}

/**
* vector_get(v, index): gets element at index from vector v
*
* param[in]: v, a vector
* param[in]: index into v
* pre@: v is a valid vector
* pre@: 0 <= index < v.size()
* post@: returns element at index
**/
void *vector_get(vector *v, long index)
{
    // safety check to access only within the vector size
    if (index >= v->count) {
        return NULL;
    }

    return v->data[index];
}

/**
* vector_delete(v, index): deletes element at index from vector v
*
* param[in]: v, a vector
* param[in]: index into v
* pre@: v is a valid vector
* pre@: 0 <= index < v.size()
* post@: returns vector with element at index i removed
**/
void vector_delete(vector *v, long index)
{
    // if index exceeds vector count, return
    if (index >= v->count) {
        return;
    }

    // else, we want to just delete the element and shift the
    // rest of the elements down
    long i;
    for (i = index; i < v->count - 1; ++i) {
        if (v->data[i + 1] != NULL) {
            v->data[i] = v->data[i + 1];
        }
    }

    // set last element as NULL and decrement count
    v->data[index] = NULL;
    v->count--;
}

/**
* vector_free(v): frees vector v
*
* param[in]: v, a vector
* pre@: v is a valid vector
* post@: frees relevant data in v
**/
void vector_free(vector *v)
{
    if (v && v->data)
    {
        free(v->data);
        free(v);
    }
}