@group(1) @binding(0) var arg_0 : texture_storage_1d<rg32float, write>;

fn textureStore_872747() {
  var arg_1 = 1;
  var arg_2 = vec4<f32>();
  textureStore(arg_0, arg_1, arg_2);
}

@stage(vertex)
fn vertex_main() -> @builtin(position) vec4<f32> {
  textureStore_872747();
  return vec4<f32>();
}

@stage(fragment)
fn fragment_main() {
  textureStore_872747();
}

@stage(compute) @workgroup_size(1)
fn compute_main() {
  textureStore_872747();
}