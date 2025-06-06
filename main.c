#include <stdio.h>
#include <stdint.h>
#include <caml/callback.h>

static const value * fib_closure = NULL;

// global initializer - runs when the program starts
static void init_ocaml(void) __attribute__((constructor));
static void init_ocaml(void) {
    char *argv[] = {"main", NULL};
    // start the ocaml runtime
    caml_startup(argv);
    fib_closure = caml_named_value("fib");
}

int fib(int n) {
    printf("c invoked by swift\n");
    return Int_val(caml_callback(*fib_closure, Val_int(n)));
}