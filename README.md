# ARM Assembly Negate Exercise

MSUD, CS 2400, Spring 2019

## Requirements

### Preliminaries
1. Download and install [VisUAL](https://salmanarif.bitbucket.io/visual/downloads.html).
2. Find out what UAL means in the context of ARM syntax.
3. Review the instructions supported by VisUAL.

### Quick negate
1. Load the [short negate program](https://github.com/ivogeorg/cs2400-arm-asm-negate-exercise/blob/master/negate.S) into VisUAL (Use **Open** from the menu).
2. Execute the program. View the memory. (Use **Tools** from the menu.)
3. Single-step the program and watch the registers, memory locations, and status flags change.

### Long negate
1. Load the [long negate program](https://github.com/ivogeorg/cs2400-arm-asm-negate-exercise/blob/master/negate_gcc_8_2.S) into VisUAL (Use **Open** from the menu).
2. Execute the program. View the memory. (Use **Tools** from the menu.)
3. Answer the following questions:
   1. **QUESTION 1:** What is the short program doing that the long program is not?
   
      The short program uses a loop to traverse the array, but the long program uses only registers to store, move and change the array.       This makes the short program much more efficient and readable. For each index in the array, it calls the negate fucntion on the           data in the index and stores everything back inot the memory without touching the heap or stack. This means that in the end the memory after the short program contains all positive value sof the array but the memory after the long program remains unchanged.
      
   2. **QUESTION 2:** Why do you think the compiler has generated such assembly code?
   
        Because it is the simplest and most logical way for a computer to do such a function, considering it would naturally work with           the registers for everything.
        
   3. **QUESTION 3:** How would you try to change the code so that the compiler would generate an assembly program that behaves more like the short one above?
   
      Generate an array, then for each value in the array offset the pointer by 4 in order to travers each index. For each index negate       the data inside. 
      
4. Single-step the program and watch the registers, memory locations, and status flags change.
5. Modify the long program to do what the short one is doing.

### Submission
1. Fork this repository.
2. Clone and develop.
3. Commit your changes and push to the remote.
4. Submit your fork's URL on the Google Classroom assignment **CS 2400 - Classwork - ARM assembly negate exercise**.
