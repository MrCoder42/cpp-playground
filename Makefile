CXX      := clang++
CXXFLAGS := -std=c++17 -Wall -Wextra
SRC_DIR  := src
BUILD_DIR := build

.PHONY: run clean

run:
	@# 1. Check if 'file' was provided
	@if [ -z "$(file)" ]; then \
		echo "Error: Please specify a file. Example: make run file=src/array/array_101.cpp"; \
		exit 1; \
	fi
	
	@# 2. Create the specific sub-directory in build/
	@# This strips 'src/' and creates the remaining path inside 'build/'
	@mkdir -p $(dir $(subst $(SRC_DIR),$(BUILD_DIR),$(file)))
	
	@# 3. Define the output executable path
	$(eval OUT := $(subst $(SRC_DIR),$(BUILD_DIR),$(basename $(file))))
	
	@# 4. Compile and Execute
	@echo "Compiling $(file)..."
	@$(CXX) $(CXXFLAGS) $(file) -o $(OUT)
	@echo "Running..."
	@./$(OUT)

clean:
	@rm -rf $(BUILD_DIR)
