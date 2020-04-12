import hub
from runtime import VirtualMachine

# When program starts
async def on_start(vm, stack):
  hub.port.B.motor.run_for_time(5000,5000)

def setup(rpc, system):
  vm = VirtualMachine(rpc, system, "")
  vm.register_on_start("", on_start)
  return vm
