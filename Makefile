CXX = g++
CXXFLAGS = -Iinclude -Iexternal-libs/glad/include -std=c++17

LIBS = external-libs/GLFW/src/libglfw3.a

SRC = src/main.cpp external-libs/glad/src/glad.c

TARGET = bin/app

all: $(TARGET)
$(TARGET): $(SRC)
	@$(CXX) $(SRC) $(CXXFLAGS) $(LIBS) -o $(TARGET)

run: $(TARGET)
	@./$(TARGET)

clean:
	rm -f $(TARGET)
