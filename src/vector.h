#pragma once

#include "utils.h"

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
