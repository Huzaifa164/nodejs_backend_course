## libuv native library used by node

help nodejs to handle async operations accross diff os system

event loop
worker thread pool
timers
async i/0 operations

v8 does not provide
fs operations
network socket handling
timers
general event loop for node js apis

nodejs need something else
nodejs needs another layer to coordinate this runtime features

event loop ->
complete i/o operations
timers -> if some timers are in ready state
pending callbacks
socket activity

thread pool
libuv provides a shared worker thread pool

this pool is used by only those operations that cannot be handled efficiently

many file system operations
cryptographic operations
compression related work

timers ->
libuv helps nodejs track those timers and imp -> determine when the timer is become eligible to executive
timer -> 5 sec delay -> doesn't mean the JS sleeps on the main thread
runtime record the timer and continue processing other task
