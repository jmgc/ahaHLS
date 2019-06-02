#include "gen_classes.h"

void vhls_target(
hls_stream_AxiPackedStencil_uint16_t_1_1__ &arg_0,
hls_stream_AxiPackedStencil_uint16_t_1_1__ &arg_1)
{

 linebuffer_hls_stream_AxiPackedStencil_uint16_t_1_1___to_hls_stream_PackedStencil_uint16_t_1_2___bnds_8_8 lb;

 hls_stream_PackedStencil_uint16_t_1_2__ stream_to_conv;
 
 for (int i = 0; i < 8*8; i++) {
   lb.lb_write(arg_0.read());
 }

 for (int i = 0; i < 8*7; i++) {
   while (!lb.has_valid_data()) {}
   stream_to_conv.write(lb.lb_read());
 }
 
 for (int i = 0; i < 8*7; i++) {
   PackedStencil_uint16_t_1_2_ in_stencil = stream_to_conv.read();
   uint16_t a = in_stencil.get(0, 0);
   uint16_t b = in_stencil.get(0, 1);
   uint16_t res = a + b;

   Stencil_uint16_t_1_1_ output;
   output.set(res, 0, 0);
   arg_1.write(output);
 }
}


