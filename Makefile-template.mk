CXX = g++
CXXFLAGS = -std=c++23 -Wall -Wextra -Werror -O2

TARGET = program_name
SRCS = main.cpp other_file.cpp
OBJS = $(SRCS:.cpp=.o)

$(TARGET): $(OBJS)
	$(CXX) $(OBJS) -o $(TARGET)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET)