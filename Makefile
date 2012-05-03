CC= g++ -llapack -larmadillo

OBJECTS= Estimateur.o Simulateur.o Mobile.o Observateur.o main.o

TARGET= simulateur

$(TARGET) : $(OBJECTS)
	$(CC) $(OBJECTS) -o $(TARGET)

Estimateur.o : Simulateur.o Estimateur.cc Estimateur.h
	$(CC) -o Estimateur.o -c Estimateur.cc

Simulateur.o : Mobile.o Observateur.o Simulateur.cc Simulateur.h
	$(CC) -o Simulateur.o -c Simulateur.cc

Mobile.o : Mobile.cc Mobile.h
	$(CC) -o Mobile.o -c Mobile.cc

Observateur.o : Observateur.cc Observateur.h
	$(CC) -o Observateur.o -c Observateur.cc

main.o : Simulateur.o main.cc
	$(CC) -o main.o -c main.cc

clean :
	rm -f *~ *.o $(TARGET)
