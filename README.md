This repo will guide you through basic concepts of LISP Programming Language.  
References taken from <a href="https://www.tutorialspoint.com/lisp/"> Tutorials Point </a> and <a href="https://www.youtube.com/watch?v=INUHCQST7CU"> LISP in 100 seconds - Fireship </a>

# Download Clisp

### Step 1: Download the clisp-2.49-win32-mingw-big.zip from the following link
<a href="https://sourceforge.net/projects/clisp/files/clisp/2.49/"> https://sourceforge.net/projects/clisp/files/clisp/2.49/ </a>

### Step 2: Unzip the folder and copy the path of clisp.exe

### Step 3: Open VS Code and download the `Common Lisp` extension

### Step 4: Create a new file "demo.lisp" and copy the following code and save
```lisp
; Demo Code

(write-line "Hello World!")
```

### Step 5: Open the integrated terminal ( Ctrl + ` ) and start your Lisp interpreter by typing the path to clisp.exe For example:
```powershell
C:\LISP\clisp-2.49\clisp.exe
```

### Step 6: Once the interpreter is running, you can load and execute your Lisp file
```lisp
(load "demo.lisp")
```

Output:  `Hello World!`
