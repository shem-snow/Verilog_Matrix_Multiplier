
// Generated by Cadence Genus(TM) Synthesis Solution 21.15-s080_1
// Generated on: Nov 14 2024 11:13:22 MST (Nov 14 2024 18:13:22 UTC)

// Verification Directory fv/Matrix_Multiplier 

module icebreaker(matrix_A, matrix_B, clock, start, reset,
     matrix_result, matrix_count);
  input [11:0] matrix_A, matrix_B;
  input clock, start, reset;
  output [23:0] matrix_result;
  output [3:0] matrix_count;
  wire [11:0] matrix_A, matrix_B;
  wire clock, start, reset;
  wire [23:0] matrix_result;
  wire [3:0] matrix_count;
  wire [47:0] regfile_contents;
  wire [2:0] element_A;
  wire [2:0] element_B;
  wire [1:0] fsm_current_state;
  wire [3:0] AB_entries;
  wire n_0, n_1, n_2, n_3, n_4, n_5, n_6, n_7;
  wire n_8, n_9, n_10, n_11, n_12, n_13, n_14, n_15;
  wire n_16, n_17, n_18, n_19, n_20, n_21, n_22, n_23;
  wire n_24, n_25, n_26, n_27, n_28, n_29, n_30, n_31;
  wire n_32, n_33, n_34, n_35, n_36, n_37, n_38, n_39;
  wire n_40, n_41, n_42, n_43, n_44, n_45, n_46, n_47;
  wire n_48, n_49, n_50, n_51, n_52, n_53, n_54, n_55;
  wire n_56, n_57, n_58, n_59, n_60, n_61, n_62, n_63;
  wire n_64, n_65, n_66, n_67, n_68, n_69, n_70, n_71;
  wire n_72, n_73, n_74, n_75, n_76, n_77, n_78, n_79;
  wire n_80, n_81, n_82, n_83, n_84, n_85, n_86, n_87;
  wire n_88, n_89, n_90, n_91, n_92, n_93, n_94, n_95;
  wire n_96, n_97, n_98, n_99, n_100, n_101, n_102, n_103;
  wire n_104, n_105, n_106, n_107, n_108, n_109, n_110, n_111;
  wire n_112, n_113, n_114, n_115, n_116, n_117, n_118, n_119;
  wire n_120, n_121, n_122, n_123, n_124, n_125, n_126, n_127;
  wire n_128, n_129, n_130, n_131, n_132, n_133, n_134, n_135;
  wire n_136, n_137, n_138, n_139, n_140, n_141, n_142, n_143;
  wire n_144, n_145, n_146, n_147, n_148, n_149, n_150, n_151;
  wire n_152, n_153, n_154, n_155, n_156, n_157, n_158, n_159;
  wire n_160, n_161, n_162, n_163, n_164, n_165, n_166, n_167;
  wire n_168, n_169, n_170, n_171, n_172, n_173, n_174, n_175;
  wire n_176, n_177, n_178, n_179, n_180, n_181, n_182, n_183;
  wire n_184, n_185, n_186, n_187, n_188, n_189, n_190, n_191;
  wire n_192, n_193, n_194, n_195, n_196, n_197, n_198, n_199;
  wire n_200, n_201, n_202, n_203, n_204, n_205, n_206, n_207;
  wire n_208, n_209, n_210, n_211, n_212, n_213, n_214, n_215;
  wire n_216, n_217, n_218, n_219, n_220, n_221, n_222, n_223;
  wire n_224, n_225, n_226, n_227, n_228, n_229, n_230, n_231;
  wire n_232, n_233, n_234, n_235, n_236, n_237, n_238, n_239;
  wire n_240, n_241, n_242, n_243, n_244, n_245, n_246, n_247;
  wire n_248, n_249, n_250, n_251, n_252, n_253, n_254, n_255;
  wire n_256, n_257, n_258, n_259, n_260, n_261, n_262, n_263;
  wire n_264, n_265, n_266, n_267, n_268, n_269, n_270, n_271;
  wire n_272, n_273, n_274, n_275, n_276, n_277, n_278, n_279;
  wire n_280, n_281, n_282, n_283, n_284, n_285, n_286, n_287;
  wire n_288, n_289, n_290, n_291, n_292, n_293, n_294, n_295;
  wire n_296, n_297, n_298, n_299, n_300, n_301, n_303;
  DFFQSRX1 \regfile_contents_reg[4] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_296), .Q (regfile_contents[4]));
  DFFQSRX1 \regfile_contents_reg[16] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_301), .Q (regfile_contents[16]));
  DFFQSRX1 \regfile_contents_reg[22] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_298), .Q (regfile_contents[22]));
  DFFQSRX1 \regfile_contents_reg[28] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_297), .Q (regfile_contents[28]));
  DFFQSRX1 \regfile_contents_reg[34] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_293), .Q (regfile_contents[34]));
  DFFQSRX1 \regfile_contents_reg[10] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_294), .Q (regfile_contents[10]));
  DFFQSRX1 \regfile_contents_reg[40] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_295), .Q (regfile_contents[40]));
  DFFQSRX1 \regfile_contents_reg[46] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_300), .Q (regfile_contents[46]));
  DFFQSRX1 \regfile_contents_reg[27] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_285), .Q (regfile_contents[27]));
  DFFQSRX1 \regfile_contents_reg[21] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_292), .Q (regfile_contents[21]));
  DFFQSRX1 \regfile_contents_reg[3] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_283), .Q (regfile_contents[3]));
  DFFQSRX1 \regfile_contents_reg[33] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_279), .Q (regfile_contents[33]));
  DFFQSRX1 \regfile_contents_reg[9] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_287), .Q (regfile_contents[9]));
  DFFQSRX1 \regfile_contents_reg[15] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_290), .Q (regfile_contents[15]));
  DFFQSRX1 \regfile_contents_reg[39] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_281), .Q (regfile_contents[39]));
  DFFQSRX1 \regfile_contents_reg[45] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_277), .Q (regfile_contents[45]));
  MUX2X1 g3987__2398(.A (regfile_contents[16]), .B (n_299), .S (n_288),
       .Z (n_301));
  DFFQSRX1 \regfile_contents_reg[41] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_259), .Q (regfile_contents[41]));
  DFFQSRX1 \regfile_contents_reg[17] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_269), .Q (regfile_contents[17]));
  DFFQSRX1 \regfile_contents_reg[47] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_275), .Q (regfile_contents[47]));
  DFFQSRX1 \regfile_contents_reg[23] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_261), .Q (regfile_contents[23]));
  DFFQSRX1 \regfile_contents_reg[5] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_273), .Q (regfile_contents[5]));
  DFFQSRX1 \regfile_contents_reg[29] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_263), .Q (regfile_contents[29]));
  DFFQSRX1 \regfile_contents_reg[35] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_265), .Q (regfile_contents[35]));
  DFFQSRX1 \regfile_contents_reg[26] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_264), .Q (regfile_contents[26]));
  DFFQSRX1 \regfile_contents_reg[32] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_266), .Q (regfile_contents[32]));
  DFFQSRX1 \regfile_contents_reg[38] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_260), .Q (regfile_contents[38]));
  DFFQSRX1 \regfile_contents_reg[20] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_262), .Q (regfile_contents[20]));
  MUX2X1 g3982__5107(.A (regfile_contents[46]), .B (n_299), .S (n_276),
       .Z (n_300));
  MUX2X1 g3986__6260(.A (n_299), .B (regfile_contents[22]), .S (n_291),
       .Z (n_298));
  MUX2X1 g3985__4319(.A (n_299), .B (regfile_contents[28]), .S (n_284),
       .Z (n_297));
  MUX2X1 g3984__8428(.A (regfile_contents[4]), .B (n_299), .S (n_282),
       .Z (n_296));
  MUX2X1 g3983__5526(.A (n_299), .B (regfile_contents[40]), .S (n_280),
       .Z (n_295));
  MUX2X1 g3981__6783(.A (regfile_contents[10]), .B (n_299), .S (n_286),
       .Z (n_294));
  MUX2X1 g3980__3680(.A (n_299), .B (regfile_contents[34]), .S (n_278),
       .Z (n_293));
  DFFQSRX1 \regfile_contents_reg[11] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_267), .Q (regfile_contents[11]));
  DFFQSRX1 \regfile_contents_reg[44] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_271), .Q (regfile_contents[44]));
  DFFQSRX1 \regfile_contents_reg[8] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_268), .Q (regfile_contents[8]));
  DFFQSRX1 \regfile_contents_reg[14] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_274), .Q (regfile_contents[14]));
  DFFQSRX1 \regfile_contents_reg[2] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_258), .Q (regfile_contents[2]));
  MUX2X1 g3997__1617(.A (n_289), .B (regfile_contents[21]), .S (n_291),
       .Z (n_292));
  MUX2X1 g4014__2802(.A (regfile_contents[15]), .B (n_289), .S (n_288),
       .Z (n_290));
  MUX2X1 g4011__1705(.A (regfile_contents[9]), .B (n_289), .S (n_286),
       .Z (n_287));
  MUX2X1 g4000__5122(.A (n_289), .B (regfile_contents[27]), .S (n_284),
       .Z (n_285));
  MUX2X1 g4009__8246(.A (regfile_contents[3]), .B (n_289), .S (n_282),
       .Z (n_283));
  MUX2X1 g4005__7098(.A (n_289), .B (regfile_contents[39]), .S (n_280),
       .Z (n_281));
  MUX2X1 g4003__6131(.A (n_289), .B (regfile_contents[33]), .S (n_278),
       .Z (n_279));
  MUX2X1 g4010__1881(.A (regfile_contents[45]), .B (n_289), .S (n_276),
       .Z (n_277));
  MUX2X1 g4017__5115(.A (regfile_contents[47]), .B (n_272), .S (n_276),
       .Z (n_275));
  MUX2X1 g4013__7482(.A (regfile_contents[14]), .B (n_270), .S (n_288),
       .Z (n_274));
  MUX2X1 g4015__4733(.A (regfile_contents[5]), .B (n_272), .S (n_282),
       .Z (n_273));
  MUX2X1 g4016__6161(.A (regfile_contents[44]), .B (n_270), .S (n_276),
       .Z (n_271));
  MUX2X1 g4012__9315(.A (regfile_contents[17]), .B (n_272), .S (n_288),
       .Z (n_269));
  MUX2X1 g4018__9945(.A (regfile_contents[8]), .B (n_270), .S (n_286),
       .Z (n_268));
  MUX2X1 g4019__2883(.A (regfile_contents[11]), .B (n_272), .S (n_286),
       .Z (n_267));
  MUX2X1 g3996__2346(.A (n_270), .B (regfile_contents[32]), .S (n_278),
       .Z (n_266));
  MUX2X1 g4004__1666(.A (n_272), .B (regfile_contents[35]), .S (n_278),
       .Z (n_265));
  MUX2X1 g3999__7410(.A (n_270), .B (regfile_contents[26]), .S (n_284),
       .Z (n_264));
  MUX2X1 g4001__6417(.A (n_272), .B (regfile_contents[29]), .S (n_284),
       .Z (n_263));
  MUX2X1 g4002__5477(.A (n_270), .B (regfile_contents[20]), .S (n_291),
       .Z (n_262));
  MUX2X1 g3998__2398(.A (n_272), .B (regfile_contents[23]), .S (n_291),
       .Z (n_261));
  MUX2X1 g4006__5107(.A (n_270), .B (regfile_contents[38]), .S (n_280),
       .Z (n_260));
  MUX2X1 g4007__6260(.A (n_272), .B (regfile_contents[41]), .S (n_280),
       .Z (n_259));
  MUX2X1 g4008__4319(.A (regfile_contents[2]), .B (n_270), .S (n_282),
       .Z (n_258));
  NAND2X1 g4020__8428(.A (n_256), .B (n_257), .Z (n_299));
  XOR2X1 g4025__5526(.A (n_255), .B (n_251), .Z (n_289));
  NAND3X1 g4022__6783(.A (n_253), .B (element_A[2]), .C (element_B[2]),
       .Z (n_257));
  INVX2 g4021(.A (n_254), .Z (n_272));
  OR2X1 g4032__3680(.A (n_250), .B (n_255), .Z (n_256));
  XOR2X1 g4024__1617(.A (n_249), .B (n_242), .Z (n_270));
  NAND3X1 g4023__2802(.A (n_252), .B (element_A[2]), .C (element_B[2]),
       .Z (n_254));
  DFFQSRX1 \regfile_contents_reg[19] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_238), .Q (regfile_contents[19]));
  DFFQSRX1 \regfile_contents_reg[1] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_241), .Q (regfile_contents[1]));
  DFFQSRX1 \regfile_contents_reg[25] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_248), .Q (regfile_contents[25]));
  DFFQSRX1 \regfile_contents_reg[7] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_239), .Q (regfile_contents[7]));
  DFFQSRX1 \regfile_contents_reg[37] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_246), .Q (regfile_contents[37]));
  DFFQSRX1 \regfile_contents_reg[31] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_244), .Q (regfile_contents[31]));
  DFFQSRX1 \regfile_contents_reg[13] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_243), .Q (regfile_contents[13]));
  DFFQSRX1 \regfile_contents_reg[43] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_240), .Q (regfile_contents[43]));
  INVX2 g4039(.A (n_252), .Z (n_253));
  OR2X1 g4046__1705(.A (n_250), .B (n_236), .Z (n_251));
  NOR2X1 g4047__5122(.A (n_249), .B (n_234), .Z (n_255));
  MUX2X1 g4043__8246(.A (n_245), .B (regfile_contents[25]), .S (n_284),
       .Z (n_248));
  DFFQX1 \result_handler_Q_reg[11] (.CLK (n_247), .D (n_229), .Q
       (matrix_result[11]));
  DFFQX1 \result_handler_Q_reg[23] (.CLK (n_247), .D (n_231), .Q
       (matrix_result[23]));
  DFFQX1 \result_handler_Q_reg[5] (.CLK (n_247), .D (n_230), .Q
       (matrix_result[5]));
  MUX2X1 g4041__7098(.A (n_245), .B (regfile_contents[37]), .S (n_280),
       .Z (n_246));
  MUX2X1 g4042__6131(.A (n_245), .B (regfile_contents[31]), .S (n_278),
       .Z (n_244));
  DFFQX1 \result_handler_Q_reg[17] (.CLK (n_247), .D (n_232), .Q
       (matrix_result[17]));
  MUX2X1 g4052__1881(.A (regfile_contents[13]), .B (n_245), .S (n_288),
       .Z (n_243));
  XOR2X1 g4045__5115(.A (n_237), .B (n_233), .Z (n_242));
  MUX2X1 g4049__7482(.A (regfile_contents[1]), .B (n_245), .S (n_282),
       .Z (n_241));
  MUX2X1 g4050__4733(.A (regfile_contents[43]), .B (n_245), .S (n_276),
       .Z (n_240));
  MUX2X1 g4051__6161(.A (regfile_contents[7]), .B (n_245), .S (n_286),
       .Z (n_239));
  MUX2X1 g4040__9315(.A (n_245), .B (regfile_contents[19]), .S (n_291),
       .Z (n_238));
  NAND2X1 g4044__9945(.A (n_235), .B (n_237), .Z (n_252));
  DFFQSRX1 \regfile_contents_reg[6] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_219), .Q (regfile_contents[6]));
  DFFQSRX1 \regfile_contents_reg[42] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_220), .Q (regfile_contents[42]));
  DFFQSRX1 \regfile_contents_reg[18] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_223), .Q (regfile_contents[18]));
  DFFQSRX1 \regfile_contents_reg[24] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_225), .Q (regfile_contents[24]));
  DFFQSRX1 \regfile_contents_reg[30] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_218), .Q (regfile_contents[30]));
  INVX2 g4063(.A (n_235), .Z (n_236));
  NOR2X1 g4070__2883(.A (n_237), .B (n_233), .Z (n_234));
  DFFQSRX1 \regfile_contents_reg[36] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_221), .Q (regfile_contents[36]));
  DFFQSRX1 \regfile_contents_reg[12] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_226), .Q (regfile_contents[12]));
  DFFQSRX1 \regfile_contents_reg[0] (.SETB (n_303), .RESETB (1'b1),
       .CLK (clock), .D (n_222), .Q (regfile_contents[0]));
  XOR2X1 g4048__2346(.A (n_213), .B (n_26), .Z (n_232));
  XOR2X1 g4053__1666(.A (n_217), .B (n_27), .Z (n_231));
  XOR2X1 g4054__7410(.A (n_216), .B (n_23), .Z (n_230));
  XOR2X1 g4055__6417(.A (n_215), .B (n_37), .Z (n_229));
  NAND2X1 g4069__5477(.A (n_227), .B (n_228), .Z (n_235));
  NOR2X1 g4068__2398(.A (n_228), .B (n_227), .Z (n_250));
  MUX2X1 g4081__5107(.A (regfile_contents[12]), .B (n_224), .S (n_288),
       .Z (n_226));
  MUX2X1 g4074__6260(.A (n_224), .B (regfile_contents[24]), .S (n_284),
       .Z (n_225));
  MUX2X1 g4075__4319(.A (n_224), .B (regfile_contents[18]), .S (n_291),
       .Z (n_223));
  MUX2X1 g4082__8428(.A (regfile_contents[0]), .B (n_224), .S (n_282),
       .Z (n_222));
  NOR2X1 g4080__5526(.A (n_214), .B (n_249), .Z (n_245));
  MUX2X1 g4072__6783(.A (n_224), .B (regfile_contents[36]), .S (n_280),
       .Z (n_221));
  MUX2X1 g4083__3680(.A (regfile_contents[42]), .B (n_224), .S (n_276),
       .Z (n_220));
  MUX2X1 g4084__1617(.A (regfile_contents[6]), .B (n_224), .S (n_286),
       .Z (n_219));
  MUX2X1 g4073__2802(.A (n_224), .B (regfile_contents[30]), .S (n_278),
       .Z (n_218));
  XOR2X1 g4090__1705(.A (n_212), .B (n_207), .Z (n_233));
  DFFQX1 \result_handler_Q_reg[16] (.CLK (n_247), .D (n_211), .Q
       (matrix_result[16]));
  XOR2X1 g4089__5122(.A (n_193), .B (n_194), .Z (n_228));
  DFFQX1 \result_handler_Q_reg[10] (.CLK (n_247), .D (n_208), .Q
       (matrix_result[10]));
  DFFQX1 \result_handler_Q_reg[22] (.CLK (n_247), .D (n_210), .Q
       (matrix_result[22]));
  DFFQX1 \result_handler_Q_reg[4] (.CLK (n_247), .D (n_209), .Q
       (matrix_result[4]));
  NAND2X1 g4076__8246(.A (n_202), .B (n_92), .Z (n_217));
  NAND2X1 g4077__7098(.A (n_198), .B (n_86), .Z (n_216));
  NAND2X1 g4078__6131(.A (n_200), .B (n_88), .Z (n_215));
  AND2X1 g4097__1881(.A (n_196), .B (n_195), .Z (n_214));
  NAND2X1 g4079__5115(.A (n_204), .B (n_90), .Z (n_213));
  NOR2X1 g4100__7482(.A (n_212), .B (n_206), .Z (n_227));
  NOR2X1 g4101__4733(.A (n_205), .B (n_237), .Z (n_249));
  XOR2X1 g4085__6161(.A (n_203), .B (n_91), .Z (n_211));
  XOR2X1 g4086__9315(.A (n_201), .B (n_93), .Z (n_210));
  XOR2X1 g4087__9945(.A (n_197), .B (n_87), .Z (n_209));
  XOR2X1 g4088__2883(.A (n_199), .B (n_89), .Z (n_208));
  INVX2 g4102(.A (n_206), .Z (n_207));
  INVX2 g4103(.A (n_205), .Z (n_224));
  OR2X1 g4095__2346(.A (n_6), .B (n_203), .Z (n_204));
  OR2X1 g4096__1666(.A (n_17), .B (n_201), .Z (n_202));
  OR2X1 g4098__7410(.A (n_24), .B (n_199), .Z (n_200));
  OR2X1 g4099__6417(.A (n_32), .B (n_197), .Z (n_198));
  NAND2X1 g4104__5477(.A (element_A[1]), .B (element_B[0]), .Z (n_196));
  NAND2X1 g4105__2398(.A (element_A[0]), .B (element_B[1]), .Z (n_195));
  NAND2X1 g4116__5107(.A (element_A[2]), .B (element_B[1]), .Z (n_194));
  NAND2X1 g4117__6260(.A (element_A[1]), .B (element_B[2]), .Z (n_193));
  NAND2X1 g4108__4319(.A (element_A[2]), .B (element_B[0]), .Z (n_206));
  NAND2X1 g4118__8428(.A (element_A[0]), .B (element_B[2]), .Z (n_212));
  NAND2X1 g4111__5526(.A (element_A[0]), .B (element_B[0]), .Z (n_205));
  DFFQX1 \fsm_current_state_reg[0] (.CLK (clock), .D (n_191), .Q
       (fsm_current_state[0]));
  NAND2X1 g4109__6783(.A (element_A[1]), .B (element_B[1]), .Z (n_237));
  DFFQX1 \result_handler_Q_reg[3] (.CLK (n_247), .D (n_189), .Q
       (matrix_result[3]));
  DFFQX1 \result_handler_Q_reg[21] (.CLK (n_247), .D (n_188), .Q
       (matrix_result[21]));
  DFFQX1 \result_handler_Q_reg[15] (.CLK (n_247), .D (n_187), .Q
       (matrix_result[15]));
  DFFQX1 \result_handler_Q_reg[9] (.CLK (n_247), .D (n_190), .Q
       (matrix_result[9]));
  NOR2X1 g4106__3680(.A (n_61), .B (n_185), .Z (n_201));
  NOR2X1 g4107__1617(.A (n_59), .B (n_183), .Z (n_203));
  NOR2X1 g4119__2802(.A (n_38), .B (n_179), .Z (n_199));
  NOR2X1 g4120__1705(.A (n_72), .B (n_181), .Z (n_197));
  DFFQX1 \matb_element_reg[0] (.CLK (n_192), .D (n_171), .Q
       (element_B[0]));
  DFFQX1 \mata_element_reg[1] (.CLK (n_192), .D (n_175), .Q
       (element_A[1]));
  NOR2X1 g4129__5122(.A (reset), .B (n_173), .Z (n_191));
  DFFQX1 \mata_element_reg[0] (.CLK (n_192), .D (n_186), .Q
       (element_A[0]));
  DFFQX1 \matb_element_reg[1] (.CLK (n_192), .D (n_172), .Q
       (element_B[1]));
  DFFQX1 \matb_element_reg[2] (.CLK (n_192), .D (n_176), .Q
       (element_B[2]));
  DFFQX1 \fsm_current_state_reg[1] (.CLK (clock), .D (n_177), .Q
       (fsm_current_state[1]));
  DFFQX1 \mata_element_reg[2] (.CLK (n_192), .D (n_174), .Q
       (element_A[2]));
  XOR2X1 g4112__8246(.A (n_178), .B (n_39), .Z (n_190));
  XOR2X1 g4113__7098(.A (n_180), .B (n_73), .Z (n_189));
  XOR2X1 g4114__6131(.A (n_184), .B (n_62), .Z (n_188));
  XOR2X1 g4115__1881(.A (n_182), .B (n_60), .Z (n_187));
  DFFQX1 \statusREG_entry_out_reg[3] (.CLK (clock), .D (n_170), .Q
       (AB_entries[3]));
  NAND3X1 g4151__5115(.A (n_168), .B (n_96), .C (n_108), .Z (n_186));
  AND2X1 g4133__7482(.A (n_184), .B (n_16), .Z (n_185));
  AND2X1 g4134__4733(.A (n_182), .B (n_20), .Z (n_183));
  AND2X1 g4135__6161(.A (n_180), .B (n_22), .Z (n_181));
  AND2X1 g4136__9315(.A (n_178), .B (n_11), .Z (n_179));
  NAND2X1 g4143__9945(.A (n_163), .B (n_43), .Z (n_177));
  NAND3X1 g4152__2883(.A (n_166), .B (n_124), .C (n_97), .Z (n_176));
  NAND3X1 g4153__2346(.A (n_159), .B (n_100), .C (n_107), .Z (n_175));
  NAND3X1 g4154__1666(.A (n_164), .B (n_99), .C (n_105), .Z (n_174));
  NOR2X1 g4155__7410(.A (n_69), .B (n_165), .Z (n_173));
  NAND3X1 g4156__6417(.A (n_160), .B (n_127), .C (n_95), .Z (n_172));
  NAND3X1 g4149__5477(.A (n_167), .B (n_109), .C (n_102), .Z (n_171));
  DFFQX1 \result_handler_Q_reg[14] (.CLK (n_247), .D (n_157), .Q
       (matrix_result[14]));
  DFFQX1 \result_handler_Q_reg[8] (.CLK (n_247), .D (n_158), .Q
       (matrix_result[8]));
  AND2X1 g4142__2398(.A (n_155), .B (n_161), .Z (n_170));
  DFFQX1 \result_handler_Q_reg[2] (.CLK (n_247), .D (n_156), .Q
       (matrix_result[2]));
  DFFQX1 \result_handler_Q_reg[20] (.CLK (n_247), .D (n_154), .Q
       (matrix_result[20]));
  DFFQX1 \statusREG_entry_out_reg[0] (.CLK (clock), .D (n_153), .Q
       (AB_entries[0]));
  AND2X1 g4189__5107(.A (n_169), .B (n_119), .Z (n_286));
  NAND2X1 g4175__6260(.A (n_169), .B (AB_entries[1]), .Z (n_291));
  AND2X1 g4162__4319(.A (n_117), .B (n_134), .Z (n_168));
  NAND2X1 g4145__8428(.A (n_143), .B (n_76), .Z (n_180));
  NAND2X1 g4146__5526(.A (n_148), .B (n_82), .Z (n_184));
  NAND2X1 g4144__6783(.A (n_150), .B (n_84), .Z (n_182));
  NAND2X1 g4160__3680(.A (n_145), .B (n_78), .Z (n_178));
  DFFQX1 \statusREG_entry_out_reg[1] (.CLK (clock), .D (n_135), .Q
       (AB_entries[1]));
  DFFQX1 \statusREG_entry_out_reg[2] (.CLK (clock), .D (n_146), .Q
       (AB_entries[2]));
  AND2X1 g4180__1617(.A (n_138), .B (n_104), .Z (n_167));
  AND2X1 g4167__2802(.A (n_139), .B (n_118), .Z (n_166));
  NOR2X1 g4184__1705(.A (n_152), .B (n_162), .Z (n_165));
  AND2X1 g4178__5122(.A (n_114), .B (n_133), .Z (n_164));
  NAND2X1 g4165__8246(.A (n_162), .B (n_161), .Z (n_163));
  AND2X1 g4182__7098(.A (n_136), .B (n_113), .Z (n_160));
  AND2X1 g4183__6131(.A (n_115), .B (n_131), .Z (n_159));
  NAND2X1 g4174__1881(.A (n_141), .B (AB_entries[2]), .Z (n_280));
  DFFQX1 \result_handler_Q_reg[13] (.CLK (n_247), .D (n_126), .Q
       (matrix_result[13]));
  DFFQX1 \result_handler_Q_reg[1] (.CLK (n_247), .D (n_130), .Q
       (matrix_result[1]));
  DFFQX1 \result_handler_Q_reg[7] (.CLK (n_247), .D (n_125), .Q
       (matrix_result[7]));
  DFFQX1 \result_handler_Q_reg[19] (.CLK (n_247), .D (n_121), .Q
       (matrix_result[19]));
  XOR2X1 g4150__5115(.A (n_144), .B (n_79), .Z (n_158));
  XOR2X1 g4157__7482(.A (n_149), .B (n_85), .Z (n_157));
  DFFQSRX1 \result_handler_address_reg[3] (.SETB (n_303), .RESETB
       (1'b1), .CLK (n_247), .D (n_122), .Q (matrix_count[3]));
  XOR2X1 g4158__4733(.A (n_142), .B (n_77), .Z (n_156));
  NAND2X1 g4166__6161(.A (n_151), .B (n_94), .Z (n_155));
  XOR2X1 g4159__9315(.A (n_147), .B (n_83), .Z (n_154));
  NOR2X1 g4206__9945(.A (AB_entries[0]), .B (n_128), .Z (n_153));
  NOR2X1 g4230__2883(.A (n_152), .B (n_129), .Z (n_169));
  NOR2X1 g4190__2346(.A (n_152), .B (n_151), .Z (n_276));
  NOR2X1 g4171__1666(.A (AB_entries[2]), .B (n_140), .Z (n_288));
  NAND2X1 g4173__7410(.A (n_111), .B (AB_entries[2]), .Z (n_284));
  OR2X1 g4161__6417(.A (n_12), .B (n_149), .Z (n_150));
  OR2X1 g4164__5477(.A (n_30), .B (n_147), .Z (n_148));
  AND2X1 g4163__2398(.A (n_161), .B (n_75), .Z (n_146));
  OR2X1 g4176__5107(.A (n_28), .B (n_144), .Z (n_145));
  OR2X1 g4181__6260(.A (n_8), .B (n_142), .Z (n_143));
  INVX2 g4191(.A (n_151), .Z (n_162));
  NOR2X1 g4172__4319(.A (AB_entries[2]), .B (n_110), .Z (n_282));
  INVX2 g4214(.A (n_140), .Z (n_141));
  NAND2X1 g4197__8428(.A (n_137), .B (matrix_B[11]), .Z (n_139));
  NAND2X1 g4198__5526(.A (n_137), .B (matrix_B[9]), .Z (n_138));
  NAND2X1 g4205__6783(.A (n_137), .B (matrix_B[10]), .Z (n_136));
  AND2X1 g4192__3680(.A (n_161), .B (n_14), .Z (n_135));
  NAND2X1 g4216__1617(.A (n_132), .B (matrix_A[3]), .Z (n_134));
  NAND2X1 g4225__2802(.A (n_132), .B (matrix_A[5]), .Z (n_133));
  NAND2X1 g4227__1705(.A (n_132), .B (matrix_A[4]), .Z (n_131));
  XOR2X1 g4185__5122(.A (n_47), .B (n_46), .Z (n_130));
  INVX2 g4236(.A (n_132), .Z (n_129));
  INVX2 g4259(.A (n_161), .Z (n_128));
  NAND2X1 g4200__8246(.A (n_123), .B (matrix_B[4]), .Z (n_127));
  XOR2X1 g4177__7098(.A (n_67), .B (n_42), .Z (n_126));
  XOR2X1 g4179__6131(.A (n_70), .B (n_55), .Z (n_125));
  NAND2X1 g4199__1881(.A (n_123), .B (matrix_B[5]), .Z (n_124));
  XOR2X1 g4186__5115(.A (matrix_count[3]), .B (n_58), .Z (n_122));
  XOR2X1 g4187__7482(.A (n_49), .B (n_66), .Z (n_121));
  NAND2X1 g4232__4733(.A (n_123), .B (n_120), .Z (n_140));
  DFFQSRX1 \result_handler_address_reg[2] (.SETB (n_303), .RESETB
       (1'b1), .CLK (n_247), .D (n_80), .Q (matrix_count[2]));
  NAND3X1 g4188__6161(.A (n_116), .B (n_120), .C (n_119), .Z (n_278));
  NAND2X1 g4219__9315(.A (n_112), .B (matrix_B[8]), .Z (n_118));
  NAND2X1 g4207__9945(.A (n_116), .B (matrix_A[9]), .Z (n_117));
  NAND2X1 g4208__2883(.A (n_116), .B (matrix_A[10]), .Z (n_115));
  NAND2X1 g4209__2346(.A (n_116), .B (matrix_A[11]), .Z (n_114));
  NAND2X1 g4229__1666(.A (n_112), .B (matrix_B[7]), .Z (n_113));
  INVX2 g4213(.A (n_110), .Z (n_111));
  NAND2X1 g4203__7410(.A (n_123), .B (matrix_B[3]), .Z (n_109));
  NAND2X1 g4221__6417(.A (n_106), .B (matrix_A[0]), .Z (n_108));
  NAND2X1 g4224__5477(.A (n_106), .B (matrix_A[1]), .Z (n_107));
  NAND2X1 g4226__2398(.A (n_106), .B (matrix_A[2]), .Z (n_105));
  NAND2X1 g4228__5107(.A (n_112), .B (matrix_B[6]), .Z (n_104));
  NAND2X1 g4212__6260(.A (n_116), .B (AB_entries[1]), .Z (n_151));
  NOR2X1 g4233__4319(.A (n_44), .B (n_48), .Z (n_142));
  NOR2X1 g4234__8428(.A (n_54), .B (n_71), .Z (n_144));
  NOR2X1 g4235__5526(.A (n_65), .B (n_51), .Z (n_147));
  NAND2X1 g4231__6783(.A (n_101), .B (n_120), .Z (n_110));
  DFFQSRX1 \result_handler_address_reg[1] (.SETB (n_303), .RESETB
       (1'b1), .CLK (n_247), .D (n_52), .Q (matrix_count[1]));
  NOR2X1 g4279__3680(.A (n_119), .B (n_103), .Z (n_137));
  NOR2X1 g4257__1617(.A (AB_entries[2]), .B (n_103), .Z (n_132));
  NOR2X1 g4281__2802(.A (reset), .B (n_152), .Z (n_161));
  NAND2X1 g4217__1705(.A (n_101), .B (matrix_B[0]), .Z (n_102));
  NAND2X1 g4202__5122(.A (n_98), .B (matrix_A[7]), .Z (n_100));
  NAND2X1 g4204__8246(.A (n_98), .B (matrix_A[8]), .Z (n_99));
  NAND2X1 g4223__7098(.A (n_101), .B (matrix_B[2]), .Z (n_97));
  NAND2X1 g4201__6131(.A (n_98), .B (matrix_A[6]), .Z (n_96));
  NAND2X1 g4218__1881(.A (n_101), .B (matrix_B[1]), .Z (n_95));
  NAND2X1 g4220__5115(.A (n_64), .B (AB_entries[3]), .Z (n_94));
  NOR2X1 g4210__7482(.A (n_41), .B (n_68), .Z (n_149));
  NAND2X1 g4250__4733(.A (n_18), .B (n_92), .Z (n_93));
  NAND2X1 g4244__6161(.A (n_7), .B (n_90), .Z (n_91));
  NAND2X1 g4245__9315(.A (n_25), .B (n_88), .Z (n_89));
  NAND2X1 g4249__9945(.A (n_33), .B (n_86), .Z (n_87));
  NAND2X1 g4243__2883(.A (n_13), .B (n_84), .Z (n_85));
  NAND2X1 g4241__2346(.A (n_31), .B (n_82), .Z (n_83));
  AND2X1 g4252__1666(.A (n_81), .B (n_119), .Z (n_112));
  NOR2X1 g4251__7410(.A (AB_entries[2]), .B (n_74), .Z (n_106));
  AND2X1 g4258__6417(.A (n_81), .B (AB_entries[2]), .Z (n_116));
  XOR2X1 g4222__5477(.A (matrix_count[2]), .B (n_57), .Z (n_80));
  NAND2X1 g4271__2398(.A (n_29), .B (n_78), .Z (n_79));
  NAND2X1 g4269__5107(.A (n_9), .B (n_76), .Z (n_77));
  DFFQX1 \result_handler_Q_reg[18] (.CLK (n_247), .D (n_36), .Q
       (matrix_result[18]));
  DFFQX1 \result_handler_Q_reg[12] (.CLK (n_247), .D (n_5), .Q
       (matrix_result[12]));
  DFFQX1 \result_handler_Q_reg[0] (.CLK (n_247), .D (n_34), .Q
       (matrix_result[0]));
  DFFQX1 \result_handler_Q_reg[6] (.CLK (n_247), .D (n_35), .Q
       (matrix_result[6]));
  XOR2X1 g4215__6260(.A (AB_entries[2]), .B (n_63), .Z (n_75));
  NOR2X1 g4280__4319(.A (n_119), .B (n_74), .Z (n_123));
  NOR2X1 g4246__8428(.A (n_21), .B (n_72), .Z (n_73));
  NOR2X1 g4238__5526(.A (n_53), .B (n_70), .Z (n_71));
  NOR2X1 g4239__6783(.A (fsm_current_state[0]), .B (n_3), .Z (n_69));
  NOR2X1 g4240__3680(.A (n_40), .B (n_67), .Z (n_68));
  OR2X1 g4242__1617(.A (n_50), .B (n_65), .Z (n_66));
  NAND2X1 g4237__2802(.A (n_63), .B (AB_entries[2]), .Z (n_64));
  NOR2X1 g4247__1705(.A (n_15), .B (n_61), .Z (n_62));
  NOR2X1 g4248__5122(.A (n_59), .B (n_19), .Z (n_60));
  AND2X1 g4253__8246(.A (n_57), .B (matrix_count[2]), .Z (n_58));
  AND2X1 g4254__7098(.A (n_56), .B (AB_entries[2]), .Z (n_98));
  AND2X1 g4256__6131(.A (n_56), .B (n_119), .Z (n_101));
  OR2X1 g4272__1881(.A (n_54), .B (n_53), .Z (n_55));
  NOR2X1 g4263__5115(.A (n_2), .B (n_57), .Z (n_52));
  NOR2X1 g4266__7482(.A (n_50), .B (n_49), .Z (n_51));
  NOR2X1 g4267__4733(.A (n_45), .B (n_47), .Z (n_48));
  OR2X1 g4270__6161(.A (n_45), .B (n_44), .Z (n_46));
  NAND3X1 g4262__9315(.A (n_4), .B (fsm_current_state[1]), .C (n_303),
       .Z (n_43));
  OR2X1 g4273__9945(.A (n_41), .B (n_40), .Z (n_42));
  NOR2X1 g4274__2883(.A (n_38), .B (n_10), .Z (n_39));
  INVX2 g4285(.A (n_81), .Z (n_103));
  DFFQSRX1 \result_handler_address_reg[0] (.SETB (n_303), .RESETB
       (1'b1), .CLK (n_247), .D (n_1), .Q (matrix_count[0]));
  INVX2 g4286(.A (n_120), .Z (n_152));
  XOR2X1 g4275__2346(.A (regfile_contents[17]), .B
       (regfile_contents[23]), .Z (n_37));
  XOR2X1 g4264__1666(.A (regfile_contents[36]), .B
       (regfile_contents[42]), .Z (n_36));
  XOR2X1 g4265__7410(.A (regfile_contents[12]), .B
       (regfile_contents[18]), .Z (n_35));
  XOR2X1 g4268__6417(.A (regfile_contents[6]), .B
       (regfile_contents[0]), .Z (n_34));
  INVX1 g4312(.A (n_32), .Z (n_33));
  INVX1 g4311(.A (n_30), .Z (n_31));
  INVX1 g4317(.A (n_28), .Z (n_29));
  XOR2X1 g4276__5477(.A (regfile_contents[41]), .B
       (regfile_contents[47]), .Z (n_27));
  XOR2X1 g4277__2398(.A (regfile_contents[29]), .B
       (regfile_contents[35]), .Z (n_26));
  INVX1 g4316(.A (n_24), .Z (n_25));
  XOR2X1 g4278__5107(.A (regfile_contents[11]), .B
       (regfile_contents[5]), .Z (n_23));
  INVX1 g4309(.A (n_21), .Z (n_22));
  INVX1 g4315(.A (n_19), .Z (n_20));
  INVX1 g4283(.A (n_17), .Z (n_18));
  INVX1 g4313(.A (n_15), .Z (n_16));
  XOR2X1 g4261__6260(.A (AB_entries[1]), .B (AB_entries[0]), .Z (n_14));
  INVX1 g4310(.A (n_12), .Z (n_13));
  INVX1 g4314(.A (n_10), .Z (n_11));
  INVX1 g4282(.A (n_8), .Z (n_9));
  INVX1 g4284(.A (n_6), .Z (n_7));
  XOR2X1 g4260__4319(.A (regfile_contents[24]), .B
       (regfile_contents[30]), .Z (n_5));
  INVX2 g4318(.A (n_56), .Z (n_74));
  NOR2X1 g4307__8428(.A (n_0), .B (AB_entries[3]), .Z (n_81));
  NOR2X1 g4308__5526(.A (fsm_current_state[1]), .B (n_4), .Z (n_120));
  NOR2X1 g4287__6783(.A (start), .B (fsm_current_state[1]), .Z (n_3));
  NAND2X1 g4331__3680(.A (regfile_contents[44]), .B
       (regfile_contents[38]), .Z (n_82));
  NAND2X1 g4304__1617(.A (regfile_contents[0]), .B
       (regfile_contents[6]), .Z (n_47));
  AND2X1 g4301__2802(.A (regfile_contents[3]), .B
       (regfile_contents[9]), .Z (n_72));
  NAND2X1 g4333__1705(.A (regfile_contents[16]), .B
       (regfile_contents[22]), .Z (n_88));
  NAND2X1 g4335__5122(.A (regfile_contents[2]), .B
       (regfile_contents[8]), .Z (n_76));
  NOR2X1 g4336__8246(.A (regfile_contents[22]), .B
       (regfile_contents[16]), .Z (n_24));
  NAND2X1 g4306__7098(.A (regfile_contents[24]), .B
       (regfile_contents[30]), .Z (n_67));
  AND2X1 g4296__6131(.A (regfile_contents[43]), .B
       (regfile_contents[37]), .Z (n_65));
  NOR2X1 g4298__1881(.A (regfile_contents[40]), .B
       (regfile_contents[46]), .Z (n_17));
  AND2X1 g4291__5115(.A (regfile_contents[27]), .B
       (regfile_contents[33]), .Z (n_59));
  NOR2X1 g4326__7482(.A (regfile_contents[37]), .B
       (regfile_contents[43]), .Z (n_50));
  NAND2X1 g4320__4733(.A (regfile_contents[46]), .B
       (regfile_contents[40]), .Z (n_92));
  NOR2X1 g4323__6161(.A (regfile_contents[38]), .B
       (regfile_contents[44]), .Z (n_30));
  AND2X1 g4288__9315(.A (regfile_contents[25]), .B
       (regfile_contents[31]), .Z (n_41));
  AND2X1 g4300__9945(.A (regfile_contents[15]), .B
       (regfile_contents[21]), .Z (n_38));
  NOR2X1 g4289__2883(.A (regfile_contents[8]), .B
       (regfile_contents[2]), .Z (n_8));
  NAND2X1 g4292__2346(.A (regfile_contents[14]), .B
       (regfile_contents[20]), .Z (n_78));
  NAND2X1 g4293__1666(.A (regfile_contents[28]), .B
       (regfile_contents[34]), .Z (n_90));
  NOR2X1 g4338__7410(.A (AB_entries[3]), .B (AB_entries[0]), .Z (n_56));
  AND2X1 g4303__6417(.A (matrix_count[0]), .B (matrix_count[1]), .Z
       (n_57));
  NOR2X1 g4319__5477(.A (matrix_count[1]), .B (matrix_count[0]), .Z
       (n_2));
  AND2X1 g4302__2398(.A (AB_entries[1]), .B (AB_entries[0]), .Z (n_63));
  NOR2X1 g4322__5107(.A (regfile_contents[32]), .B
       (regfile_contents[26]), .Z (n_12));
  NOR2X1 g4324__6260(.A (regfile_contents[31]), .B
       (regfile_contents[25]), .Z (n_40));
  AND2X1 g4330__4319(.A (regfile_contents[45]), .B
       (regfile_contents[39]), .Z (n_61));
  NOR2X1 g4321__8428(.A (regfile_contents[9]), .B
       (regfile_contents[3]), .Z (n_21));
  AND2X1 g4334__5526(.A (regfile_contents[1]), .B
       (regfile_contents[7]), .Z (n_44));
  NOR2X1 g4294__6783(.A (regfile_contents[19]), .B
       (regfile_contents[13]), .Z (n_53));
  NOR2X1 g4299__3680(.A (regfile_contents[34]), .B
       (regfile_contents[28]), .Z (n_6));
  AND2X1 g4297__1617(.A (regfile_contents[13]), .B
       (regfile_contents[19]), .Z (n_54));
  NAND2X1 g4290__2802(.A (regfile_contents[4]), .B
       (regfile_contents[10]), .Z (n_86));
  NOR2X1 g4337__1705(.A (regfile_contents[20]), .B
       (regfile_contents[14]), .Z (n_28));
  NOR2X1 g4327__5122(.A (regfile_contents[39]), .B
       (regfile_contents[45]), .Z (n_15));
  NAND2X1 g4305__8246(.A (regfile_contents[42]), .B
       (regfile_contents[36]), .Z (n_49));
  NOR2X1 g4329__7098(.A (regfile_contents[33]), .B
       (regfile_contents[27]), .Z (n_19));
  NOR2X1 g4328__6131(.A (regfile_contents[21]), .B
       (regfile_contents[15]), .Z (n_10));
  NOR2X1 g4332__1881(.A (regfile_contents[7]), .B
       (regfile_contents[1]), .Z (n_45));
  NOR2X1 g4325__5115(.A (regfile_contents[10]), .B
       (regfile_contents[4]), .Z (n_32));
  NAND2X1 g4295__7482(.A (regfile_contents[26]), .B
       (regfile_contents[32]), .Z (n_84));
  NAND2X1 g4339__4733(.A (regfile_contents[12]), .B
       (regfile_contents[18]), .Z (n_70));
  AND2X1 g4340__6161(.A (fsm_current_state[1]), .B
       (fsm_current_state[0]), .Z (n_247));
  INVX2 g4342(.A (fsm_current_state[0]), .Z (n_4));
  INVX2 g4344(.A (AB_entries[1]), .Z (n_119));
  INVX1 g4345(.A (reset), .Z (n_303));
  INVX1 g4341(.A (matrix_count[0]), .Z (n_1));
  INVX2 g4343(.A (AB_entries[0]), .Z (n_0));
  INVX1 g4346(.A (clock), .Z (n_192));
endmodule

module Matrix_Multiplier(matrix_A, matrix_B, clock, start, reset, matrix_result, matrix_count);
  input [11:0] matrix_A;
  input [11:0] matrix_B;
  input clock, start, reset;
  output [23:0] matrix_result;
  output [3:0] matrix_count; 
  wire matrix_A;
  wire matrix_B;
  wire clock, start, reset;
  wire matrix_result;
  wire matrix_count; 
  wire matrix_A_PAD, matrix_B_PAD, clock_PAD, start_PAD, reset_PAD,
       matrix_result_PAD, matrix_count_PAD;
  icebreaker Matrix_Mult (
   .matrix_A(matrix_A_PAD),
   .matrix_B(matrix_B_PAD),
   .clock(clock_PAD),
   .start(start_PAD),
   .reset(reset_PAD),
   .matrix_result(matrix_result_PAD),
   .matrix_count(matrix_count_PAD)); 

     // Corners
     pad_corner corner0 ();
     pad_corner corner1 ();
     pad_corner corner2 ();
     pad_corner corner3 ();
     // Power Connections
     pad_vdd vdd0 ();
     pad_gnd vss0 ();

   pad_in matrix_A_pad (.pad(matrix_A), .DataIn(matrix_A_PAD));
   pad_in matrix_B_pad (.pad(matrix_B), .DataIn(matrix_B_PAD));
   pad_in clock_pad    (.pad(clock),    .DataIn(clock_PAD));
   pad_in start_pad    (.pad(start),    .DataIn(start_PAD));
   pad_in reset_pad    (.pad(reset),    .DataIn(reset_PAD));
   pad_out matrix_result_pad  (.pad(matrix_result),  .DataOut(matrix_result_PAD));
   pad_out matrix_count_pad  (.pad(matrix_count),  .DataOut(matrix_count_PAD));

endmodule
