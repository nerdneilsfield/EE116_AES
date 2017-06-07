from myhdl import Signal, delay, always, now, Simulation

def helloworld():
    "Reurn the say hello"
    interval = delay(10)

    @always(interval)
    def sayHello():
        print("Hello, %s" % now())
    return sayHello

inst = helloworld()
sim = Simulation(inst)
sim.run(60)