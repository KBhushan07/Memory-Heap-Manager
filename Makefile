final: testapp.o mm.o glthread.o  
	cc testapp.o mm.o glthread.o -o final

testapp.o: testapp.c uapi_mm.h
	cc -c testapp.c

mm.o: mm.c css.h mm.h 
	cc -c mm.c

glthread.o: glthread.c
	cc -c glthread.c
	
clean:
	rm *.o final
