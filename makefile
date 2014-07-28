
BUILD_DIR=build

OCAMLOPT_FLAGS = -g

all:
	rm -rf $(BUILD_DIR)
	mkdir -p $(BUILD_DIR)
	ocamlopt $(OCAMLOPT_FLAGS) -c app/app.ml
	mv app/app.{cmi,cmx,o} $(BUILD_DIR)
	ocamlopt $(OCAMLOPT_FLAGS) -o $(BUILD_DIR)/app $(BUILD_DIR)/app.cmx

test: all
	./$(BUILD_DIR)/app

