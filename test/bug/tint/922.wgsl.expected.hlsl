struct Mat4x4_ {
  float4 mx;
  float4 my;
  float4 mz;
  float4 mw;
};
struct Mat4x3_ {
  float4 mx;
  float4 my;
  float4 mz;
};
struct Mat4x2_ {
  float4 mx;
  float4 my;
};
struct VertexOutput {
  float4 v_Color;
  float2 v_TexCoord;
  float4 member;
};

cbuffer cbuffer_global : register(b0, space0) {
  uint4 global[4];
};
cbuffer cbuffer_global1 : register(b1, space0) {
  uint4 global1[3];
};
cbuffer cbuffer_global2 : register(b2, space0) {
  uint4 global2[96];
};
static float3 a_Position1 = float3(0.0f, 0.0f, 0.0f);
static float2 a_UV1 = float2(0.0f, 0.0f);
static float4 a_Color1 = float4(0.0f, 0.0f, 0.0f, 0.0f);
static float3 a_Normal1 = float3(0.0f, 0.0f, 0.0f);
static float a_PosMtxIdx1 = 0.0f;
static float4 v_Color = float4(0.0f, 0.0f, 0.0f, 0.0f);
static float2 v_TexCoord = float2(0.0f, 0.0f);
static float4 gl_Position = float4(0.0f, 0.0f, 0.0f, 0.0f);

float3 Mat4x3GetCol0_(Mat4x3_ m) {
  Mat4x3_ m1 = (Mat4x3_)0;
  m1 = m;
  return float3(m1.mx.x, m1.my.x, m1.mz.x);
}

float3 Mat4x3GetCol1_(Mat4x3_ m2) {
  Mat4x3_ m3 = (Mat4x3_)0;
  m3 = m2;
  return float3(m3.mx.y, m3.my.y, m3.mz.y);
}

float3 Mat4x3GetCol2_(Mat4x3_ m4) {
  Mat4x3_ m5 = (Mat4x3_)0;
  m5 = m4;
  return float3(m5.mx.z, m5.my.z, m5.mz.z);
}

float3 Mat4x3GetCol3_(Mat4x3_ m6) {
  Mat4x3_ m7 = (Mat4x3_)0;
  m7 = m6;
  return float3(m7.mx.w, m7.my.w, m7.mz.w);
}

float4 Mul(Mat4x4_ m8, float4 v) {
  Mat4x4_ m9 = (Mat4x4_)0;
  float4 v1 = float4(0.0f, 0.0f, 0.0f, 0.0f);
  m9 = m8;
  v1 = v;
  return float4(dot(m9.mx, v1), dot(m9.my, v1), dot(m9.mz, v1), dot(m9.mw, v1));
}

float3 Mul1(Mat4x3_ m10, float4 v2) {
  Mat4x3_ m11 = (Mat4x3_)0;
  float4 v3 = float4(0.0f, 0.0f, 0.0f, 0.0f);
  m11 = m10;
  v3 = v2;
  return float3(dot(m11.mx, v3), dot(m11.my, v3), dot(m11.mz, v3));
}

float2 Mul2(Mat4x2_ m12, float4 v4) {
  Mat4x2_ m13 = (Mat4x2_)0;
  float4 v5 = float4(0.0f, 0.0f, 0.0f, 0.0f);
  m13 = m12;
  v5 = v4;
  return float2(dot(m13.mx, v5), dot(m13.my, v5));
}

float4 Mul3(float3 v6, Mat4x3_ m14) {
  float3 v7 = float3(0.0f, 0.0f, 0.0f);
  Mat4x3_ m15 = (Mat4x3_)0;
  v7 = v6;
  m15 = m14;
  const float3 _e6 = Mat4x3GetCol0_(m15);
  const float3 _e7 = v7;
  const float3 _e11 = Mat4x3GetCol1_(m15);
  const float3 _e12 = v7;
  const float3 _e16 = Mat4x3GetCol2_(m15);
  const float3 _e17 = v7;
  const float3 _e21 = Mat4x3GetCol3_(m15);
  return float4(dot(_e6, _e7), dot(_e11, _e12), dot(_e16, _e17), dot(_e21, v7));
}

Mat4x4_ _Mat4x4_(float n) {
  float n1 = 0.0f;
  Mat4x4_ o = (Mat4x4_)0;
  n1 = n;
  o.mx = float4(n1, 0.0f, 0.0f, 0.0f);
  o.my = float4(0.0f, n1, 0.0f, 0.0f);
  o.mz = float4(0.0f, 0.0f, n1, 0.0f);
  o.mw = float4(0.0f, 0.0f, 0.0f, n1);
  return o;
}

Mat4x4_ _Mat4x4_1(Mat4x3_ m16) {
  Mat4x3_ m17 = (Mat4x3_)0;
  Mat4x4_ o1 = (Mat4x4_)0;
  m17 = m16;
  const Mat4x4_ _e4 = _Mat4x4_(1.0f);
  o1 = _e4;
  o1.mx = m17.mx;
  o1.my = m17.my;
  o1.mz = m17.mz;
  return o1;
}

Mat4x4_ _Mat4x4_2(Mat4x2_ m18) {
  Mat4x2_ m19 = (Mat4x2_)0;
  Mat4x4_ o2 = (Mat4x4_)0;
  m19 = m18;
  const Mat4x4_ _e4 = _Mat4x4_(1.0f);
  o2 = _e4;
  o2.mx = m19.mx;
  o2.my = m19.my;
  return o2;
}

