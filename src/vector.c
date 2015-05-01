#include "vector.h"

// Private

const size_t INIT_VEC_SIZE = 16;
const size_t MAX_VEC_SIZE = SIZE_MAX / 16;
void vector_init(vector*);
bool vector_init_with_size(vector*, size_t);
size_t vector_size(vector*);

/* * * * * * * * * *
* vector_create()
*
* @brief: creates a new vector
*
* @return a new vector
* * * * * * * * * */

/*@
    behavior null:
        assumes !is_allocable((unsigned long)sizeof(vector));
        ensures \result == \null;
    behavior success:
        assumes is_allocable((unsigned long)sizeof(vector));
        allocates \result;
        ensures \fresh(\result, sizeof(vector));
        ensures (\result->data == \null && \result->size == 0 && \result->count == 0);
    complete behaviors;
    disjoint behaviors;
*/
vector* vector_create(void) {
    vector* v = (vector *) calloc(1, sizeof(vector));;
    if(!v){
        return NULL;
    }
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

/*@
    behavior alloc:
        assumes is_allocable((unsigned long) (sizeof(vector) + s * sizeof(void *)));
        allocates \result;
        allocates \result->data;
        ensures \fresh(\result, sizeof(vector));
        ensures \fresh(\result->data, s * sizeof(void *));
        ensures (s > 0 ==> \result->data != NULL && \result->count == 0 && \result->size == s);

    behavior null:
        assumes !is_allocable((unsigned long) (sizeof(vector) + s * sizeof(void *)));
        ensures \result == \null;

    complete behaviors;
    disjoint behaviors;

*/
vector* vector_create_with_size(size_t s) {

    vector* v = calloc(1, sizeof(vector));
    if (!v)
    {
        return NULL;
    }

    if(!vector_init_with_size(v, s)){
        free(v);
        return NULL;
    }
    return v;

}

/**
* vector_init(v): returns a vector v
*
* param[in]: v, a vector
* pre@: v is a valid vector
**/

/*@
    requires \valid(v);
    assigns v->size, v->count, v->data;
    ensures  v->data == NULL;
    ensures  v->count == v->size == 0;
 */
void vector_init(vector *v){
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
/*@
    requires \valid(v);
    requires i <= MAX_VEC_SIZE;
    behavior alloc:
        assumes is_allocable((unsigned long) (i * sizeof(void *)));
        assigns v->data, v->size, v->count;
        ensures \fresh(v->data, i * sizeof(void *));
        ensures i > 0 ==> (v->data != \null && v->size == i && v->count == 0);
        ensures \result == true;
    behavior null:
        assumes !is_allocable((unsigned long) (i * sizeof(void *)));
        assigns \nothing;
        ensures \result == false;

    complete behaviors;
    disjoint behaviors;

*/
bool vector_init_with_size(vector *v, size_t i){
    void * ptr = calloc(i,sizeof(void*));  // array to track data
    if(ptr == NULL){
        return false;
    }
    v->data = ptr;
    v->size = i;     // size of the vector
    v->count = 0;    // number of elements in vector
    return true;
}

/**
* vector_count(v): returns size of v
*
* param[in]: v, a vector
* pre@: v is a valid vector
**/

/*@
    requires \valid(v);
    assigns \nothing;
    ensures \result == v->count;
*/
size_t vector_count(vector *v){
    if (v == NULL) {
        return 0;
    }
    return v->count;
}
/*@
    requires \valid(v);
    assigns \nothing;
    ensures \result == v->size;

*/
size_t vector_size(vector *v){
    if(v == NULL){
        return 0;
    }
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

/*@
    requires \valid(v);
    requires \valid(v->data+ (0 .. v->size - 1));
    requires v->size < MAX_VEC_SIZE;
    requires v->count <= v->size;
    assigns v->size, v->count;
    behavior zero_alloc:
        assumes v->size == 0 &&
            is_allocable((unsigned long)(INIT_VEC_SIZE * sizeof(void *)));
        assigns v->data, v->size, v->count;
        ensures v->size == INIT_VEC_SIZE;
        ensures v->count == 1;
        ensures \fresh(v->data, INIT_VEC_SIZE * sizeof(void *));
        ensures v->data[0] == e;
        ensures \forall int i; (1 <= i <= (v->size - 1) ==> v->data[i] == \null);

    behavior zero_fail:
        assumes v->size == 0 &&
            !is_allocable((unsigned long)(INIT_VEC_SIZE * sizeof(void *)));
        assigns \nothing;

    behavior simple:
        assumes v->size > 0;
        assumes v->count < v->size;
        assigns v->data[\old(v->count)];
        ensures \forall int i; 0 <= i < v->count - 1 ==> v->data[i] == \old(v->data[i]);
        ensures v->data[\old(v->count)] == e;
        ensures v->count == \old(v->count) + 1;

    behavior grow_success:
        assumes v->size > 0;
        assumes v->count == v->size;
        assumes is_allocable((unsigned long) (v->size * 2 * sizeof(void *)));
        assigns v->data;
        ensures v->size == 2 * \old(v->size);
        ensures \fresh(v->data, v->size * sizeof(void *));
        ensures \forall int i; 0 <= i < v->count - 1 ==> v->data[i] == \old(v->data[i]);
        ensures v->data[\old(v->count)] == e;
        ensures v->count == \old(v->count) * 2;

    behavior grow_fail:
        assumes v->size > 0;
        assumes v->count == v->size;
        assumes !is_allocable((unsigned long) (v->size * 2 * sizeof(void *)));
        assigns \nothing;

    complete behaviors;
    disjoint behaviors;


*/
void vector_push(vector *v, void *e){
    if (v == NULL){
        return;
    }

    if (v->size == 0) {
        void ** ptr = (void **) calloc(INIT_VEC_SIZE, sizeof(void *));
        if(ptr == NULL){
            return;
        }
        v->data = ptr;
        v->size = INIT_VEC_SIZE;
    }

    // condition to increase v->data:
    // last slot exhausted
    if (v->size == v->count) {
        void ** ptr = realloc(v->data, sizeof(void *) * v->size * 2);
        if(ptr == NULL){
            return;
        }
        v->size *= 2;
        v->data = ptr;
    }

    v->data[v->count] = e;
    v->count++;
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

/*@
    requires \valid(v);
    requires index < v->count <= v->size;
    requires \valid(v->data+(0..v->size));
    requires \separated(v, v->data + (0 .. v->size - 1));
    assigns v->data[index];
    ensures v->data[index] == e;

*/
void vector_set(vector * v, size_t index, void * e){
    // safety check to access only within the vector size
    if (v == NULL || index >= v->count) {
        return;
    }

    v->data[index] = (int *)e;
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

/*@
    requires \valid(v);
    requires \valid(v->data + (0 .. v->size - 1));
    requires index < v->count <= v->size;
    assigns \nothing;
    ensures v->data[index] == \result;
*/
void * vector_get(vector *v, size_t index){
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

/*@
    requires \valid(v);
    requires v->size <= MAX_VEC_SIZE;
    requires v->size >= v->count;
    requires index < v->count;
    requires \valid(v->data + (0 .. v->size - 1));
    assigns v->data[index  .. v->count - 1];
    assigns v->count;
    ensures \forall size_t i; index <= i < v->count ==> v->data[i] == \old(v->data[i + 1]);
    ensures v->count == \old(v->count) - 1;
    ensures v->data[v->count] == \null;

*/
void vector_delete(vector * v, size_t index){
    // if index exceeds vector count, return
    if (index >= v->count) {
        return;
    }

    // else, we want to just delete the element and shift the
    // rest of the elements down
    for (size_t i = index; i < v->count - 1; ++i) {
        v->data[i] = v->data[i + 1];
    }

    // set last element as NULL and decrement count
    v->data[v->count - 1] = NULL;
    v->count--;
}

/**
* vector_free(v): frees vector v
*
* param[in]: v, a vector
* pre@: v is a valid vector
* post@: frees relevant data in v
**/
/*@
    requires \valid(v);
    requires \valid(v->data);
    frees v->data;
    frees v;
*/
void vector_free(vector * v){
    if (v)
    {
        if (v->data)
        {
            free(v->data);
        }
        free(v);
    }
}
