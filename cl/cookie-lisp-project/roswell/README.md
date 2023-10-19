
## How to use Roswell to build and share binaries

From the project root:

Run as a script:

    chmod +x roswell/cookie-lisp-project.ros
    ./roswell/cookie-lisp-project.ros

Build a binary:

    ros build roswell/cookie-lisp-project.ros

and run it:

    ./roswell/cookie-lisp-project

Or install it in ~/.roswell/bin:

    ros install roswell/cookie-lisp-project.ros

It creates the binary in ~/.roswell/bin/
Run it:

    ~/.roswell/bin/cookie-lisp-project [name]~&

Your users can install the script with ros install cuser/cookie-lisp-project

Use `+Q` if you don't have Quicklisp dependencies to save startup time.
Use `ros build --disable-compression` to save on startup time and loose on application size.


## See

- https://github.com/roswell/roswell/wiki/
- https://github.com/roswell/roswell/wiki/Reducing-Startup-Time
