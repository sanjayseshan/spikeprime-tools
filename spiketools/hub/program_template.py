import hub
from runtime import VirtualMachine

# print to console
def printsp(text):
  print("TXTSPTXT"+text+"TXTSPTXT")

# exit program
def endprogram():
  printsp("PROGEXITPROG")

# When program starts
async def on_start(vm, stack):
  for i in range(11):
    # Set LED color
    hub.led(i)
    # log values to console
    printsp(str(i))
    # Sleep 1 second
    yield 1000
  endprogram() # end program

def setup(rpc, system):
  vm = VirtualMachine(rpc, system, "")
  vm.register_on_start("", on_start)
  return vm

