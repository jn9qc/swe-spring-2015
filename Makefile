
#################################################
# Makefile format
# target: dependencies
# <tab>	 Command to generate target
#################################################

# -----------------------------------------------
# Super useful shortcuts:
#   $@ matches the target; 
#   $< matches the first dependent
#   $^ Matches all dependencies
# -----------------------------------------------

# -----------------------------------------------
# But first, some definitions.

# -----------------------------------------------
# Flag to replace gcc,  $(CC) = gcc
CC= gcc
# -----------------------------------------------
# CLEAN definition - git rid of compiled stuff
CLEAN= rm -rf *.o story 
# -----------------------------------------------
# TEST definition - write to file and cat file
TEST= (./story > the_story.txt) ; cat the_story.txt

# -----------------------------------------------
# The standard default target is 'all'
# This target has no command, only a dependency.
# We will execute test though, when it's built.
# -----------------------------------------------

all: story

test:
	@$(TEST)

# -----------------------------------------------
# When you type 'make clean', you get rid of
# all of the *.0 and the 'story' file.
# -----------------------------------------------

clean:
	$(CLEAN)


# -----------------------------------------------
# Now we bring in our dependencies.
# 'all' needs 'story.0'. What does story need?
# And how do we make it?
# -----------------------------------------------

story: story.o bpbkt7.o bmwr84.o dse2pd.o jpvc4.o amd2b7.o jn9qc.o
#pawprint.o - where is your .c derived object file - where is your file

# -----------------------------------------------

story.o: story.c 
	$(CC) -c $^

# -----------------------------------------------
bpbkt7.o: sentences/bpbkt7.c
	$(CC) -c $< 
bmwr84.o: sentences/bmwr84.c
	$(CC) -c $< 
dse2pd.o: sentences/dse2pd.c
	$(CC) -c $< 
jpvc4.o: sentences/jpvc4.c
	$(CC) -c $<
amd2b7.o: sentences/amd2b7.c
	$(CC) -c $<
jn9qc.o: sentences/jn9qc.c
	$(CC) -c $<
