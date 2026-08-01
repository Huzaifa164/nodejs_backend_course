normal node js -> one main js thread

cluster module ->
by starting multiple node js worker process

each and every worker process ->
its own node js runtime
its own v8 engine
its own event loop
its own main js thread
its own memory