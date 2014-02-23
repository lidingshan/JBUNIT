JBUNIT
======

### What is JBUNIT
A smaill utility to write unit test for jBASE codes. Right now it provides some basic functions to write a unit test for jBASE codes.

1. Write test codes 
2. Assertions
3. Execute all of the tests what are in a folder recursively

It isn't a complete test framework for jBASE yet. It dosen't support like

1. Setup and Teardown
2. Export test results to different format reports
3. More assertions

### How to use it
To use JBUNIT, what you need to do are

1. Download JBUNIT source codes to your development environment
2. Set up an environment variable JBUNIT_HONME to the value of the path where you store JBUNIT
3. Create a folder to contain your test codes
4. Create a test as a jBASE program and with the name with prefix of "TEST"
4. Execute test through command of 

> JBUNIT.MAIN /root/path/of/test

### How to write a test

1. Create a test root folder like: /my_jbase_test
2. Create a test as jBASE program like:

> PROGRAM TEST.ADD
>    EXPECTED = 3
>    ACTUAL = 1 + 2
>    CALL ASSERT.EQUAL(EXPECTED, ACTUAL, "Add calculation failed")
>    STOP

### Assertions

1. ASSERT.EQUAL(expected, actual, error_message)
1. ASSERT.NOT.EQUAL(exp1, exp2, error_message)
1. ASSERT.GREATER(exp1, exp2, error_message)
1. ASSERT.LESS(exp1, exp2, error_message)
1. ASSERT.TRUE(expression, error_message)
1. ASSERT.FALSE(expression, error_message)

### Build source code
The build script of JBUNIT in the folder of build is created based on JBaseBuilder. You may download this utility and configure it with your development environment setup and then build JBUNIT source code. Or you may compile code manually.
