#version 310 es

uint local_invocation_index_1 = 0u;
shared uint arg_0;
void atomicSub_0d26c2() {
  uint arg_1 = 0u;
  uint res = 0u;
  arg_1 = 1u;
  uint x_14 = atomicAdd(arg_0, arg_1);
  res = x_14;
  return;
}

void compute_main_inner(uint local_invocation_index) {
  atomicExchange(arg_0, 0u);
  barrier();
  atomicSub_0d26c2();
  return;
}

void compute_main_1() {
  compute_main_inner(local_invocation_index_1);
  return;
}

void compute_main(uint local_invocation_index_1_param) {
  {
    atomicExchange(arg_0, 0u);
  }
  barrier();
  local_invocation_index_1 = local_invocation_index_1_param;
  compute_main_1();
}

layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  compute_main(gl_LocalInvocationIndex);
  return;
}