Mat4x3_ _Mat4x3_(float n2) {
  float n3 = 0.0f;
  Mat4x3_ o3 = (Mat4x3_)0;
  n3 = n2;
  o3.mx = float4(n3, 0.0f, 0.0f, 0.0f);
  o3.my = float4(0.0f, n3, 0.0f, 0.0f);
  o3.mz = float4(0.0f, 0.0f, n3, 0.0f);
  return o3;
}

Mat4x3_ _Mat4x3_1(Mat4x4_ m20) {
  Mat4x4_ m21 = (Mat4x4_)0;
  Mat4x3_ o4 = (Mat4x3_)0;
  m21 = m20;
  o4.mx = m21.mx;
  o4.my = m21.my;
  o4.mz = m21.mz;
  return o4;
}

Mat4x3_ tint_symbol_5(uint4 buffer[96], uint offset) {
  const uint scalar_offset = ((offset + 0u)) / 4;
  const uint scalar_offset_1 = ((offset + 16u)) / 4;
  const uint scalar_offset_2 = ((offset + 32u)) / 4;
  const Mat4x3_ tint_symbol_10 = {asfloat(buffer[scalar_offset / 4]), asfloat(buffer[scalar_offset_1 / 4]), asfloat(buffer[scalar_offset_2 / 4])};
  return tint_symbol_10;
}

Mat4x4_ tint_symbol_7(uint4 buffer[4], uint offset) {
  const uint scalar_offset_3 = ((offset + 0u)) / 4;
  const uint scalar_offset_4 = ((offset + 16u)) / 4;
  const uint scalar_offset_5 = ((offset + 32u)) / 4;
  const uint scalar_offset_6 = ((offset + 48u)) / 4;
  const Mat4x4_ tint_symbol_11 = {asfloat(buffer[scalar_offset_3 / 4]), asfloat(buffer[scalar_offset_4 / 4]), asfloat(buffer[scalar_offset_5 / 4]), asfloat(buffer[scalar_offset_6 / 4])};
  return tint_symbol_11;
}

Mat4x2_ tint_symbol_9(uint4 buffer[3], uint offset) {
  const uint scalar_offset_7 = ((offset + 0u)) / 4;
  const uint scalar_offset_8 = ((offset + 16u)) / 4;
  const Mat4x2_ tint_symbol_12 = {asfloat(buffer[scalar_offset_7 / 4]), asfloat(buffer[scalar_offset_8 / 4])};
  return tint_symbol_12;
}

void main1() {
  Mat4x3_ t_PosMtx = (Mat4x3_)0;
  float2 t_TexSpaceCoord = float2(0.0f, 0.0f);
  const Mat4x3_ _e18 = tint_symbol_5(global2, (48u * uint(int(a_PosMtxIdx1))));
  t_PosMtx = _e18;
  const Mat4x4_ _e24 = _Mat4x4_1(t_PosMtx);
  const float3 _e25 = a_Position1;
  const Mat4x4_ _e30 = _Mat4x4_1(t_PosMtx);
  const float4 _e34 = Mul(_e30, float4(a_Position1, 1.0f));
  const Mat4x4_ _e35 = tint_symbol_7(global, 0u);
  const Mat4x4_ _e38 = _Mat4x4_1(t_PosMtx);
  const float3 _e39 = a_Position1;
  const Mat4x4_ _e44 = _Mat4x4_1(t_PosMtx);
  const float4 _e48 = Mul(_e44, float4(a_Position1, 1.0f));
  const float4 _e49 = Mul(_e35, _e48);
  gl_Position = _e49;
  v_Color = a_Color1;
  const float4 _e52 = asfloat(global1[2]);
  if ((_e52.x == 2.0f)) {
    {
      const float3 _e59 = a_Normal1;
      const Mat4x2_ _e64 = tint_symbol_9(global1, (32u * uint(0)));
      const float2 _e68 = Mul2(_e64, float4(a_Normal1, 1.0f));
      v_TexCoord = _e68.xy;
      return;
    }
  } else {
    {
      const float2 _e73 = a_UV1;
      const Mat4x2_ _e79 = tint_symbol_9(global1, (32u * uint(0)));
      const float2 _e84 = Mul2(_e79, float4(a_UV1, 1.0f, 1.0f));
      v_TexCoord = _e84.xy;
      return;
    }
  }
}

struct tint_symbol_1 {
  float3 a_Position : TEXCOORD0;
  float2 a_UV : TEXCOORD1;
  float4 a_Color : TEXCOORD2;
  float3 a_Normal : TEXCOORD3;
  float a_PosMtxIdx : TEXCOORD4;
};
struct tint_symbol_2 {
  float4 v_Color : TEXCOORD0;
  float2 v_TexCoord : TEXCOORD1;
  float4 member : SV_Position;
};

tint_symbol_2 main(tint_symbol_1 tint_symbol) {
  const float3 a_Position = tint_symbol.a_Position;
  const float2 a_UV = tint_symbol.a_UV;
  const float4 a_Color = tint_symbol.a_Color;
  const float3 a_Normal = tint_symbol.a_Normal;
  const float a_PosMtxIdx = tint_symbol.a_PosMtxIdx;
  a_Position1 = a_Position;
  a_UV1 = a_UV;
  a_Color1 = a_Color;
  a_Normal1 = a_Normal;
  a_PosMtxIdx1 = a_PosMtxIdx;
  main1();
  const VertexOutput tint_symbol_3 = {v_Color, v_TexCoord, gl_Position};
  const tint_symbol_2 tint_symbol_13 = {tint_symbol_3.v_Color, tint_symbol_3.v_TexCoord, tint_symbol_3.member};
  return tint_symbol_13;
}
