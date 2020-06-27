<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>
<tagfile>
  <compound kind="file">
    <name>almost.h</name>
    <path>/code/GraphicsMath/src/gm/base/</path>
    <filename>almost_8h</filename>
    <includes id="gm_8h" name="gm.h" local="no" imported="no">gm/gm.h</includes>
    <member kind="function">
      <type>GM_NS_OPEN bool</type>
      <name>AlmostEqual</name>
      <anchorfile>almost_8h.html</anchorfile>
      <anchor>ab92154a7d8eb62f3c58898fd38ccf78d</anchor>
      <arglist>(const ValueT &amp;i_valueA, const ValueT &amp;i_valueB, const ValueT &amp;i_threshold=0.0001)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>assert.h</name>
    <path>/code/GraphicsMath/src/gm/base/</path>
    <filename>assert_8h</filename>
    <includes id="gm_8h" name="gm.h" local="no" imported="no">gm/gm.h</includes>
    <member kind="define">
      <type>#define</type>
      <name>GM_ASSERT</name>
      <anchorfile>assert_8h.html</anchorfile>
      <anchor>aa57e12e37c87ab4e56f7757c5887d164</anchor>
      <arglist>(expr,...)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>GM_ASSERT_MSG</name>
      <anchorfile>assert_8h.html</anchorfile>
      <anchor>ae9bba774224ed5f43ebcd8390628b3a3</anchor>
      <arglist>(expr, format,...)</arglist>
    </member>
    <member kind="function">
      <type>GM_NS_OPEN GM_HOST_DEVICE void</type>
      <name>_Assert</name>
      <anchorfile>assert_8h.html</anchorfile>
      <anchor>a96aca25f799bea8622b89699d3800a5d</anchor>
      <arglist>(const char *i_expression, const char *i_file, size_t i_line)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>constants.h</name>
    <path>/code/GraphicsMath/src/gm/base/</path>
    <filename>constants_8h</filename>
    <includes id="gm_8h" name="gm.h" local="no" imported="no">gm/gm.h</includes>
  </compound>
  <compound kind="file">
    <name>hostdevice.h</name>
    <path>/code/GraphicsMath/src/gm/base/</path>
    <filename>hostdevice_8h</filename>
    <member kind="define">
      <type>#define</type>
      <name>GM_HOST_DEVICE</name>
      <anchorfile>hostdevice_8h.html</anchorfile>
      <anchor>a7fca25929bf76aa6b8ef67bc293dfb10</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>log.h</name>
    <path>/code/GraphicsMath/src/gm/base/</path>
    <filename>log_8h</filename>
    <member kind="define">
      <type>#define</type>
      <name>GM_LOG_INFO</name>
      <anchorfile>log_8h.html</anchorfile>
      <anchor>a288b30d7dbadbbaaad698eecbe22fc1f</anchor>
      <arglist>(msgFormat,...)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>GM_LOG_WARN</name>
      <anchorfile>log_8h.html</anchorfile>
      <anchor>a90d23b21ebec31a3868a0fdfbe8a7f7a</anchor>
      <arglist>(msgFormat,...)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>GM_LOG_ERROR</name>
      <anchorfile>log_8h.html</anchorfile>
      <anchor>a14ca88ef9e60082e445944d55fa24a44</anchor>
      <arglist>(msgFormat,...)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>os.h</name>
    <path>/code/GraphicsMath/src/gm/base/</path>
    <filename>os_8h</filename>
  </compound>
  <compound kind="file">
    <name>abs.h</name>
    <path>/code/GraphicsMath/src/gm/functions/</path>
    <filename>abs_8h</filename>
    <includes id="gm_8h" name="gm.h" local="no" imported="no">gm/gm.h</includes>
    <includes id="mat3f_8h" name="mat3f.h" local="no" imported="no">gm/types/mat3f.h</includes>
    <includes id="mat4f_8h" name="mat4f.h" local="no" imported="no">gm/types/mat4f.h</includes>
    <includes id="vec2f_8h" name="vec2f.h" local="no" imported="no">gm/types/vec2f.h</includes>
    <includes id="vec3f_8h" name="vec3f.h" local="no" imported="no">gm/types/vec3f.h</includes>
    <includes id="vec4f_8h" name="vec4f.h" local="no" imported="no">gm/types/vec4f.h</includes>
    <member kind="function">
      <type>GM_NS_OPEN GM_HOST_DEVICE float</type>
      <name>Abs</name>
      <anchorfile>abs_8h.html</anchorfile>
      <anchor>ad827ec71c006f0cbde5948befec32fc0</anchor>
      <arglist>(const float &amp;i_value)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec2f</type>
      <name>Abs</name>
      <anchorfile>abs_8h.html</anchorfile>
      <anchor>afa1ca395966d21ae5f70faea6aec943a</anchor>
      <arglist>(const Vec2f &amp;i_value)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec3f</type>
      <name>Abs</name>
      <anchorfile>abs_8h.html</anchorfile>
      <anchor>a078d3e3cd3da902cb2249f2566936313</anchor>
      <arglist>(const Vec3f &amp;i_value)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec4f</type>
      <name>Abs</name>
      <anchorfile>abs_8h.html</anchorfile>
      <anchor>a015c8bc1ec4a2671f970c71a970f3f38</anchor>
      <arglist>(const Vec4f &amp;i_value)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Mat3f</type>
      <name>Abs</name>
      <anchorfile>abs_8h.html</anchorfile>
      <anchor>a289ef924b28d093a7bfe52d47391dff1</anchor>
      <arglist>(const Mat3f &amp;i_value)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Mat4f</type>
      <name>Abs</name>
      <anchorfile>abs_8h.html</anchorfile>
      <anchor>ae719e12185554586385d0da374324c71</anchor>
      <arglist>(const Mat4f &amp;i_value)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>ceil.h</name>
    <path>/code/GraphicsMath/src/gm/functions/</path>
    <filename>ceil_8h</filename>
    <includes id="gm_8h" name="gm.h" local="no" imported="no">gm/gm.h</includes>
    <includes id="mat3f_8h" name="mat3f.h" local="no" imported="no">gm/types/mat3f.h</includes>
    <includes id="mat4f_8h" name="mat4f.h" local="no" imported="no">gm/types/mat4f.h</includes>
    <includes id="vec2f_8h" name="vec2f.h" local="no" imported="no">gm/types/vec2f.h</includes>
    <includes id="vec3f_8h" name="vec3f.h" local="no" imported="no">gm/types/vec3f.h</includes>
    <includes id="vec4f_8h" name="vec4f.h" local="no" imported="no">gm/types/vec4f.h</includes>
    <member kind="function">
      <type>GM_NS_OPEN GM_HOST_DEVICE float</type>
      <name>Ceil</name>
      <anchorfile>ceil_8h.html</anchorfile>
      <anchor>ad8fbe5e4b3940cac4c85de58284cf08c</anchor>
      <arglist>(const float &amp;i_value)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec2f</type>
      <name>Ceil</name>
      <anchorfile>ceil_8h.html</anchorfile>
      <anchor>a269a2604345a5241ab732e23e18b9d3e</anchor>
      <arglist>(const Vec2f &amp;i_value)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec3f</type>
      <name>Ceil</name>
      <anchorfile>ceil_8h.html</anchorfile>
      <anchor>ae5623eaf35e1e499a0e672484449bbdb</anchor>
      <arglist>(const Vec3f &amp;i_value)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec4f</type>
      <name>Ceil</name>
      <anchorfile>ceil_8h.html</anchorfile>
      <anchor>aec4169eaca08f6dd95714aeaf5a88b94</anchor>
      <arglist>(const Vec4f &amp;i_value)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Mat3f</type>
      <name>Ceil</name>
      <anchorfile>ceil_8h.html</anchorfile>
      <anchor>a585e1dd448234e5be6b3dd5e3a5de4b8</anchor>
      <arglist>(const Mat3f &amp;i_value)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Mat4f</type>
      <name>Ceil</name>
      <anchorfile>ceil_8h.html</anchorfile>
      <anchor>a60dc12236f92d64f2009c8cf37352624</anchor>
      <arglist>(const Mat4f &amp;i_value)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>degrees.h</name>
    <path>/code/GraphicsMath/src/gm/functions/</path>
    <filename>degrees_8h</filename>
    <includes id="gm_8h" name="gm.h" local="no" imported="no">gm/gm.h</includes>
    <includes id="constants_8h" name="constants.h" local="no" imported="no">gm/base/constants.h</includes>
    <member kind="function">
      <type>GM_NS_OPEN GM_HOST_DEVICE float</type>
      <name>Degrees</name>
      <anchorfile>degrees_8h.html</anchorfile>
      <anchor>ae87524da220700b948d8eb94a80f8f7b</anchor>
      <arglist>(const float &amp;i_angle)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>distance.h</name>
    <path>/code/GraphicsMath/src/gm/functions/</path>
    <filename>distance_8h</filename>
    <includes id="gm_8h" name="gm.h" local="no" imported="no">gm/gm.h</includes>
    <includes id="vec2f_8h" name="vec2f.h" local="no" imported="no">gm/types/vec2f.h</includes>
    <includes id="vec3f_8h" name="vec3f.h" local="no" imported="no">gm/types/vec3f.h</includes>
    <includes id="length_8h" name="length.h" local="no" imported="no">gm/functions/length.h</includes>
    <member kind="function">
      <type>GM_NS_OPEN GM_HOST_DEVICE float</type>
      <name>Distance</name>
      <anchorfile>distance_8h.html</anchorfile>
      <anchor>aee62d995896999c4a6cd97015a30579d</anchor>
      <arglist>(const Vec2f &amp;i_pointA, const Vec2f &amp;i_pointB)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE float</type>
      <name>Distance</name>
      <anchorfile>distance_8h.html</anchorfile>
      <anchor>ae995ad3d66c992b9ef5a7f779d831642</anchor>
      <arglist>(const Vec3f &amp;i_pointA, const Vec3f &amp;i_pointB)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>dotProduct.h</name>
    <path>/code/GraphicsMath/src/gm/functions/</path>
    <filename>dotProduct_8h</filename>
    <includes id="gm_8h" name="gm.h" local="no" imported="no">gm/gm.h</includes>
    <includes id="vec2f_8h" name="vec2f.h" local="no" imported="no">gm/types/vec2f.h</includes>
    <includes id="vec3f_8h" name="vec3f.h" local="no" imported="no">gm/types/vec3f.h</includes>
    <includes id="vec4f_8h" name="vec4f.h" local="no" imported="no">gm/types/vec4f.h</includes>
    <member kind="function">
      <type>GM_NS_OPEN GM_HOST_DEVICE float</type>
      <name>DotProduct</name>
      <anchorfile>dotProduct_8h.html</anchorfile>
      <anchor>a9077d7e36a0a6c80e6fea49ecf1b2e15</anchor>
      <arglist>(const Vec2f &amp;i_lhs, const Vec2f &amp;i_rhs)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE float</type>
      <name>DotProduct</name>
      <anchorfile>dotProduct_8h.html</anchorfile>
      <anchor>a1743d134c1ba7dbdf321e1f1bfe9c72c</anchor>
      <arglist>(const Vec3f &amp;i_lhs, const Vec3f &amp;i_rhs)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE float</type>
      <name>DotProduct</name>
      <anchorfile>dotProduct_8h.html</anchorfile>
      <anchor>a0996a12b60dccd8106518fd459d13cca</anchor>
      <arglist>(const Vec4f &amp;i_lhs, const Vec4f &amp;i_rhs)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>floor.h</name>
    <path>/code/GraphicsMath/src/gm/functions/</path>
    <filename>floor_8h</filename>
    <includes id="gm_8h" name="gm.h" local="no" imported="no">gm/gm.h</includes>
    <includes id="mat3f_8h" name="mat3f.h" local="no" imported="no">gm/types/mat3f.h</includes>
    <includes id="mat4f_8h" name="mat4f.h" local="no" imported="no">gm/types/mat4f.h</includes>
    <includes id="vec2f_8h" name="vec2f.h" local="no" imported="no">gm/types/vec2f.h</includes>
    <includes id="vec3f_8h" name="vec3f.h" local="no" imported="no">gm/types/vec3f.h</includes>
    <includes id="vec4f_8h" name="vec4f.h" local="no" imported="no">gm/types/vec4f.h</includes>
    <member kind="function">
      <type>GM_NS_OPEN GM_HOST_DEVICE float</type>
      <name>Floor</name>
      <anchorfile>floor_8h.html</anchorfile>
      <anchor>a5e31af7b97fb351a3cadf94d2538cecb</anchor>
      <arglist>(const float &amp;i_value)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec2f</type>
      <name>Floor</name>
      <anchorfile>floor_8h.html</anchorfile>
      <anchor>a99b6c7c86afe270bcdd49536026d8b2e</anchor>
      <arglist>(const Vec2f &amp;i_value)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec3f</type>
      <name>Floor</name>
      <anchorfile>floor_8h.html</anchorfile>
      <anchor>af748f3cc6857f9ac830e444bca3a529c</anchor>
      <arglist>(const Vec3f &amp;i_value)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec4f</type>
      <name>Floor</name>
      <anchorfile>floor_8h.html</anchorfile>
      <anchor>a239b9168c5945bf5df987e503e8ff562</anchor>
      <arglist>(const Vec4f &amp;i_value)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Mat3f</type>
      <name>Floor</name>
      <anchorfile>floor_8h.html</anchorfile>
      <anchor>ac13c5744299061b948e10d00fe40bbe3</anchor>
      <arglist>(const Mat3f &amp;i_value)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Mat4f</type>
      <name>Floor</name>
      <anchorfile>floor_8h.html</anchorfile>
      <anchor>af73e888e47c977c95460b0c058b0c34a</anchor>
      <arglist>(const Mat4f &amp;i_value)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>isIdentity.h</name>
    <path>/code/GraphicsMath/src/gm/functions/</path>
    <filename>isIdentity_8h</filename>
    <includes id="gm_8h" name="gm.h" local="no" imported="no">gm/gm.h</includes>
    <includes id="mat3f_8h" name="mat3f.h" local="no" imported="no">gm/types/mat3f.h</includes>
    <includes id="mat4f_8h" name="mat4f.h" local="no" imported="no">gm/types/mat4f.h</includes>
    <member kind="function">
      <type>GM_NS_OPEN GM_HOST_DEVICE bool</type>
      <name>IsIdentity</name>
      <anchorfile>isIdentity_8h.html</anchorfile>
      <anchor>a69dd4d7fc109962bc368b59e2c6c3463</anchor>
      <arglist>(const Mat3f &amp;i_matrix)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE bool</type>
      <name>IsIdentity</name>
      <anchorfile>isIdentity_8h.html</anchorfile>
      <anchor>ae9bf065d1c3574f7f13f787581fbb327</anchor>
      <arglist>(const Mat4f &amp;i_matrix)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>length.h</name>
    <path>/code/GraphicsMath/src/gm/functions/</path>
    <filename>length_8h</filename>
    <includes id="gm_8h" name="gm.h" local="no" imported="no">gm/gm.h</includes>
    <includes id="vec2f_8h" name="vec2f.h" local="no" imported="no">gm/types/vec2f.h</includes>
    <includes id="vec3f_8h" name="vec3f.h" local="no" imported="no">gm/types/vec3f.h</includes>
    <includes id="vec4f_8h" name="vec4f.h" local="no" imported="no">gm/types/vec4f.h</includes>
    <includes id="lengthSquared_8h" name="lengthSquared.h" local="no" imported="no">gm/functions/lengthSquared.h</includes>
    <member kind="function">
      <type>GM_NS_OPEN GM_HOST_DEVICE float</type>
      <name>Length</name>
      <anchorfile>length_8h.html</anchorfile>
      <anchor>ae825111f1aec288c58b7f591e5f28550</anchor>
      <arglist>(const Vec2f &amp;i_vector)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE float</type>
      <name>Length</name>
      <anchorfile>length_8h.html</anchorfile>
      <anchor>af4665ed9ce458687b4f37b51c4078e7b</anchor>
      <arglist>(const Vec3f &amp;i_vector)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE float</type>
      <name>Length</name>
      <anchorfile>length_8h.html</anchorfile>
      <anchor>ae514c75c328a3b108c318edbe88b8a05</anchor>
      <arglist>(const Vec4f &amp;i_vector)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>lengthSquared.h</name>
    <path>/code/GraphicsMath/src/gm/functions/</path>
    <filename>lengthSquared_8h</filename>
    <includes id="gm_8h" name="gm.h" local="no" imported="no">gm/gm.h</includes>
    <includes id="vec2f_8h" name="vec2f.h" local="no" imported="no">gm/types/vec2f.h</includes>
    <includes id="vec3f_8h" name="vec3f.h" local="no" imported="no">gm/types/vec3f.h</includes>
    <includes id="vec4f_8h" name="vec4f.h" local="no" imported="no">gm/types/vec4f.h</includes>
    <includes id="dotProduct_8h" name="dotProduct.h" local="no" imported="no">gm/functions/dotProduct.h</includes>
    <member kind="function">
      <type>GM_NS_OPEN GM_HOST_DEVICE float</type>
      <name>LengthSquared</name>
      <anchorfile>lengthSquared_8h.html</anchorfile>
      <anchor>a3ac710c8671238bedf0874b8872ec9c8</anchor>
      <arglist>(const Vec2f &amp;i_vector)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE float</type>
      <name>LengthSquared</name>
      <anchorfile>lengthSquared_8h.html</anchorfile>
      <anchor>ad6acf90cacc7350af1049a0d7986ad0e</anchor>
      <arglist>(const Vec3f &amp;i_vector)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE float</type>
      <name>LengthSquared</name>
      <anchorfile>lengthSquared_8h.html</anchorfile>
      <anchor>a6f89cbf4ef1dbea9c41f55d603adb910</anchor>
      <arglist>(const Vec4f &amp;i_vector)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>lerp.h</name>
    <path>/code/GraphicsMath/src/gm/functions/</path>
    <filename>lerp_8h</filename>
    <includes id="gm_8h" name="gm.h" local="no" imported="no">gm/gm.h</includes>
    <includes id="mat3f_8h" name="mat3f.h" local="no" imported="no">gm/types/mat3f.h</includes>
    <includes id="mat4f_8h" name="mat4f.h" local="no" imported="no">gm/types/mat4f.h</includes>
    <includes id="vec2f_8h" name="vec2f.h" local="no" imported="no">gm/types/vec2f.h</includes>
    <includes id="vec3f_8h" name="vec3f.h" local="no" imported="no">gm/types/vec3f.h</includes>
    <includes id="vec4f_8h" name="vec4f.h" local="no" imported="no">gm/types/vec4f.h</includes>
    <member kind="function">
      <type>GM_NS_OPEN GM_HOST_DEVICE float</type>
      <name>Lerp</name>
      <anchorfile>lerp_8h.html</anchorfile>
      <anchor>a109e2b908fc80e7c87ccea5eece5a19b</anchor>
      <arglist>(const float &amp;i_valueA, const float &amp;i_valueB, const float &amp;i_weight)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Mat3f</type>
      <name>Lerp</name>
      <anchorfile>lerp_8h.html</anchorfile>
      <anchor>a91d58c90c5a29592b90a40c805fc8fdb</anchor>
      <arglist>(const Mat3f &amp;i_valueA, const Mat3f &amp;i_valueB, const float &amp;i_weight)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Mat4f</type>
      <name>Lerp</name>
      <anchorfile>lerp_8h.html</anchorfile>
      <anchor>ab1622adb87c6eddaed6d4b577c074b3c</anchor>
      <arglist>(const Mat4f &amp;i_valueA, const Mat4f &amp;i_valueB, const float &amp;i_weight)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec2f</type>
      <name>Lerp</name>
      <anchorfile>lerp_8h.html</anchorfile>
      <anchor>aa7e586855606a663c926dab552b7b068</anchor>
      <arglist>(const Vec2f &amp;i_valueA, const Vec2f &amp;i_valueB, const float &amp;i_weight)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec3f</type>
      <name>Lerp</name>
      <anchorfile>lerp_8h.html</anchorfile>
      <anchor>add5f24643b0929fb46bb6d58e549c734</anchor>
      <arglist>(const Vec3f &amp;i_valueA, const Vec3f &amp;i_valueB, const float &amp;i_weight)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec4f</type>
      <name>Lerp</name>
      <anchorfile>lerp_8h.html</anchorfile>
      <anchor>a2015fee88f877e1d7e811f48488c0fd0</anchor>
      <arglist>(const Vec4f &amp;i_valueA, const Vec4f &amp;i_valueB, const float &amp;i_weight)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>matrixProduct.h</name>
    <path>/code/GraphicsMath/src/gm/functions/</path>
    <filename>matrixProduct_8h</filename>
    <includes id="gm_8h" name="gm.h" local="no" imported="no">gm/gm.h</includes>
    <includes id="mat3f_8h" name="mat3f.h" local="no" imported="no">gm/types/mat3f.h</includes>
    <includes id="mat4f_8h" name="mat4f.h" local="no" imported="no">gm/types/mat4f.h</includes>
    <member kind="function">
      <type>GM_NS_OPEN GM_HOST_DEVICE Mat3f</type>
      <name>MatrixProduct</name>
      <anchorfile>matrixProduct_8h.html</anchorfile>
      <anchor>aaac175d07d5d746b0026abf1e0ee7ff5</anchor>
      <arglist>(const Mat3f &amp;i_lhs, const Mat3f &amp;i_rhs)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Mat4f</type>
      <name>MatrixProduct</name>
      <anchorfile>matrixProduct_8h.html</anchorfile>
      <anchor>a0f6997f60fdf86b7c30b63ebea631dca</anchor>
      <arglist>(const Mat4f &amp;i_lhs, const Mat4f &amp;i_rhs)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>max.h</name>
    <path>/code/GraphicsMath/src/gm/functions/</path>
    <filename>max_8h</filename>
    <includes id="gm_8h" name="gm.h" local="no" imported="no">gm/gm.h</includes>
    <includes id="mat3f_8h" name="mat3f.h" local="no" imported="no">gm/types/mat3f.h</includes>
    <includes id="mat4f_8h" name="mat4f.h" local="no" imported="no">gm/types/mat4f.h</includes>
    <includes id="vec2f_8h" name="vec2f.h" local="no" imported="no">gm/types/vec2f.h</includes>
    <includes id="vec2i_8h" name="vec2i.h" local="no" imported="no">gm/types/vec2i.h</includes>
    <includes id="vec3f_8h" name="vec3f.h" local="no" imported="no">gm/types/vec3f.h</includes>
    <includes id="vec3i_8h" name="vec3i.h" local="no" imported="no">gm/types/vec3i.h</includes>
    <includes id="vec4f_8h" name="vec4f.h" local="no" imported="no">gm/types/vec4f.h</includes>
    <includes id="vec4i_8h" name="vec4i.h" local="no" imported="no">gm/types/vec4i.h</includes>
    <member kind="function">
      <type>GM_NS_OPEN GM_HOST_DEVICE float</type>
      <name>Max</name>
      <anchorfile>max_8h.html</anchorfile>
      <anchor>a2a364cda3438d365813a492dc32b0e05</anchor>
      <arglist>(const float &amp;i_valueA, const float &amp;i_valueB)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE int</type>
      <name>Max</name>
      <anchorfile>max_8h.html</anchorfile>
      <anchor>a3f9adcfcb5b71febd57d128a2f9fc403</anchor>
      <arglist>(const int &amp;i_valueA, const int &amp;i_valueB)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE bool</type>
      <name>Max</name>
      <anchorfile>max_8h.html</anchorfile>
      <anchor>ac0146a82cbe684277970b66b4d93eb95</anchor>
      <arglist>(const bool &amp;i_valueA, const bool &amp;i_valueB)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Mat3f</type>
      <name>Max</name>
      <anchorfile>max_8h.html</anchorfile>
      <anchor>a0436a40f59c6554a15ce898dc5cf84e5</anchor>
      <arglist>(const Mat3f &amp;i_valueA, const Mat3f &amp;i_valueB)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Mat4f</type>
      <name>Max</name>
      <anchorfile>max_8h.html</anchorfile>
      <anchor>a37f840849efe9615964bc32429ca20cd</anchor>
      <arglist>(const Mat4f &amp;i_valueA, const Mat4f &amp;i_valueB)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec2f</type>
      <name>Max</name>
      <anchorfile>max_8h.html</anchorfile>
      <anchor>afcaaf999739ae884ea3cf09db485950a</anchor>
      <arglist>(const Vec2f &amp;i_valueA, const Vec2f &amp;i_valueB)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec3f</type>
      <name>Max</name>
      <anchorfile>max_8h.html</anchorfile>
      <anchor>aa2c31474f80998fe6ef45b5dba2acad3</anchor>
      <arglist>(const Vec3f &amp;i_valueA, const Vec3f &amp;i_valueB)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec4f</type>
      <name>Max</name>
      <anchorfile>max_8h.html</anchorfile>
      <anchor>a75fc404f3bda53ff0979360dbd11f913</anchor>
      <arglist>(const Vec4f &amp;i_valueA, const Vec4f &amp;i_valueB)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec2i</type>
      <name>Max</name>
      <anchorfile>max_8h.html</anchorfile>
      <anchor>abf288758eb7f67c2c01f981a63002b3c</anchor>
      <arglist>(const Vec2i &amp;i_valueA, const Vec2i &amp;i_valueB)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec3i</type>
      <name>Max</name>
      <anchorfile>max_8h.html</anchorfile>
      <anchor>a34579418919333438588a6dc3cb6af84</anchor>
      <arglist>(const Vec3i &amp;i_valueA, const Vec3i &amp;i_valueB)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec4i</type>
      <name>Max</name>
      <anchorfile>max_8h.html</anchorfile>
      <anchor>acdf209f13f239dc9cb70c1b0daccf0ec</anchor>
      <arglist>(const Vec4i &amp;i_valueA, const Vec4i &amp;i_valueB)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>min.h</name>
    <path>/code/GraphicsMath/src/gm/functions/</path>
    <filename>min_8h</filename>
    <includes id="gm_8h" name="gm.h" local="no" imported="no">gm/gm.h</includes>
    <includes id="mat3f_8h" name="mat3f.h" local="no" imported="no">gm/types/mat3f.h</includes>
    <includes id="mat4f_8h" name="mat4f.h" local="no" imported="no">gm/types/mat4f.h</includes>
    <includes id="vec2f_8h" name="vec2f.h" local="no" imported="no">gm/types/vec2f.h</includes>
    <includes id="vec2i_8h" name="vec2i.h" local="no" imported="no">gm/types/vec2i.h</includes>
    <includes id="vec3f_8h" name="vec3f.h" local="no" imported="no">gm/types/vec3f.h</includes>
    <includes id="vec3i_8h" name="vec3i.h" local="no" imported="no">gm/types/vec3i.h</includes>
    <includes id="vec4f_8h" name="vec4f.h" local="no" imported="no">gm/types/vec4f.h</includes>
    <includes id="vec4i_8h" name="vec4i.h" local="no" imported="no">gm/types/vec4i.h</includes>
    <member kind="function">
      <type>GM_NS_OPEN GM_HOST_DEVICE float</type>
      <name>Min</name>
      <anchorfile>min_8h.html</anchorfile>
      <anchor>aa90692ab90b72fa1054397fe67d72067</anchor>
      <arglist>(const float &amp;i_valueA, const float &amp;i_valueB)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE int</type>
      <name>Min</name>
      <anchorfile>min_8h.html</anchorfile>
      <anchor>a4bc37868a32070cf03f0200f8dc828f8</anchor>
      <arglist>(const int &amp;i_valueA, const int &amp;i_valueB)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE bool</type>
      <name>Min</name>
      <anchorfile>min_8h.html</anchorfile>
      <anchor>a2679967ee89033f83535e432f07eb5c7</anchor>
      <arglist>(const bool &amp;i_valueA, const bool &amp;i_valueB)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Mat3f</type>
      <name>Min</name>
      <anchorfile>min_8h.html</anchorfile>
      <anchor>ae2aa7be7bdd849d6b0cb46c67d23ef93</anchor>
      <arglist>(const Mat3f &amp;i_valueA, const Mat3f &amp;i_valueB)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Mat4f</type>
      <name>Min</name>
      <anchorfile>min_8h.html</anchorfile>
      <anchor>a76a28039482e67f63bbe2400f7b48858</anchor>
      <arglist>(const Mat4f &amp;i_valueA, const Mat4f &amp;i_valueB)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec2f</type>
      <name>Min</name>
      <anchorfile>min_8h.html</anchorfile>
      <anchor>a6ba902a5b7fc29023994d58f6d3f2ea5</anchor>
      <arglist>(const Vec2f &amp;i_valueA, const Vec2f &amp;i_valueB)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec3f</type>
      <name>Min</name>
      <anchorfile>min_8h.html</anchorfile>
      <anchor>a90f0be2c2a7a87feeec5b16a138cf3c3</anchor>
      <arglist>(const Vec3f &amp;i_valueA, const Vec3f &amp;i_valueB)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec4f</type>
      <name>Min</name>
      <anchorfile>min_8h.html</anchorfile>
      <anchor>a9b4635e8a404a751dceab5210aac228f</anchor>
      <arglist>(const Vec4f &amp;i_valueA, const Vec4f &amp;i_valueB)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec2i</type>
      <name>Min</name>
      <anchorfile>min_8h.html</anchorfile>
      <anchor>aa9417507b451fc70c931afd47bb5c0d4</anchor>
      <arglist>(const Vec2i &amp;i_valueA, const Vec2i &amp;i_valueB)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec3i</type>
      <name>Min</name>
      <anchorfile>min_8h.html</anchorfile>
      <anchor>ae984ff94dfb87cc3eaf1ae74ffe9ca39</anchor>
      <arglist>(const Vec3i &amp;i_valueA, const Vec3i &amp;i_valueB)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec4i</type>
      <name>Min</name>
      <anchorfile>min_8h.html</anchorfile>
      <anchor>a3bd1a731ef51e958386b599f1444a10d</anchor>
      <arglist>(const Vec4i &amp;i_valueA, const Vec4i &amp;i_valueB)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>normalize.h</name>
    <path>/code/GraphicsMath/src/gm/functions/</path>
    <filename>normalize_8h</filename>
    <includes id="gm_8h" name="gm.h" local="no" imported="no">gm/gm.h</includes>
    <includes id="assert_8h" name="assert.h" local="no" imported="no">gm/base/assert.h</includes>
    <includes id="vec2f_8h" name="vec2f.h" local="no" imported="no">gm/types/vec2f.h</includes>
    <includes id="vec3f_8h" name="vec3f.h" local="no" imported="no">gm/types/vec3f.h</includes>
    <includes id="vec4f_8h" name="vec4f.h" local="no" imported="no">gm/types/vec4f.h</includes>
    <includes id="length_8h" name="length.h" local="no" imported="no">gm/functions/length.h</includes>
    <member kind="function">
      <type>GM_NS_OPEN GM_HOST_DEVICE Vec2f</type>
      <name>Normalize</name>
      <anchorfile>normalize_8h.html</anchorfile>
      <anchor>a244920ba03e49ea95897a37bb2a343aa</anchor>
      <arglist>(const Vec2f &amp;i_vector)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec3f</type>
      <name>Normalize</name>
      <anchorfile>normalize_8h.html</anchorfile>
      <anchor>a1b576339cd0f19ee2470c0199bee2f26</anchor>
      <arglist>(const Vec3f &amp;i_vector)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec4f</type>
      <name>Normalize</name>
      <anchorfile>normalize_8h.html</anchorfile>
      <anchor>a2542196162e259d4a3af7428f928c3dc</anchor>
      <arglist>(const Vec4f &amp;i_vector)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>radians.h</name>
    <path>/code/GraphicsMath/src/gm/functions/</path>
    <filename>radians_8h</filename>
    <includes id="gm_8h" name="gm.h" local="no" imported="no">gm/gm.h</includes>
    <includes id="constants_8h" name="constants.h" local="no" imported="no">gm/base/constants.h</includes>
    <member kind="function">
      <type>GM_NS_OPEN GM_HOST_DEVICE float</type>
      <name>Radians</name>
      <anchorfile>radians_8h.html</anchorfile>
      <anchor>a126ab9894d7a876e65510ee740f31a30</anchor>
      <arglist>(const float &amp;i_angle)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>setIdentity.h</name>
    <path>/code/GraphicsMath/src/gm/functions/</path>
    <filename>setIdentity_8h</filename>
    <includes id="gm_8h" name="gm.h" local="no" imported="no">gm/gm.h</includes>
    <includes id="mat3f_8h" name="mat3f.h" local="no" imported="no">gm/types/mat3f.h</includes>
    <includes id="mat4f_8h" name="mat4f.h" local="no" imported="no">gm/types/mat4f.h</includes>
    <member kind="function">
      <type>GM_NS_OPEN GM_HOST_DEVICE void</type>
      <name>SetIdentity</name>
      <anchorfile>setIdentity_8h.html</anchorfile>
      <anchor>a624e672e84b35e2e58504e9c9ca83567</anchor>
      <arglist>(Mat3f &amp;o_matrix)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE void</type>
      <name>SetIdentity</name>
      <anchorfile>setIdentity_8h.html</anchorfile>
      <anchor>a60f6071b88a0c4dd92133901a7d640f6</anchor>
      <arglist>(Mat4f &amp;o_matrix)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>setScale.h</name>
    <path>/code/GraphicsMath/src/gm/functions/</path>
    <filename>setScale_8h</filename>
    <includes id="gm_8h" name="gm.h" local="no" imported="no">gm/gm.h</includes>
    <includes id="mat3f_8h" name="mat3f.h" local="no" imported="no">gm/types/mat3f.h</includes>
    <includes id="mat4f_8h" name="mat4f.h" local="no" imported="no">gm/types/mat4f.h</includes>
    <includes id="vec2f_8h" name="vec2f.h" local="no" imported="no">gm/types/vec2f.h</includes>
    <includes id="vec3f_8h" name="vec3f.h" local="no" imported="no">gm/types/vec3f.h</includes>
    <member kind="function">
      <type>GM_NS_OPEN GM_HOST_DEVICE void</type>
      <name>SetScale</name>
      <anchorfile>setScale_8h.html</anchorfile>
      <anchor>a5dae65aada891685f50d2d15eb2aa2ce</anchor>
      <arglist>(const Vec2f &amp;i_vector, Mat3f &amp;o_matrix)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE void</type>
      <name>SetScale</name>
      <anchorfile>setScale_8h.html</anchorfile>
      <anchor>aa33e6fc7dc2f7e2a30bbb04ef24763fa</anchor>
      <arglist>(const Vec3f &amp;i_vector, Mat4f &amp;o_matrix)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>setTranslate.h</name>
    <path>/code/GraphicsMath/src/gm/functions/</path>
    <filename>setTranslate_8h</filename>
    <includes id="gm_8h" name="gm.h" local="no" imported="no">gm/gm.h</includes>
    <includes id="mat3f_8h" name="mat3f.h" local="no" imported="no">gm/types/mat3f.h</includes>
    <includes id="mat4f_8h" name="mat4f.h" local="no" imported="no">gm/types/mat4f.h</includes>
    <includes id="vec2f_8h" name="vec2f.h" local="no" imported="no">gm/types/vec2f.h</includes>
    <includes id="vec3f_8h" name="vec3f.h" local="no" imported="no">gm/types/vec3f.h</includes>
    <member kind="function">
      <type>GM_NS_OPEN GM_HOST_DEVICE void</type>
      <name>SetTranslate</name>
      <anchorfile>setTranslate_8h.html</anchorfile>
      <anchor>ac4bfbcbe26d914f674c4e001d71f880d</anchor>
      <arglist>(const Vec2f &amp;i_vector, Mat3f &amp;o_matrix)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE void</type>
      <name>SetTranslate</name>
      <anchorfile>setTranslate_8h.html</anchorfile>
      <anchor>ac05924df74e9de3ecbcfe319524ebd68</anchor>
      <arglist>(const Vec3f &amp;i_vector, Mat4f &amp;o_matrix)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>transpose.h</name>
    <path>/code/GraphicsMath/src/gm/functions/</path>
    <filename>transpose_8h</filename>
    <includes id="gm_8h" name="gm.h" local="no" imported="no">gm/gm.h</includes>
    <includes id="mat3f_8h" name="mat3f.h" local="no" imported="no">gm/types/mat3f.h</includes>
    <includes id="mat4f_8h" name="mat4f.h" local="no" imported="no">gm/types/mat4f.h</includes>
    <member kind="function">
      <type>GM_NS_OPEN GM_HOST_DEVICE Mat3f</type>
      <name>Transpose</name>
      <anchorfile>transpose_8h.html</anchorfile>
      <anchor>a462f9178bf3925bfa5036b340ce2faf0</anchor>
      <arglist>(const Mat3f &amp;i_matrix)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Mat4f</type>
      <name>Transpose</name>
      <anchorfile>transpose_8h.html</anchorfile>
      <anchor>ad55b59e446f98ba38970449b3e354421</anchor>
      <arglist>(const Mat4f &amp;i_matrix)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>gm.h</name>
    <path>/code/GraphicsMath/src/gm/</path>
    <filename>gm_8h</filename>
    <includes id="hostdevice_8h" name="hostdevice.h" local="no" imported="no">gm/base/hostdevice.h</includes>
    <member kind="define">
      <type>#define</type>
      <name>GM_NS</name>
      <anchorfile>gm_8h.html</anchorfile>
      <anchor>ab87d0c71161137eb5a7df9ba9e6e3632</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>GM_NS_USING</name>
      <anchorfile>gm_8h.html</anchorfile>
      <anchor>a6cfc19b65db7b0f36362dfa3b85f7852</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>GM_NS_OPEN</name>
      <anchorfile>gm_8h.html</anchorfile>
      <anchor>a22ad8a4eb0ec100618321cb6bbed27fa</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>GM_NS_CLOSE</name>
      <anchorfile>gm_8h.html</anchorfile>
      <anchor>a3388432345a2ffab3208f5acad2671bb</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>boolArray.h</name>
    <path>/code/GraphicsMath/src/gm/types/</path>
    <filename>boolArray_8h</filename>
    <member kind="typedef">
      <type>std::vector&lt; bool &gt;</type>
      <name>BoolArray</name>
      <anchorfile>boolArray_8h.html</anchorfile>
      <anchor>a5ce01cb8b54eed504f382c676cf854d4</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>bounds2f.h</name>
    <path>/code/GraphicsMath/src/gm/types/</path>
    <filename>bounds2f_8h</filename>
    <includes id="gm_8h" name="gm.h" local="no" imported="no">gm/gm.h</includes>
    <includes id="vec2f_8h" name="vec2f.h" local="no" imported="no">gm/types/vec2f.h</includes>
    <class kind="class">Bounds2f</class>
    <member kind="function">
      <type>std::ostream &amp;</type>
      <name>operator&lt;&lt;</name>
      <anchorfile>bounds2f_8h.html</anchorfile>
      <anchor>a0e80373f66f68ac95ac4a4c3a4f2773e</anchor>
      <arglist>(std::ostream &amp;o_outputStream, const Bounds2f &amp;i_composite)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>bounds2i.h</name>
    <path>/code/GraphicsMath/src/gm/types/</path>
    <filename>bounds2i_8h</filename>
    <includes id="gm_8h" name="gm.h" local="no" imported="no">gm/gm.h</includes>
    <includes id="vec2i_8h" name="vec2i.h" local="no" imported="no">gm/types/vec2i.h</includes>
    <class kind="class">Bounds2i</class>
    <member kind="function">
      <type>std::ostream &amp;</type>
      <name>operator&lt;&lt;</name>
      <anchorfile>bounds2i_8h.html</anchorfile>
      <anchor>ad3859b6a7296cab498ae7987b8e054a2</anchor>
      <arglist>(std::ostream &amp;o_outputStream, const Bounds2i &amp;i_composite)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>bounds3f.h</name>
    <path>/code/GraphicsMath/src/gm/types/</path>
    <filename>bounds3f_8h</filename>
    <includes id="gm_8h" name="gm.h" local="no" imported="no">gm/gm.h</includes>
    <includes id="vec3f_8h" name="vec3f.h" local="no" imported="no">gm/types/vec3f.h</includes>
    <class kind="class">Bounds3f</class>
    <member kind="function">
      <type>std::ostream &amp;</type>
      <name>operator&lt;&lt;</name>
      <anchorfile>bounds3f_8h.html</anchorfile>
      <anchor>a9a3b2576cc1dd90c09cc02d2a0ff0f1b</anchor>
      <arglist>(std::ostream &amp;o_outputStream, const Bounds3f &amp;i_composite)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>bounds3i.h</name>
    <path>/code/GraphicsMath/src/gm/types/</path>
    <filename>bounds3i_8h</filename>
    <includes id="gm_8h" name="gm.h" local="no" imported="no">gm/gm.h</includes>
    <includes id="vec3i_8h" name="vec3i.h" local="no" imported="no">gm/types/vec3i.h</includes>
    <class kind="class">Bounds3i</class>
    <member kind="function">
      <type>std::ostream &amp;</type>
      <name>operator&lt;&lt;</name>
      <anchorfile>bounds3i_8h.html</anchorfile>
      <anchor>af6f14da32f565b71e3faa4b94e5fe1bc</anchor>
      <arglist>(std::ostream &amp;o_outputStream, const Bounds3i &amp;i_composite)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>floatArray.h</name>
    <path>/code/GraphicsMath/src/gm/types/</path>
    <filename>floatArray_8h</filename>
    <member kind="typedef">
      <type>std::vector&lt; float &gt;</type>
      <name>FloatArray</name>
      <anchorfile>floatArray_8h.html</anchorfile>
      <anchor>a21b722d3372816095cd581dbed10575b</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>intArray.h</name>
    <path>/code/GraphicsMath/src/gm/types/</path>
    <filename>intArray_8h</filename>
    <member kind="typedef">
      <type>std::vector&lt; int &gt;</type>
      <name>IntArray</name>
      <anchorfile>intArray_8h.html</anchorfile>
      <anchor>a09b3de65b001d3250fff3de107e6e569</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>mat3f.h</name>
    <path>/code/GraphicsMath/src/gm/types/</path>
    <filename>mat3f_8h</filename>
    <includes id="almost_8h" name="almost.h" local="no" imported="no">gm/base/almost.h</includes>
    <includes id="assert_8h" name="assert.h" local="no" imported="no">gm/base/assert.h</includes>
    <includes id="gm_8h" name="gm.h" local="no" imported="no">gm/gm.h</includes>
    <class kind="class">Mat3f</class>
    <member kind="function">
      <type>GM_HOST_DEVICE Mat3f</type>
      <name>operator*</name>
      <anchorfile>mat3f_8h.html</anchorfile>
      <anchor>a1132a6c0a0a0a4bf950ae82560b20d2f</anchor>
      <arglist>(const Mat3f &amp;i_vector, const float &amp;i_scalar)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Mat3f</type>
      <name>operator*</name>
      <anchorfile>mat3f_8h.html</anchorfile>
      <anchor>a8de06330a91eba83f56b6705821ce28f</anchor>
      <arglist>(const float &amp;i_scalar, const Mat3f &amp;i_vector)</arglist>
    </member>
    <member kind="function">
      <type>std::ostream &amp;</type>
      <name>operator&lt;&lt;</name>
      <anchorfile>mat3f_8h.html</anchorfile>
      <anchor>aaf5d96ee0a8af10221b7e62b36c98139</anchor>
      <arglist>(std::ostream &amp;o_outputStream, const Mat3f &amp;i_vector)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>mat3fArray.h</name>
    <path>/code/GraphicsMath/src/gm/types/</path>
    <filename>mat3fArray_8h</filename>
    <includes id="mat3f_8h" name="mat3f.h" local="no" imported="no">gm/types/mat3f.h</includes>
    <member kind="typedef">
      <type>std::vector&lt; Mat3f &gt;</type>
      <name>Mat3fArray</name>
      <anchorfile>mat3fArray_8h.html</anchorfile>
      <anchor>a324336c0024d48253b9493ef424b1d29</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>mat4f.h</name>
    <path>/code/GraphicsMath/src/gm/types/</path>
    <filename>mat4f_8h</filename>
    <includes id="almost_8h" name="almost.h" local="no" imported="no">gm/base/almost.h</includes>
    <includes id="assert_8h" name="assert.h" local="no" imported="no">gm/base/assert.h</includes>
    <includes id="gm_8h" name="gm.h" local="no" imported="no">gm/gm.h</includes>
    <class kind="class">Mat4f</class>
    <member kind="function">
      <type>GM_HOST_DEVICE Mat4f</type>
      <name>operator*</name>
      <anchorfile>mat4f_8h.html</anchorfile>
      <anchor>aaadf3b8f7fe8876ff8136ba5df1787f2</anchor>
      <arglist>(const Mat4f &amp;i_vector, const float &amp;i_scalar)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Mat4f</type>
      <name>operator*</name>
      <anchorfile>mat4f_8h.html</anchorfile>
      <anchor>adafd2f1f172b493e342f3f19ebd6842a</anchor>
      <arglist>(const float &amp;i_scalar, const Mat4f &amp;i_vector)</arglist>
    </member>
    <member kind="function">
      <type>std::ostream &amp;</type>
      <name>operator&lt;&lt;</name>
      <anchorfile>mat4f_8h.html</anchorfile>
      <anchor>add46c868950f01ce2c43e838f7b87b28</anchor>
      <arglist>(std::ostream &amp;o_outputStream, const Mat4f &amp;i_vector)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>mat4fArray.h</name>
    <path>/code/GraphicsMath/src/gm/types/</path>
    <filename>mat4fArray_8h</filename>
    <includes id="mat4f_8h" name="mat4f.h" local="no" imported="no">gm/types/mat4f.h</includes>
    <member kind="typedef">
      <type>std::vector&lt; Mat4f &gt;</type>
      <name>Mat4fArray</name>
      <anchorfile>mat4fArray_8h.html</anchorfile>
      <anchor>aef566474602236f8013e83f287485dcd</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>vec2f.h</name>
    <path>/code/GraphicsMath/src/gm/types/</path>
    <filename>vec2f_8h</filename>
    <includes id="almost_8h" name="almost.h" local="no" imported="no">gm/base/almost.h</includes>
    <includes id="assert_8h" name="assert.h" local="no" imported="no">gm/base/assert.h</includes>
    <includes id="gm_8h" name="gm.h" local="no" imported="no">gm/gm.h</includes>
    <class kind="class">Vec2f</class>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec2f</type>
      <name>operator*</name>
      <anchorfile>vec2f_8h.html</anchorfile>
      <anchor>a55aa592045561906dce31e48f020abfa</anchor>
      <arglist>(const Vec2f &amp;i_vector, const float &amp;i_scalar)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec2f</type>
      <name>operator*</name>
      <anchorfile>vec2f_8h.html</anchorfile>
      <anchor>a6339d036caf2dca81492ffff69f64795</anchor>
      <arglist>(const float &amp;i_scalar, const Vec2f &amp;i_vector)</arglist>
    </member>
    <member kind="function">
      <type>std::ostream &amp;</type>
      <name>operator&lt;&lt;</name>
      <anchorfile>vec2f_8h.html</anchorfile>
      <anchor>a8744abc90875f2b7e8c1249cdd827282</anchor>
      <arglist>(std::ostream &amp;o_outputStream, const Vec2f &amp;i_vector)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>vec2fArray.h</name>
    <path>/code/GraphicsMath/src/gm/types/</path>
    <filename>vec2fArray_8h</filename>
    <includes id="vec2f_8h" name="vec2f.h" local="no" imported="no">gm/types/vec2f.h</includes>
    <member kind="typedef">
      <type>std::vector&lt; Vec2f &gt;</type>
      <name>Vec2fArray</name>
      <anchorfile>vec2fArray_8h.html</anchorfile>
      <anchor>acf9f310b586618ce0a4083da922e8678</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>vec2i.h</name>
    <path>/code/GraphicsMath/src/gm/types/</path>
    <filename>vec2i_8h</filename>
    <includes id="assert_8h" name="assert.h" local="no" imported="no">gm/base/assert.h</includes>
    <includes id="gm_8h" name="gm.h" local="no" imported="no">gm/gm.h</includes>
    <class kind="class">Vec2i</class>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec2i</type>
      <name>operator*</name>
      <anchorfile>vec2i_8h.html</anchorfile>
      <anchor>a895c0f9fb60fb578c2d71d939daa58f8</anchor>
      <arglist>(const Vec2i &amp;i_vector, const int &amp;i_scalar)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec2i</type>
      <name>operator*</name>
      <anchorfile>vec2i_8h.html</anchorfile>
      <anchor>a3af0c660d83b536e75644f15222c6217</anchor>
      <arglist>(const int &amp;i_scalar, const Vec2i &amp;i_vector)</arglist>
    </member>
    <member kind="function">
      <type>std::ostream &amp;</type>
      <name>operator&lt;&lt;</name>
      <anchorfile>vec2i_8h.html</anchorfile>
      <anchor>ae9747f5df080a2fdaad20bf99b28ac73</anchor>
      <arglist>(std::ostream &amp;o_outputStream, const Vec2i &amp;i_vector)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>vec2iArray.h</name>
    <path>/code/GraphicsMath/src/gm/types/</path>
    <filename>vec2iArray_8h</filename>
    <includes id="vec2i_8h" name="vec2i.h" local="no" imported="no">gm/types/vec2i.h</includes>
    <member kind="typedef">
      <type>std::vector&lt; Vec2i &gt;</type>
      <name>Vec2iArray</name>
      <anchorfile>vec2iArray_8h.html</anchorfile>
      <anchor>a7689df0398188d8f0a0d942d4f4bd734</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>vec3f.h</name>
    <path>/code/GraphicsMath/src/gm/types/</path>
    <filename>vec3f_8h</filename>
    <includes id="almost_8h" name="almost.h" local="no" imported="no">gm/base/almost.h</includes>
    <includes id="assert_8h" name="assert.h" local="no" imported="no">gm/base/assert.h</includes>
    <includes id="gm_8h" name="gm.h" local="no" imported="no">gm/gm.h</includes>
    <class kind="class">Vec3f</class>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec3f</type>
      <name>operator*</name>
      <anchorfile>vec3f_8h.html</anchorfile>
      <anchor>abf4e185a3f40a1a3df2e370146e7a434</anchor>
      <arglist>(const Vec3f &amp;i_vector, const float &amp;i_scalar)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec3f</type>
      <name>operator*</name>
      <anchorfile>vec3f_8h.html</anchorfile>
      <anchor>ae0a6ded09078b49561b27d89e238d2f5</anchor>
      <arglist>(const float &amp;i_scalar, const Vec3f &amp;i_vector)</arglist>
    </member>
    <member kind="function">
      <type>std::ostream &amp;</type>
      <name>operator&lt;&lt;</name>
      <anchorfile>vec3f_8h.html</anchorfile>
      <anchor>ae70418505d4ab39ca2cee21c67afdbe1</anchor>
      <arglist>(std::ostream &amp;o_outputStream, const Vec3f &amp;i_vector)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>vec3fArray.h</name>
    <path>/code/GraphicsMath/src/gm/types/</path>
    <filename>vec3fArray_8h</filename>
    <includes id="vec3f_8h" name="vec3f.h" local="no" imported="no">gm/types/vec3f.h</includes>
    <member kind="typedef">
      <type>std::vector&lt; Vec3f &gt;</type>
      <name>Vec3fArray</name>
      <anchorfile>vec3fArray_8h.html</anchorfile>
      <anchor>a66c419367d5beca4bb1a99a025312d97</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>vec3i.h</name>
    <path>/code/GraphicsMath/src/gm/types/</path>
    <filename>vec3i_8h</filename>
    <includes id="assert_8h" name="assert.h" local="no" imported="no">gm/base/assert.h</includes>
    <includes id="gm_8h" name="gm.h" local="no" imported="no">gm/gm.h</includes>
    <class kind="class">Vec3i</class>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec3i</type>
      <name>operator*</name>
      <anchorfile>vec3i_8h.html</anchorfile>
      <anchor>a079511ae87fd361162090a0f217a0ea5</anchor>
      <arglist>(const Vec3i &amp;i_vector, const int &amp;i_scalar)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec3i</type>
      <name>operator*</name>
      <anchorfile>vec3i_8h.html</anchorfile>
      <anchor>a056ac366a43b268babda66694513ecfd</anchor>
      <arglist>(const int &amp;i_scalar, const Vec3i &amp;i_vector)</arglist>
    </member>
    <member kind="function">
      <type>std::ostream &amp;</type>
      <name>operator&lt;&lt;</name>
      <anchorfile>vec3i_8h.html</anchorfile>
      <anchor>a4d3d166b73f2962d6fb69d418cb61bf7</anchor>
      <arglist>(std::ostream &amp;o_outputStream, const Vec3i &amp;i_vector)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>vec3iArray.h</name>
    <path>/code/GraphicsMath/src/gm/types/</path>
    <filename>vec3iArray_8h</filename>
    <includes id="vec3i_8h" name="vec3i.h" local="no" imported="no">gm/types/vec3i.h</includes>
    <member kind="typedef">
      <type>std::vector&lt; Vec3i &gt;</type>
      <name>Vec3iArray</name>
      <anchorfile>vec3iArray_8h.html</anchorfile>
      <anchor>ac24df76293eb5a6134255baa8945addd</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>vec4f.h</name>
    <path>/code/GraphicsMath/src/gm/types/</path>
    <filename>vec4f_8h</filename>
    <includes id="almost_8h" name="almost.h" local="no" imported="no">gm/base/almost.h</includes>
    <includes id="assert_8h" name="assert.h" local="no" imported="no">gm/base/assert.h</includes>
    <includes id="gm_8h" name="gm.h" local="no" imported="no">gm/gm.h</includes>
    <class kind="class">Vec4f</class>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec4f</type>
      <name>operator*</name>
      <anchorfile>vec4f_8h.html</anchorfile>
      <anchor>aea0e9bdf3b1e56f272ed98781db699f3</anchor>
      <arglist>(const Vec4f &amp;i_vector, const float &amp;i_scalar)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec4f</type>
      <name>operator*</name>
      <anchorfile>vec4f_8h.html</anchorfile>
      <anchor>a04360662a9755b84d4cba9d93a31cc54</anchor>
      <arglist>(const float &amp;i_scalar, const Vec4f &amp;i_vector)</arglist>
    </member>
    <member kind="function">
      <type>std::ostream &amp;</type>
      <name>operator&lt;&lt;</name>
      <anchorfile>vec4f_8h.html</anchorfile>
      <anchor>aab54b462bad7d898ecf60e18269e7c90</anchor>
      <arglist>(std::ostream &amp;o_outputStream, const Vec4f &amp;i_vector)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>vec4fArray.h</name>
    <path>/code/GraphicsMath/src/gm/types/</path>
    <filename>vec4fArray_8h</filename>
    <includes id="vec4f_8h" name="vec4f.h" local="no" imported="no">gm/types/vec4f.h</includes>
    <member kind="typedef">
      <type>std::vector&lt; Vec4f &gt;</type>
      <name>Vec4fArray</name>
      <anchorfile>vec4fArray_8h.html</anchorfile>
      <anchor>a3e12a0094eec5fee71cdccf70ca285ad</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>vec4i.h</name>
    <path>/code/GraphicsMath/src/gm/types/</path>
    <filename>vec4i_8h</filename>
    <includes id="assert_8h" name="assert.h" local="no" imported="no">gm/base/assert.h</includes>
    <includes id="gm_8h" name="gm.h" local="no" imported="no">gm/gm.h</includes>
    <class kind="class">Vec4i</class>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec4i</type>
      <name>operator*</name>
      <anchorfile>vec4i_8h.html</anchorfile>
      <anchor>a587fee75afb097edc9a1239a062e2ea9</anchor>
      <arglist>(const Vec4i &amp;i_vector, const int &amp;i_scalar)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec4i</type>
      <name>operator*</name>
      <anchorfile>vec4i_8h.html</anchorfile>
      <anchor>a1587869e94978c2e08d55948cbcf32de</anchor>
      <arglist>(const int &amp;i_scalar, const Vec4i &amp;i_vector)</arglist>
    </member>
    <member kind="function">
      <type>std::ostream &amp;</type>
      <name>operator&lt;&lt;</name>
      <anchorfile>vec4i_8h.html</anchorfile>
      <anchor>a78bc4a487c1c96880f322646158f2210</anchor>
      <arglist>(std::ostream &amp;o_outputStream, const Vec4i &amp;i_vector)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>vec4iArray.h</name>
    <path>/code/GraphicsMath/src/gm/types/</path>
    <filename>vec4iArray_8h</filename>
    <includes id="vec4i_8h" name="vec4i.h" local="no" imported="no">gm/types/vec4i.h</includes>
    <member kind="typedef">
      <type>std::vector&lt; Vec4i &gt;</type>
      <name>Vec4iArray</name>
      <anchorfile>vec4iArray_8h.html</anchorfile>
      <anchor>a36099984e65e7158070760550f1c275b</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Bounds2f</name>
    <filename>classBounds2f.html</filename>
    <member kind="function">
      <type></type>
      <name>Bounds2f</name>
      <anchorfile>classBounds2f.html</anchorfile>
      <anchor>a77d40f1c867a7aee0735338b5c73d619</anchor>
      <arglist>()=default</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Bounds2f</name>
      <anchorfile>classBounds2f.html</anchorfile>
      <anchor>a899ae9b8c064b9a38ab5409840c88865</anchor>
      <arglist>()=default</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Bounds2f</name>
      <anchorfile>classBounds2f.html</anchorfile>
      <anchor>a6d91cc80d0fe6e039c8405c1f768efb7</anchor>
      <arglist>(const Vec2f &amp;i_min, const Vec2f &amp;i_max)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE const Vec2f &amp;</type>
      <name>Min</name>
      <anchorfile>classBounds2f.html</anchorfile>
      <anchor>aec685f2f6c39578d3eff3ad70d0c4193</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec2f &amp;</type>
      <name>Min</name>
      <anchorfile>classBounds2f.html</anchorfile>
      <anchor>a981d15007644118b04d69119dbd9938b</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE const Vec2f &amp;</type>
      <name>Max</name>
      <anchorfile>classBounds2f.html</anchorfile>
      <anchor>a1aa6c96d34b84f60e8ebf63512595f42</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec2f &amp;</type>
      <name>Max</name>
      <anchorfile>classBounds2f.html</anchorfile>
      <anchor>a921c2df02c3ecf7bd572c4992f51bec8</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>GetString</name>
      <anchorfile>classBounds2f.html</anchorfile>
      <anchor>a043c2bdd7227f3b226d0dce0f594edb3</anchor>
      <arglist>(const std::string &amp;i_classPrefix=std::string()) const</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Bounds2i</name>
    <filename>classBounds2i.html</filename>
    <member kind="function">
      <type></type>
      <name>Bounds2i</name>
      <anchorfile>classBounds2i.html</anchorfile>
      <anchor>ab153f7b4ffa13159b865e81fdbae706a</anchor>
      <arglist>()=default</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Bounds2i</name>
      <anchorfile>classBounds2i.html</anchorfile>
      <anchor>a8b6558bd37dbbdbeb1ca9dafc9da0464</anchor>
      <arglist>()=default</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Bounds2i</name>
      <anchorfile>classBounds2i.html</anchorfile>
      <anchor>aafee4ebd78880ad3980128b921398d58</anchor>
      <arglist>(const Vec2i &amp;i_min, const Vec2i &amp;i_max)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE const Vec2i &amp;</type>
      <name>Min</name>
      <anchorfile>classBounds2i.html</anchorfile>
      <anchor>a06c8644395efc7a20463325902e9f828</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec2i &amp;</type>
      <name>Min</name>
      <anchorfile>classBounds2i.html</anchorfile>
      <anchor>aac3918d9559077ec2c83f6325c0627c5</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE const Vec2i &amp;</type>
      <name>Max</name>
      <anchorfile>classBounds2i.html</anchorfile>
      <anchor>a3af7c9d694412a65f10d1d6f99d6506e</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec2i &amp;</type>
      <name>Max</name>
      <anchorfile>classBounds2i.html</anchorfile>
      <anchor>afc3dfc58a86230a96d209cbc6a3836df</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>GetString</name>
      <anchorfile>classBounds2i.html</anchorfile>
      <anchor>ab717708cdd8bc28dfae061f622cf2544</anchor>
      <arglist>(const std::string &amp;i_classPrefix=std::string()) const</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Bounds3f</name>
    <filename>classBounds3f.html</filename>
    <member kind="function">
      <type></type>
      <name>Bounds3f</name>
      <anchorfile>classBounds3f.html</anchorfile>
      <anchor>ab13e90645b1dd99793a9df92cb6b02b7</anchor>
      <arglist>()=default</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Bounds3f</name>
      <anchorfile>classBounds3f.html</anchorfile>
      <anchor>a2172a4a59dbd51f497b4a85b325a9efe</anchor>
      <arglist>()=default</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Bounds3f</name>
      <anchorfile>classBounds3f.html</anchorfile>
      <anchor>ab62d8dae552392ba2828d93e0046029a</anchor>
      <arglist>(const Vec3f &amp;i_min, const Vec3f &amp;i_max)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE const Vec3f &amp;</type>
      <name>Min</name>
      <anchorfile>classBounds3f.html</anchorfile>
      <anchor>a3d650750fcbea963d5d3d327d4bc46b5</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec3f &amp;</type>
      <name>Min</name>
      <anchorfile>classBounds3f.html</anchorfile>
      <anchor>a86f0e4225a1278bc57dbe6f136c09d66</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE const Vec3f &amp;</type>
      <name>Max</name>
      <anchorfile>classBounds3f.html</anchorfile>
      <anchor>ae7e8380bb0bdfed40b79a0682b0dc20b</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec3f &amp;</type>
      <name>Max</name>
      <anchorfile>classBounds3f.html</anchorfile>
      <anchor>ad7ffa205983b5e01e19d55e83455c844</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>GetString</name>
      <anchorfile>classBounds3f.html</anchorfile>
      <anchor>ac994f8d56690071d8266a59d74d663a4</anchor>
      <arglist>(const std::string &amp;i_classPrefix=std::string()) const</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Bounds3i</name>
    <filename>classBounds3i.html</filename>
    <member kind="function">
      <type></type>
      <name>Bounds3i</name>
      <anchorfile>classBounds3i.html</anchorfile>
      <anchor>a04c707cf48018e4dad3055b472d364ca</anchor>
      <arglist>()=default</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Bounds3i</name>
      <anchorfile>classBounds3i.html</anchorfile>
      <anchor>a21ffb05d07481f858e178be248f39ba7</anchor>
      <arglist>()=default</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Bounds3i</name>
      <anchorfile>classBounds3i.html</anchorfile>
      <anchor>a4f33f5149e7ce87c329f9e65bdf4064e</anchor>
      <arglist>(const Vec3i &amp;i_min, const Vec3i &amp;i_max)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE const Vec3i &amp;</type>
      <name>Min</name>
      <anchorfile>classBounds3i.html</anchorfile>
      <anchor>a3e3469b0ff5ad0507a31389a78f61f39</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec3i &amp;</type>
      <name>Min</name>
      <anchorfile>classBounds3i.html</anchorfile>
      <anchor>af7be78266a3fb7d1d6c899dafc2ad5be</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE const Vec3i &amp;</type>
      <name>Max</name>
      <anchorfile>classBounds3i.html</anchorfile>
      <anchor>a0f247cba3cdd662eefbc61a35b723f95</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec3i &amp;</type>
      <name>Max</name>
      <anchorfile>classBounds3i.html</anchorfile>
      <anchor>aa5bc5a8b7233debc39f6ed48eb398fcd</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>GetString</name>
      <anchorfile>classBounds3i.html</anchorfile>
      <anchor>a3fce4290167f48adb99ac44321e17879</anchor>
      <arglist>(const std::string &amp;i_classPrefix=std::string()) const</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Vec2iRange::iterator</name>
    <filename>classVec2iRange_1_1iterator.html</filename>
    <member kind="function">
      <type></type>
      <name>iterator</name>
      <anchorfile>classVec2iRange_1_1iterator.html</anchorfile>
      <anchor>af337766a1e6ddfbeced8e11c04e67b81</anchor>
      <arglist>(const Vec2i &amp;i_current, const Vec2i &amp;i_begin, const Vec2i &amp;i_end)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Mat3f</name>
    <filename>classMat3f.html</filename>
    <member kind="typedef">
      <type>float</type>
      <name>ElementType</name>
      <anchorfile>classMat3f.html</anchorfile>
      <anchor>a9d3b1f2a4a8e59da9c868c0800c84489</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Mat3f</name>
      <anchorfile>classMat3f.html</anchorfile>
      <anchor>a2c97e7a5830098a13ac728031b63296b</anchor>
      <arglist>()=default</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Mat3f</name>
      <anchorfile>classMat3f.html</anchorfile>
      <anchor>a9dc65edd48c9c533517f47ee9c4113d3</anchor>
      <arglist>()=default</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Mat3f</name>
      <anchorfile>classMat3f.html</anchorfile>
      <anchor>af93671ec7d2e80f343ca0065c0560adc</anchor>
      <arglist>(const float &amp;i_element0, const float &amp;i_element1, const float &amp;i_element2, const float &amp;i_element3, const float &amp;i_element4, const float &amp;i_element5, const float &amp;i_element6, const float &amp;i_element7, const float &amp;i_element8)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE float &amp;</type>
      <name>operator[]</name>
      <anchorfile>classMat3f.html</anchorfile>
      <anchor>ad72c0b10d3c040d4304b152dbfc54a1a</anchor>
      <arglist>(size_t i_index)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE const float &amp;</type>
      <name>operator[]</name>
      <anchorfile>classMat3f.html</anchorfile>
      <anchor>a7043bfcab941678fae317eb2eab3439c</anchor>
      <arglist>(size_t i_index) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Mat3f</type>
      <name>operator+</name>
      <anchorfile>classMat3f.html</anchorfile>
      <anchor>a946049e38101edd00f0d368fc2aed7e9</anchor>
      <arglist>(const Mat3f &amp;i_vector) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Mat3f &amp;</type>
      <name>operator+=</name>
      <anchorfile>classMat3f.html</anchorfile>
      <anchor>a7560aefc60e44e291e1a235fc8270362</anchor>
      <arglist>(const Mat3f &amp;i_vector)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Mat3f</type>
      <name>operator-</name>
      <anchorfile>classMat3f.html</anchorfile>
      <anchor>a649cef58653dbd31dd5490ca10617a2c</anchor>
      <arglist>(const Mat3f &amp;i_vector) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Mat3f &amp;</type>
      <name>operator-=</name>
      <anchorfile>classMat3f.html</anchorfile>
      <anchor>a8d4bb046f3cd64c127db110c75990db0</anchor>
      <arglist>(const Mat3f &amp;i_vector)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Mat3f &amp;</type>
      <name>operator*=</name>
      <anchorfile>classMat3f.html</anchorfile>
      <anchor>a17fdae18c0d7bffe2405b40c397fc996</anchor>
      <arglist>(const float &amp;i_scalar)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Mat3f</type>
      <name>operator/</name>
      <anchorfile>classMat3f.html</anchorfile>
      <anchor>a5f3350f826af038ae6cf388457cec8a9</anchor>
      <arglist>(const float &amp;i_scalar) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Mat3f &amp;</type>
      <name>operator/=</name>
      <anchorfile>classMat3f.html</anchorfile>
      <anchor>a5fc69f030b7ff9d13afd8d6969ea0ce4</anchor>
      <arglist>(const float &amp;i_scalar)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Mat3f</type>
      <name>operator-</name>
      <anchorfile>classMat3f.html</anchorfile>
      <anchor>aede00a1903e2060d6782f6061663949d</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE const float &amp;</type>
      <name>operator()</name>
      <anchorfile>classMat3f.html</anchorfile>
      <anchor>a65b2c60894ac10b266c5ca13ee7f67c4</anchor>
      <arglist>(size_t i_row, size_t i_column) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE float &amp;</type>
      <name>operator()</name>
      <anchorfile>classMat3f.html</anchorfile>
      <anchor>a5b3dcb1e186b2586e0d323b5f6dc374d</anchor>
      <arglist>(size_t i_row, size_t i_column)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE bool</type>
      <name>operator==</name>
      <anchorfile>classMat3f.html</anchorfile>
      <anchor>afe97062349df5c58de441ffd8e21f910</anchor>
      <arglist>(const Mat3f &amp;i_vector) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE bool</type>
      <name>operator!=</name>
      <anchorfile>classMat3f.html</anchorfile>
      <anchor>a7f206087be32b28568a4a699716ee74c</anchor>
      <arglist>(const Mat3f &amp;i_vector) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE bool</type>
      <name>HasNans</name>
      <anchorfile>classMat3f.html</anchorfile>
      <anchor>a97148b60921c1f65f4e7831fa5f81c01</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>GetString</name>
      <anchorfile>classMat3f.html</anchorfile>
      <anchor>a82c25011aa02f195761be185844da0ca</anchor>
      <arglist>(const std::string &amp;i_classPrefix=std::string()) const</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static GM_HOST_DEVICE size_t</type>
      <name>GetElementSize</name>
      <anchorfile>classMat3f.html</anchorfile>
      <anchor>a5d8184989655dee3a3081b2c4699e830</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Mat4f</name>
    <filename>classMat4f.html</filename>
    <member kind="typedef">
      <type>float</type>
      <name>ElementType</name>
      <anchorfile>classMat4f.html</anchorfile>
      <anchor>a2df6a9041df7b1984c7174b5085a4a44</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Mat4f</name>
      <anchorfile>classMat4f.html</anchorfile>
      <anchor>a101eba687735f65d6dfff37e830f4b45</anchor>
      <arglist>()=default</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Mat4f</name>
      <anchorfile>classMat4f.html</anchorfile>
      <anchor>a22be3c9f6677a1af92acd34ed88e4797</anchor>
      <arglist>()=default</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Mat4f</name>
      <anchorfile>classMat4f.html</anchorfile>
      <anchor>a02a2bddadf9aa6bc9289f7476d0e893b</anchor>
      <arglist>(const float &amp;i_element0, const float &amp;i_element1, const float &amp;i_element2, const float &amp;i_element3, const float &amp;i_element4, const float &amp;i_element5, const float &amp;i_element6, const float &amp;i_element7, const float &amp;i_element8, const float &amp;i_element9, const float &amp;i_element10, const float &amp;i_element11, const float &amp;i_element12, const float &amp;i_element13, const float &amp;i_element14, const float &amp;i_element15)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE float &amp;</type>
      <name>operator[]</name>
      <anchorfile>classMat4f.html</anchorfile>
      <anchor>a5ff9436d9f2465675a6760b3855cdbea</anchor>
      <arglist>(size_t i_index)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE const float &amp;</type>
      <name>operator[]</name>
      <anchorfile>classMat4f.html</anchorfile>
      <anchor>a4d0530bbc76089c8616cf196fc6550b6</anchor>
      <arglist>(size_t i_index) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Mat4f</type>
      <name>operator+</name>
      <anchorfile>classMat4f.html</anchorfile>
      <anchor>a78b2288ea52edca25c40c2491472b570</anchor>
      <arglist>(const Mat4f &amp;i_vector) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Mat4f &amp;</type>
      <name>operator+=</name>
      <anchorfile>classMat4f.html</anchorfile>
      <anchor>abaad84e91b55b29b0da6dffc8527a198</anchor>
      <arglist>(const Mat4f &amp;i_vector)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Mat4f</type>
      <name>operator-</name>
      <anchorfile>classMat4f.html</anchorfile>
      <anchor>a6f7897c4b1c0a82edba59294a153b19d</anchor>
      <arglist>(const Mat4f &amp;i_vector) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Mat4f &amp;</type>
      <name>operator-=</name>
      <anchorfile>classMat4f.html</anchorfile>
      <anchor>a52cb9790bec1eb96a539e7e97f42d362</anchor>
      <arglist>(const Mat4f &amp;i_vector)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Mat4f &amp;</type>
      <name>operator*=</name>
      <anchorfile>classMat4f.html</anchorfile>
      <anchor>a4404ae2e98195568541ca3d94b3badc8</anchor>
      <arglist>(const float &amp;i_scalar)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Mat4f</type>
      <name>operator/</name>
      <anchorfile>classMat4f.html</anchorfile>
      <anchor>a5b924dd388f40b3003e679b240c790ca</anchor>
      <arglist>(const float &amp;i_scalar) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Mat4f &amp;</type>
      <name>operator/=</name>
      <anchorfile>classMat4f.html</anchorfile>
      <anchor>add01217ec6cd267d50bb01adf9bebe39</anchor>
      <arglist>(const float &amp;i_scalar)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Mat4f</type>
      <name>operator-</name>
      <anchorfile>classMat4f.html</anchorfile>
      <anchor>a77cb32f23cf714606949b982595f14f1</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE const float &amp;</type>
      <name>operator()</name>
      <anchorfile>classMat4f.html</anchorfile>
      <anchor>abff776fc77a9779638db51a49df8093a</anchor>
      <arglist>(size_t i_row, size_t i_column) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE float &amp;</type>
      <name>operator()</name>
      <anchorfile>classMat4f.html</anchorfile>
      <anchor>a885349ae8b753178592f42218f06fb02</anchor>
      <arglist>(size_t i_row, size_t i_column)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE bool</type>
      <name>operator==</name>
      <anchorfile>classMat4f.html</anchorfile>
      <anchor>abae11babbe1376666c4c7659ae86dc36</anchor>
      <arglist>(const Mat4f &amp;i_vector) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE bool</type>
      <name>operator!=</name>
      <anchorfile>classMat4f.html</anchorfile>
      <anchor>a1e05923b12c41f4b2813ba578d27175a</anchor>
      <arglist>(const Mat4f &amp;i_vector) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE bool</type>
      <name>HasNans</name>
      <anchorfile>classMat4f.html</anchorfile>
      <anchor>ac10de218d63920c43f8c53a4ad7f14e0</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>GetString</name>
      <anchorfile>classMat4f.html</anchorfile>
      <anchor>a1080edb5f18195fbf584b8db2e803c89</anchor>
      <arglist>(const std::string &amp;i_classPrefix=std::string()) const</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static GM_HOST_DEVICE size_t</type>
      <name>GetElementSize</name>
      <anchorfile>classMat4f.html</anchorfile>
      <anchor>a4cb5855d0c6805cc08c6ceb634202a3b</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Vec2f</name>
    <filename>classVec2f.html</filename>
    <member kind="typedef">
      <type>float</type>
      <name>ElementType</name>
      <anchorfile>classVec2f.html</anchorfile>
      <anchor>a9d0c490a2078a79a85f4a051887084f5</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Vec2f</name>
      <anchorfile>classVec2f.html</anchorfile>
      <anchor>a9ff626df5f5d34a5a91f2c18e9fe59c8</anchor>
      <arglist>()=default</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Vec2f</name>
      <anchorfile>classVec2f.html</anchorfile>
      <anchor>a72ba514d5e8fb9605332634ef791ba53</anchor>
      <arglist>()=default</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Vec2f</name>
      <anchorfile>classVec2f.html</anchorfile>
      <anchor>aac7e88df3e79ad208f8dcace60031bc6</anchor>
      <arglist>(const float &amp;i_element0, const float &amp;i_element1)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE float &amp;</type>
      <name>operator[]</name>
      <anchorfile>classVec2f.html</anchorfile>
      <anchor>a37059a91411b569dbe1c162821f0015b</anchor>
      <arglist>(size_t i_index)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE const float &amp;</type>
      <name>operator[]</name>
      <anchorfile>classVec2f.html</anchorfile>
      <anchor>a930daa8c1cf09c21b8a491d2a680c6dd</anchor>
      <arglist>(size_t i_index) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec2f</type>
      <name>operator+</name>
      <anchorfile>classVec2f.html</anchorfile>
      <anchor>aa565fe6421a39d5556c9a9f495578cfd</anchor>
      <arglist>(const Vec2f &amp;i_vector) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec2f &amp;</type>
      <name>operator+=</name>
      <anchorfile>classVec2f.html</anchorfile>
      <anchor>a66a685c0480e4a1f9b87805856825da7</anchor>
      <arglist>(const Vec2f &amp;i_vector)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec2f</type>
      <name>operator-</name>
      <anchorfile>classVec2f.html</anchorfile>
      <anchor>a49c862e286000f5028fa3e1e3db7196d</anchor>
      <arglist>(const Vec2f &amp;i_vector) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec2f &amp;</type>
      <name>operator-=</name>
      <anchorfile>classVec2f.html</anchorfile>
      <anchor>a45ec26dfc3f37192bb8f4b0e0e3044de</anchor>
      <arglist>(const Vec2f &amp;i_vector)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec2f &amp;</type>
      <name>operator*=</name>
      <anchorfile>classVec2f.html</anchorfile>
      <anchor>a5b835ffd8c04707e8cf4d9899164bd25</anchor>
      <arglist>(const float &amp;i_scalar)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec2f</type>
      <name>operator/</name>
      <anchorfile>classVec2f.html</anchorfile>
      <anchor>a2f2adef00256ed77a1f70869774153dc</anchor>
      <arglist>(const float &amp;i_scalar) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec2f &amp;</type>
      <name>operator/=</name>
      <anchorfile>classVec2f.html</anchorfile>
      <anchor>a0c1087ecdc2ee5b8b5267945a1d519cd</anchor>
      <arglist>(const float &amp;i_scalar)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec2f</type>
      <name>operator-</name>
      <anchorfile>classVec2f.html</anchorfile>
      <anchor>a8c84c504fcd877689c0bdebd53799ddb</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE float</type>
      <name>X</name>
      <anchorfile>classVec2f.html</anchorfile>
      <anchor>a239c72129efe9c9d0f03cb0f25d4cd1f</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE float</type>
      <name>Y</name>
      <anchorfile>classVec2f.html</anchorfile>
      <anchor>ad008f9285c7723c8c62d7f5fa461b5fc</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE bool</type>
      <name>operator==</name>
      <anchorfile>classVec2f.html</anchorfile>
      <anchor>a3486c79bb9c0a5dd9138d62cc3661f0b</anchor>
      <arglist>(const Vec2f &amp;i_vector) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE bool</type>
      <name>operator!=</name>
      <anchorfile>classVec2f.html</anchorfile>
      <anchor>aee82ab6ea8aa8d2e7f16506ab0b4dd70</anchor>
      <arglist>(const Vec2f &amp;i_vector) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE bool</type>
      <name>HasNans</name>
      <anchorfile>classVec2f.html</anchorfile>
      <anchor>a7c8dd757f610aea8e948cbbc5858da7e</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>GetString</name>
      <anchorfile>classVec2f.html</anchorfile>
      <anchor>a489584d9154dffbb9167af698093b171</anchor>
      <arglist>(const std::string &amp;i_classPrefix=std::string()) const</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static GM_HOST_DEVICE size_t</type>
      <name>GetElementSize</name>
      <anchorfile>classVec2f.html</anchorfile>
      <anchor>acaec180a7e4b9c10829ecc40274d9dd0</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Vec2i</name>
    <filename>classVec2i.html</filename>
    <member kind="typedef">
      <type>int</type>
      <name>ElementType</name>
      <anchorfile>classVec2i.html</anchorfile>
      <anchor>addc075451cbc061d9600b881e7193374</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Vec2i</name>
      <anchorfile>classVec2i.html</anchorfile>
      <anchor>acebb61e41c778f1fd0a983d15cceaa32</anchor>
      <arglist>()=default</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Vec2i</name>
      <anchorfile>classVec2i.html</anchorfile>
      <anchor>a6ac0ebbf4e01b1f8956d5cdee2db75c0</anchor>
      <arglist>()=default</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Vec2i</name>
      <anchorfile>classVec2i.html</anchorfile>
      <anchor>a109e4363849e5e655b33228c2bec69c4</anchor>
      <arglist>(const int &amp;i_element0, const int &amp;i_element1)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE int &amp;</type>
      <name>operator[]</name>
      <anchorfile>classVec2i.html</anchorfile>
      <anchor>a5d94b1bdba97ad1f73b434b33341e82d</anchor>
      <arglist>(size_t i_index)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE const int &amp;</type>
      <name>operator[]</name>
      <anchorfile>classVec2i.html</anchorfile>
      <anchor>a1b7151cdfc1533d6f543747cf8c8ee34</anchor>
      <arglist>(size_t i_index) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec2i</type>
      <name>operator+</name>
      <anchorfile>classVec2i.html</anchorfile>
      <anchor>af6880e8c9f989a3decc7408b68a278b4</anchor>
      <arglist>(const Vec2i &amp;i_vector) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec2i &amp;</type>
      <name>operator+=</name>
      <anchorfile>classVec2i.html</anchorfile>
      <anchor>a1086334d27a1c2ae16388fd40c2311b8</anchor>
      <arglist>(const Vec2i &amp;i_vector)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec2i</type>
      <name>operator-</name>
      <anchorfile>classVec2i.html</anchorfile>
      <anchor>a65ced623b58c1848ffb5387fd4e80c16</anchor>
      <arglist>(const Vec2i &amp;i_vector) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec2i &amp;</type>
      <name>operator-=</name>
      <anchorfile>classVec2i.html</anchorfile>
      <anchor>a1740420b160c79eb69fbc05f1738a89e</anchor>
      <arglist>(const Vec2i &amp;i_vector)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec2i &amp;</type>
      <name>operator*=</name>
      <anchorfile>classVec2i.html</anchorfile>
      <anchor>a7e507333a798f77674fa8f741a3ed0ba</anchor>
      <arglist>(const int &amp;i_scalar)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec2i</type>
      <name>operator/</name>
      <anchorfile>classVec2i.html</anchorfile>
      <anchor>a7b6370f0123e35026cb1c7ab5629beb2</anchor>
      <arglist>(const int &amp;i_scalar) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec2i &amp;</type>
      <name>operator/=</name>
      <anchorfile>classVec2i.html</anchorfile>
      <anchor>a522920032cd2f6841c8cbfa4fe895705</anchor>
      <arglist>(const int &amp;i_scalar)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec2i</type>
      <name>operator-</name>
      <anchorfile>classVec2i.html</anchorfile>
      <anchor>a597f40f78fdb9c450f7c8d65e309f156</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE int</type>
      <name>X</name>
      <anchorfile>classVec2i.html</anchorfile>
      <anchor>a540d739b409834f1371e7822db8173e4</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE int</type>
      <name>Y</name>
      <anchorfile>classVec2i.html</anchorfile>
      <anchor>a09dd65f63771b2b363f0f456f408936d</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE bool</type>
      <name>operator==</name>
      <anchorfile>classVec2i.html</anchorfile>
      <anchor>a9453b136b2913b2e1c955397d9c4d20f</anchor>
      <arglist>(const Vec2i &amp;i_vector) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE bool</type>
      <name>operator!=</name>
      <anchorfile>classVec2i.html</anchorfile>
      <anchor>a4e53869356b7bc8876d2776b4fd03d12</anchor>
      <arglist>(const Vec2i &amp;i_vector) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE bool</type>
      <name>HasNans</name>
      <anchorfile>classVec2i.html</anchorfile>
      <anchor>a03094d4b38627729e88f6c13935d582f</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>GetString</name>
      <anchorfile>classVec2i.html</anchorfile>
      <anchor>a4338ab680b94c06328dbeca776b308cc</anchor>
      <arglist>(const std::string &amp;i_classPrefix=std::string()) const</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static GM_HOST_DEVICE size_t</type>
      <name>GetElementSize</name>
      <anchorfile>classVec2i.html</anchorfile>
      <anchor>a314c8642effd984713dc54bf7e7c8c95</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Vec2iRange</name>
    <filename>classVec2iRange.html</filename>
    <class kind="class">Vec2iRange::iterator</class>
    <member kind="function">
      <type></type>
      <name>Vec2iRange</name>
      <anchorfile>classVec2iRange.html</anchorfile>
      <anchor>a2f49e98d4f81116e156ba0b18d047a3e</anchor>
      <arglist>(const Vec2i &amp;i_begin, const Vec2i &amp;i_end)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Vec3f</name>
    <filename>classVec3f.html</filename>
    <member kind="typedef">
      <type>float</type>
      <name>ElementType</name>
      <anchorfile>classVec3f.html</anchorfile>
      <anchor>a8d5cbc5e20fd142970938acc500d3dcf</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Vec3f</name>
      <anchorfile>classVec3f.html</anchorfile>
      <anchor>a741bafecff0f8c653a6f6b4e3b54b128</anchor>
      <arglist>()=default</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Vec3f</name>
      <anchorfile>classVec3f.html</anchorfile>
      <anchor>a3a623aa7cc529c84311c5d2d8c56a78f</anchor>
      <arglist>()=default</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Vec3f</name>
      <anchorfile>classVec3f.html</anchorfile>
      <anchor>aeea70629fd6048bb5e19eacebdd7da8e</anchor>
      <arglist>(const float &amp;i_element0, const float &amp;i_element1, const float &amp;i_element2)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE float &amp;</type>
      <name>operator[]</name>
      <anchorfile>classVec3f.html</anchorfile>
      <anchor>a762608d3d6877de3276ccb9b671659a3</anchor>
      <arglist>(size_t i_index)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE const float &amp;</type>
      <name>operator[]</name>
      <anchorfile>classVec3f.html</anchorfile>
      <anchor>ac921c77c8c05afa8333ce3907b44db34</anchor>
      <arglist>(size_t i_index) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec3f</type>
      <name>operator+</name>
      <anchorfile>classVec3f.html</anchorfile>
      <anchor>ac289d5f3855941c3c09bdc13daa69b5a</anchor>
      <arglist>(const Vec3f &amp;i_vector) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec3f &amp;</type>
      <name>operator+=</name>
      <anchorfile>classVec3f.html</anchorfile>
      <anchor>a7c23c3fd996e2f530c3d77115212daa0</anchor>
      <arglist>(const Vec3f &amp;i_vector)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec3f</type>
      <name>operator-</name>
      <anchorfile>classVec3f.html</anchorfile>
      <anchor>afe014b41812987b47497756cd72370fb</anchor>
      <arglist>(const Vec3f &amp;i_vector) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec3f &amp;</type>
      <name>operator-=</name>
      <anchorfile>classVec3f.html</anchorfile>
      <anchor>a74dfb2c83fac0a673e8da23d1eeda17f</anchor>
      <arglist>(const Vec3f &amp;i_vector)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec3f &amp;</type>
      <name>operator*=</name>
      <anchorfile>classVec3f.html</anchorfile>
      <anchor>a5620ce5b2158d568ba088f93fa1735d7</anchor>
      <arglist>(const float &amp;i_scalar)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec3f</type>
      <name>operator/</name>
      <anchorfile>classVec3f.html</anchorfile>
      <anchor>a00fe0c6fa9616f3700e5b76e219c5196</anchor>
      <arglist>(const float &amp;i_scalar) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec3f &amp;</type>
      <name>operator/=</name>
      <anchorfile>classVec3f.html</anchorfile>
      <anchor>a2169ec81e99896c64e9f96ff2445186c</anchor>
      <arglist>(const float &amp;i_scalar)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec3f</type>
      <name>operator-</name>
      <anchorfile>classVec3f.html</anchorfile>
      <anchor>af574e85f970ff6112fc77008b4ba1e9e</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE float</type>
      <name>X</name>
      <anchorfile>classVec3f.html</anchorfile>
      <anchor>ad9c547026b0a0c194a7559a7e8827861</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE float</type>
      <name>Y</name>
      <anchorfile>classVec3f.html</anchorfile>
      <anchor>a26493e2dd1c8dc96a231078dac7e2c97</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE float</type>
      <name>Z</name>
      <anchorfile>classVec3f.html</anchorfile>
      <anchor>aeb1d1eefdf2524136418e8a8070d83aa</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE bool</type>
      <name>operator==</name>
      <anchorfile>classVec3f.html</anchorfile>
      <anchor>a4b3128acee0f66d75de05eb134e1642b</anchor>
      <arglist>(const Vec3f &amp;i_vector) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE bool</type>
      <name>operator!=</name>
      <anchorfile>classVec3f.html</anchorfile>
      <anchor>a5ec067c367e48efeb2969fd312726306</anchor>
      <arglist>(const Vec3f &amp;i_vector) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE bool</type>
      <name>HasNans</name>
      <anchorfile>classVec3f.html</anchorfile>
      <anchor>af0daeda1abe4076054abd84850722b5d</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>GetString</name>
      <anchorfile>classVec3f.html</anchorfile>
      <anchor>a00aa73bb64a45c45132c785d201cd001</anchor>
      <arglist>(const std::string &amp;i_classPrefix=std::string()) const</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static GM_HOST_DEVICE size_t</type>
      <name>GetElementSize</name>
      <anchorfile>classVec3f.html</anchorfile>
      <anchor>a1b968de8230c42a00f0bf1ce0c860832</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Vec3i</name>
    <filename>classVec3i.html</filename>
    <member kind="typedef">
      <type>int</type>
      <name>ElementType</name>
      <anchorfile>classVec3i.html</anchorfile>
      <anchor>a98764738525221e658d016b21ce8820e</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Vec3i</name>
      <anchorfile>classVec3i.html</anchorfile>
      <anchor>a82d1865c6dcf34d02eca8e039b364051</anchor>
      <arglist>()=default</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Vec3i</name>
      <anchorfile>classVec3i.html</anchorfile>
      <anchor>ace5cd633130d79be9df622b8145ee551</anchor>
      <arglist>()=default</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Vec3i</name>
      <anchorfile>classVec3i.html</anchorfile>
      <anchor>af76034ac121b5da3386abb729e49f612</anchor>
      <arglist>(const int &amp;i_element0, const int &amp;i_element1, const int &amp;i_element2)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE int &amp;</type>
      <name>operator[]</name>
      <anchorfile>classVec3i.html</anchorfile>
      <anchor>a03601ce708882e68ce8b008f3d2c2510</anchor>
      <arglist>(size_t i_index)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE const int &amp;</type>
      <name>operator[]</name>
      <anchorfile>classVec3i.html</anchorfile>
      <anchor>a706912e89fc10fee9ab82601a178261a</anchor>
      <arglist>(size_t i_index) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec3i</type>
      <name>operator+</name>
      <anchorfile>classVec3i.html</anchorfile>
      <anchor>adfdfef37d60d51086dae3fb243ae8a8f</anchor>
      <arglist>(const Vec3i &amp;i_vector) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec3i &amp;</type>
      <name>operator+=</name>
      <anchorfile>classVec3i.html</anchorfile>
      <anchor>a9d0d58bcfa040b9870675597ad8a3bc0</anchor>
      <arglist>(const Vec3i &amp;i_vector)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec3i</type>
      <name>operator-</name>
      <anchorfile>classVec3i.html</anchorfile>
      <anchor>a87329093c887bc990b8edd50858f66b7</anchor>
      <arglist>(const Vec3i &amp;i_vector) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec3i &amp;</type>
      <name>operator-=</name>
      <anchorfile>classVec3i.html</anchorfile>
      <anchor>a671c79a14fdeb016334a607b1bc0deb9</anchor>
      <arglist>(const Vec3i &amp;i_vector)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec3i &amp;</type>
      <name>operator*=</name>
      <anchorfile>classVec3i.html</anchorfile>
      <anchor>a4efd2b1c2da7c1e6bfc96c8b59884ceb</anchor>
      <arglist>(const int &amp;i_scalar)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec3i</type>
      <name>operator/</name>
      <anchorfile>classVec3i.html</anchorfile>
      <anchor>ac82100e7ffe051684f22e8a728924e90</anchor>
      <arglist>(const int &amp;i_scalar) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec3i &amp;</type>
      <name>operator/=</name>
      <anchorfile>classVec3i.html</anchorfile>
      <anchor>a5f4449560668eacbfd1a712cec51226c</anchor>
      <arglist>(const int &amp;i_scalar)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec3i</type>
      <name>operator-</name>
      <anchorfile>classVec3i.html</anchorfile>
      <anchor>ab3d2c6cc66b9fb627dff4d200c1c176e</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE int</type>
      <name>X</name>
      <anchorfile>classVec3i.html</anchorfile>
      <anchor>ac2e03018fdef10c285c998dede89fdcc</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE int</type>
      <name>Y</name>
      <anchorfile>classVec3i.html</anchorfile>
      <anchor>aae0bc88226b8ca49f579a52c18dc1be8</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE int</type>
      <name>Z</name>
      <anchorfile>classVec3i.html</anchorfile>
      <anchor>a0efb0583e39c7588cf4bcdfa5c32d327</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE bool</type>
      <name>operator==</name>
      <anchorfile>classVec3i.html</anchorfile>
      <anchor>ad2a0dfde68829c836969333325769a70</anchor>
      <arglist>(const Vec3i &amp;i_vector) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE bool</type>
      <name>operator!=</name>
      <anchorfile>classVec3i.html</anchorfile>
      <anchor>ac6f15af3e669a2bca8ffdcb7b0c86cca</anchor>
      <arglist>(const Vec3i &amp;i_vector) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE bool</type>
      <name>HasNans</name>
      <anchorfile>classVec3i.html</anchorfile>
      <anchor>aa9012c5b72a9c66dfcdd8184f7e9a449</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>GetString</name>
      <anchorfile>classVec3i.html</anchorfile>
      <anchor>af261a016fa9df0f8dab63705f8f94696</anchor>
      <arglist>(const std::string &amp;i_classPrefix=std::string()) const</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static GM_HOST_DEVICE size_t</type>
      <name>GetElementSize</name>
      <anchorfile>classVec3i.html</anchorfile>
      <anchor>aa1aa11d8abf1358a37b140b217779f39</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Vec4f</name>
    <filename>classVec4f.html</filename>
    <member kind="typedef">
      <type>float</type>
      <name>ElementType</name>
      <anchorfile>classVec4f.html</anchorfile>
      <anchor>abe98aa54d6dec5c5c56b1727d011bef1</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Vec4f</name>
      <anchorfile>classVec4f.html</anchorfile>
      <anchor>a4e37fa794f10a93eeedc07d6d90ece27</anchor>
      <arglist>()=default</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Vec4f</name>
      <anchorfile>classVec4f.html</anchorfile>
      <anchor>ade15e81b1ec0c7abbb47a4d29af660df</anchor>
      <arglist>()=default</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Vec4f</name>
      <anchorfile>classVec4f.html</anchorfile>
      <anchor>ae20b3dc1d83ed54e76ebe66fcc7a2b46</anchor>
      <arglist>(const float &amp;i_element0, const float &amp;i_element1, const float &amp;i_element2, const float &amp;i_element3)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE float &amp;</type>
      <name>operator[]</name>
      <anchorfile>classVec4f.html</anchorfile>
      <anchor>a3805c19b33907778c3a5eb874cdc30de</anchor>
      <arglist>(size_t i_index)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE const float &amp;</type>
      <name>operator[]</name>
      <anchorfile>classVec4f.html</anchorfile>
      <anchor>af7046f1d954c626724e03752d6e88766</anchor>
      <arglist>(size_t i_index) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec4f</type>
      <name>operator+</name>
      <anchorfile>classVec4f.html</anchorfile>
      <anchor>ac54ebf6fd49fbf106398671d2bc0409f</anchor>
      <arglist>(const Vec4f &amp;i_vector) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec4f &amp;</type>
      <name>operator+=</name>
      <anchorfile>classVec4f.html</anchorfile>
      <anchor>a635833eb000140cd4fa8cf16a3dae4db</anchor>
      <arglist>(const Vec4f &amp;i_vector)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec4f</type>
      <name>operator-</name>
      <anchorfile>classVec4f.html</anchorfile>
      <anchor>a1fcf1bfad08a45e9d083bc565563e8d4</anchor>
      <arglist>(const Vec4f &amp;i_vector) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec4f &amp;</type>
      <name>operator-=</name>
      <anchorfile>classVec4f.html</anchorfile>
      <anchor>af67a5f60d0e3e9852aca33ad4e3d2bfa</anchor>
      <arglist>(const Vec4f &amp;i_vector)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec4f &amp;</type>
      <name>operator*=</name>
      <anchorfile>classVec4f.html</anchorfile>
      <anchor>a9999b848ec0b73059fb1fa1072c13aa3</anchor>
      <arglist>(const float &amp;i_scalar)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec4f</type>
      <name>operator/</name>
      <anchorfile>classVec4f.html</anchorfile>
      <anchor>a99e37677ae5530a6736f3f17e370f5cd</anchor>
      <arglist>(const float &amp;i_scalar) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec4f &amp;</type>
      <name>operator/=</name>
      <anchorfile>classVec4f.html</anchorfile>
      <anchor>a821b79a24ca437f4f99f75b24970a10d</anchor>
      <arglist>(const float &amp;i_scalar)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec4f</type>
      <name>operator-</name>
      <anchorfile>classVec4f.html</anchorfile>
      <anchor>a20fe5244e715393f0564b2fffd8d2180</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE float</type>
      <name>X</name>
      <anchorfile>classVec4f.html</anchorfile>
      <anchor>a52723463e99e7220a90a983dd8daf817</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE float</type>
      <name>Y</name>
      <anchorfile>classVec4f.html</anchorfile>
      <anchor>a7db1b03fee158f9bfce3d6acdeffc572</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE float</type>
      <name>Z</name>
      <anchorfile>classVec4f.html</anchorfile>
      <anchor>a3133835886cfdf1758bbfb82fb5dc85f</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE float</type>
      <name>W</name>
      <anchorfile>classVec4f.html</anchorfile>
      <anchor>aae40738c0baa008c36a13307fb2780a7</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE bool</type>
      <name>operator==</name>
      <anchorfile>classVec4f.html</anchorfile>
      <anchor>a2366dfd5c59b6fca810b7c35a4c46d7e</anchor>
      <arglist>(const Vec4f &amp;i_vector) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE bool</type>
      <name>operator!=</name>
      <anchorfile>classVec4f.html</anchorfile>
      <anchor>aa0e234d715a8dcba22a12a790356ca2a</anchor>
      <arglist>(const Vec4f &amp;i_vector) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE bool</type>
      <name>HasNans</name>
      <anchorfile>classVec4f.html</anchorfile>
      <anchor>a1a73d320466f21200acdcdaf59b2f61e</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>GetString</name>
      <anchorfile>classVec4f.html</anchorfile>
      <anchor>a026c3ef3963e602218d01cb5d098598b</anchor>
      <arglist>(const std::string &amp;i_classPrefix=std::string()) const</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static GM_HOST_DEVICE size_t</type>
      <name>GetElementSize</name>
      <anchorfile>classVec4f.html</anchorfile>
      <anchor>ac181c15178df508239c3c2f5cb8b767e</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Vec4i</name>
    <filename>classVec4i.html</filename>
    <member kind="typedef">
      <type>int</type>
      <name>ElementType</name>
      <anchorfile>classVec4i.html</anchorfile>
      <anchor>a89cd4a8df59d1d1b8539390971ed6d2a</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Vec4i</name>
      <anchorfile>classVec4i.html</anchorfile>
      <anchor>a42d525ebf94a7ec4688f15d66a50ee35</anchor>
      <arglist>()=default</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Vec4i</name>
      <anchorfile>classVec4i.html</anchorfile>
      <anchor>a7da38a1512e2acfe264b3fa7c3d298dd</anchor>
      <arglist>()=default</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Vec4i</name>
      <anchorfile>classVec4i.html</anchorfile>
      <anchor>a8fdeaff18206420776a0b77b487061fd</anchor>
      <arglist>(const int &amp;i_element0, const int &amp;i_element1, const int &amp;i_element2, const int &amp;i_element3)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE int &amp;</type>
      <name>operator[]</name>
      <anchorfile>classVec4i.html</anchorfile>
      <anchor>a9ba1bb1e078b92a8946b84199d498b26</anchor>
      <arglist>(size_t i_index)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE const int &amp;</type>
      <name>operator[]</name>
      <anchorfile>classVec4i.html</anchorfile>
      <anchor>aa9ad976cc7a06788668635771a6247ee</anchor>
      <arglist>(size_t i_index) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec4i</type>
      <name>operator+</name>
      <anchorfile>classVec4i.html</anchorfile>
      <anchor>a67c8eabdf2ac87162336b5f5d6020bf2</anchor>
      <arglist>(const Vec4i &amp;i_vector) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec4i &amp;</type>
      <name>operator+=</name>
      <anchorfile>classVec4i.html</anchorfile>
      <anchor>aa435e46c0451c2f439b8d0a0800821e2</anchor>
      <arglist>(const Vec4i &amp;i_vector)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec4i</type>
      <name>operator-</name>
      <anchorfile>classVec4i.html</anchorfile>
      <anchor>ad5885c4291b379bb9a699f3480782a54</anchor>
      <arglist>(const Vec4i &amp;i_vector) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec4i &amp;</type>
      <name>operator-=</name>
      <anchorfile>classVec4i.html</anchorfile>
      <anchor>a4d59d5a0dcdc38022fed02377677a286</anchor>
      <arglist>(const Vec4i &amp;i_vector)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec4i &amp;</type>
      <name>operator*=</name>
      <anchorfile>classVec4i.html</anchorfile>
      <anchor>a09b5e723a30350cde377cc5c02d08ffe</anchor>
      <arglist>(const int &amp;i_scalar)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec4i</type>
      <name>operator/</name>
      <anchorfile>classVec4i.html</anchorfile>
      <anchor>a10ad725c009f9e6aa89375884a1585f2</anchor>
      <arglist>(const int &amp;i_scalar) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec4i &amp;</type>
      <name>operator/=</name>
      <anchorfile>classVec4i.html</anchorfile>
      <anchor>af487bb33b4b5dde11172822e4576aed9</anchor>
      <arglist>(const int &amp;i_scalar)</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE Vec4i</type>
      <name>operator-</name>
      <anchorfile>classVec4i.html</anchorfile>
      <anchor>af9426d8bdef9d7084a2b9f915624656b</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE int</type>
      <name>X</name>
      <anchorfile>classVec4i.html</anchorfile>
      <anchor>a32525356e16354827c4cd8e44cadfebe</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE int</type>
      <name>Y</name>
      <anchorfile>classVec4i.html</anchorfile>
      <anchor>a6ce21deb43a40988db0a797d882118b0</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE int</type>
      <name>Z</name>
      <anchorfile>classVec4i.html</anchorfile>
      <anchor>aad2229ba78cde8bec91e1a7883aae5bd</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE int</type>
      <name>W</name>
      <anchorfile>classVec4i.html</anchorfile>
      <anchor>aa23eb8a9942210759d0a615a402174ee</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE bool</type>
      <name>operator==</name>
      <anchorfile>classVec4i.html</anchorfile>
      <anchor>ae8512e618b10176fe514a2277bd85278</anchor>
      <arglist>(const Vec4i &amp;i_vector) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE bool</type>
      <name>operator!=</name>
      <anchorfile>classVec4i.html</anchorfile>
      <anchor>ac7ce94546221b1dcda6fa62d06f4bab6</anchor>
      <arglist>(const Vec4i &amp;i_vector) const</arglist>
    </member>
    <member kind="function">
      <type>GM_HOST_DEVICE bool</type>
      <name>HasNans</name>
      <anchorfile>classVec4i.html</anchorfile>
      <anchor>adaadb881c26b884bc2c95bf0af13fb8b</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>GetString</name>
      <anchorfile>classVec4i.html</anchorfile>
      <anchor>a72636aabd65474df7d5bb70552f8f5e7</anchor>
      <arglist>(const std::string &amp;i_classPrefix=std::string()) const</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static GM_HOST_DEVICE size_t</type>
      <name>GetElementSize</name>
      <anchorfile>classVec4i.html</anchorfile>
      <anchor>aedb7931a7dd0818ec40f763a1fe51c12</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="page">
    <name>index</name>
    <title>GraphicsMath</title>
    <filename>index</filename>
    <docanchor file="index" title="Introduction">GM_Introduction</docanchor>
    <docanchor file="index" title="Building">GM_Building</docanchor>
    <docanchor file="index" title="Building Python Bindings">GM_Building_PythonBindings</docanchor>
    <docanchor file="index" title="Including in CUDA Device Code">GM_Building_CUDADeviceCode</docanchor>
    <docanchor file="index" title="Developer Notes">GM_DeveloperNotes</docanchor>
    <docanchor file="index" title="Source Tree">GM_DeveloperNotes_SourceTree</docanchor>
    <docanchor file="index" title="Code Generation">GM_DeveloperNotes_CodeGeneration</docanchor>
    <docanchor file="index" title="Motivation">GM_DeveloperNotes_Motivation</docanchor>
    <docanchor file="index" title="GitHub Repository">GM_GitHubHosted</docanchor>
  </compound>
</tagfile>
