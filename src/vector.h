#pragma once

#include "utils.h"

typedef struct vector_ {
    void** data;
    long size;
    long count;
} vector;

vector* vector_create(void);
vector* vector_create_with_size(long s);
long vector_count(vector*);

void vector_push(vector*, void*);
void vector_set(vector*, long, void*);
void *vector_get(vector*, long);
void vector_delete(vector*, long);
void vector_free(vector*);

