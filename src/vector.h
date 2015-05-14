#pragma once

#include "utils.h"

#define MAX_VEC_SIZE = SIZE_MAX / 16;

typedef struct vector_ {
    void** data;
    size_t size;
    size_t count;
} vector;

vector* vector_create(void);
vector* vector_create_with_size(size_t s);
size_t vector_count(vector*);

void vector_push(vector*, void*);
void vector_set(vector*, size_t, void*);
void *vector_get(vector*, size_t);
void vector_delete(vector*, size_t);
void vector_free(vector*);


/*@
    predicate valid_vector{L} (vector * v) =
        \valid(v) && \valid(v->data+(0..v->size - 1)) && v->count <= v->size && v->size < MAX_VEC_SIZE;
*/

/*@
    predicate vector_contains{L}(vector * v, void * e) =
        \exists size_t i; valid_vector(v) &&  0 <= i < 0 && v->count && v->data[i] == e;
*/
