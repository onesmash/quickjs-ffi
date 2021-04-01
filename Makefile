CC=$(CROSS_PREFIX)gcc 
ffi: quickjs-ffi.c test-lib.c
	$(CC) $(CFLAGS) quickjs-ffi.c -o quickjs-ffi.so -ldl -lffi -shared -fPIC
	$(CC) $(CFLAGS) test-lib.c -o test-lib.so -shared -fPIC
	qjs test.js

test1: test1.c
	$(CC) $(CFLAGS) test1.c -o test1 -lffi -ldl -fPIC
	./test1

fib: fib.c
	$(CC) $(CFLAGS) fib.c -o fib.so -shared -fPIC

null: null.c
	$(CC) $(CFLAGS) null.c -o null1
	$(CC) $(CFLAGS) null.c -o null2 -fPIC
