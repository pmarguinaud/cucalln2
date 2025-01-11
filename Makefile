include Makefile.inc

./abor1.intfb.ok: $(SRC)/./abor1.intfb.h 
	touch ./abor1.intfb.ok

./cuadjtq.intfb.ok: $(SRC)/./cuadjtq.intfb.h parkind1.o yomhook.o yomcst.o yoethf.o yoephli.o
	touch ./cuadjtq.intfb.ok

./cuadjtq_openacc.intfb.ok: $(SRC)/./cuadjtq_openacc.intfb.h parkind1.o yomcst.o yoethf.o yoephli.o abor1_acc_mod.o stack_mod.o
	touch ./cuadjtq_openacc.intfb.ok

./cuadjtqs.intfb.ok: $(SRC)/./cuadjtqs.intfb.h parkind1.o yomhook.o yomcst.o yoethf.o
	touch ./cuadjtqs.intfb.ok

./cuadjtqs_openacc.intfb.ok: $(SRC)/./cuadjtqs_openacc.intfb.h parkind1.o yomcst.o yoethf.o abor1_acc_mod.o stack_mod.o
	touch ./cuadjtqs_openacc.intfb.ok

./cuascn.intfb.ok: $(SRC)/./cuascn.intfb.h parkind1.o yomhook.o yomcst.o yoethf.o yoecumf.o yoephli.o yoecldp.o yom_ygfl.o spp_mod.o spp_gen_mod.o
	touch ./cuascn.intfb.ok

./cuascn_openacc.intfb.ok: $(SRC)/./cuascn_openacc.intfb.h parkind1.o yomcst.o yoethf.o yoecumf.o yoephli.o yoecldp.o yom_ygfl.o spp_mod.o spp_gen_mod.o abor1_acc_mod.o stack_mod.o
	touch ./cuascn_openacc.intfb.ok

./cubasen.intfb.ok: $(SRC)/./cubasen.intfb.h yoephli.o parkind1.o yomhook.o yomcst.o parphy.o yoecumf.o yoecldp.o yoethf.o spp_mod.o spp_gen_mod.o
	touch ./cubasen.intfb.ok

./cubasen_openacc.intfb.ok: $(SRC)/./cubasen_openacc.intfb.h yoephli.o parkind1.o yomcst.o parphy.o yoecumf.o yoecldp.o yoethf.o spp_mod.o spp_gen_mod.o abor1_acc_mod.o stack_mod.o
	touch ./cubasen_openacc.intfb.ok

./cubasmcn.intfb.ok: $(SRC)/./cubasmcn.intfb.h parkind1.o yomhook.o yomcst.o yoecumf.o
	touch ./cubasmcn.intfb.ok

./cubasmcn_openacc.intfb.ok: $(SRC)/./cubasmcn_openacc.intfb.h parkind1.o yomcst.o yoecumf.o abor1_acc_mod.o stack_mod.o
	touch ./cubasmcn_openacc.intfb.ok

./cubidiag.intfb.ok: $(SRC)/./cubidiag.intfb.h parkind1.o yomhook.o
	touch ./cubidiag.intfb.ok

./cubidiag_openacc.intfb.ok: $(SRC)/./cubidiag_openacc.intfb.h parkind1.o abor1_acc_mod.o stack_mod.o
	touch ./cubidiag_openacc.intfb.ok

./cucalln_mf.intfb.ok: $(SRC)/./cucalln_mf.intfb.h model_physics_ecmwf_mod.o model_physics_simplinear_mod.o yoerad.o yom_ygfl.o yomchem.o spp_mod.o parkind1.o yomhook.o yomcst.o yoethf.o yompertpar.o
	touch ./cucalln_mf.intfb.ok

./cucalln_mf_openacc.intfb.ok: $(SRC)/./cucalln_mf_openacc.intfb.h model_physics_ecmwf_mod.o model_physics_simplinear_mod.o yoerad.o yom_ygfl.o yomchem.o spp_mod.o parkind1.o yomcst.o yoethf.o yompertpar.o abor1_acc_mod.o stack_mod.o
	touch ./cucalln_mf_openacc.intfb.ok

./cuccdia.intfb.ok: $(SRC)/./cuccdia.intfb.h parkind1.o yomhook.o yoephy.o yoerad.o yoephli.o
	touch ./cuccdia.intfb.ok

./cuccdia_openacc.intfb.ok: $(SRC)/./cuccdia_openacc.intfb.h parkind1.o yoephy.o yoerad.o yoephli.o abor1_acc_mod.o stack_mod.o
	touch ./cuccdia_openacc.intfb.ok

./cuctracer.intfb.ok: $(SRC)/./cuctracer.intfb.h parkind1.o yomhook.o yomcst.o yoecumf.o yoecumf2.o yomcumfs.o
	touch ./cuctracer.intfb.ok

./cuctracer_openacc.intfb.ok: $(SRC)/./cuctracer_openacc.intfb.h parkind1.o yomcst.o yoecumf.o yoecumf2.o yomcumfs.o abor1_acc_mod.o stack_mod.o
	touch ./cuctracer_openacc.intfb.ok

./cuddrafn.intfb.ok: $(SRC)/./cuddrafn.intfb.h yoephli.o parkind1.o yomhook.o yomcst.o yoethf.o yoecumf.o
	touch ./cuddrafn.intfb.ok

./cuddrafn_openacc.intfb.ok: $(SRC)/./cuddrafn_openacc.intfb.h yoephli.o parkind1.o yomcst.o yoethf.o yoecumf.o abor1_acc_mod.o stack_mod.o
	touch ./cuddrafn_openacc.intfb.ok

./cudlfsn.intfb.ok: $(SRC)/./cudlfsn.intfb.h parkind1.o yomhook.o yomcst.o yoethf.o yoecumf.o yoephli.o
	touch ./cudlfsn.intfb.ok

./cudlfsn_openacc.intfb.ok: $(SRC)/./cudlfsn_openacc.intfb.h parkind1.o yomcst.o yoethf.o yoecumf.o yoephli.o abor1_acc_mod.o stack_mod.o
	touch ./cudlfsn_openacc.intfb.ok

./cudtdqn.intfb.ok: $(SRC)/./cudtdqn.intfb.h parkind1.o yomhook.o yomcst.o yoethf.o yoecumf.o yoephy.o yoephli.o yophnc.o
	touch ./cudtdqn.intfb.ok

./cudtdqn_openacc.intfb.ok: $(SRC)/./cudtdqn_openacc.intfb.h parkind1.o yomcst.o yoethf.o yoecumf.o yoephy.o yoephli.o yophnc.o abor1_acc_mod.o stack_mod.o
	touch ./cudtdqn_openacc.intfb.ok

./cududv.intfb.ok: $(SRC)/./cududv.intfb.h parkind1.o yomhook.o yomcst.o yoecumf.o spp_mod.o yompertpar.o spp_gen_mod.o
	touch ./cududv.intfb.ok

./cududv_openacc.intfb.ok: $(SRC)/./cududv_openacc.intfb.h parkind1.o yomcst.o yoecumf.o spp_mod.o yompertpar.o spp_gen_mod.o abor1_acc_mod.o stack_mod.o
	touch ./cududv_openacc.intfb.ok

./cuentr.intfb.ok: $(SRC)/./cuentr.intfb.h parkind1.o yomhook.o yomcst.o yoecumf.o spp_mod.o spp_gen_mod.o
	touch ./cuentr.intfb.ok

./cuentr_openacc.intfb.ok: $(SRC)/./cuentr_openacc.intfb.h parkind1.o yomcst.o yoecumf.o spp_mod.o spp_gen_mod.o abor1_acc_mod.o stack_mod.o
	touch ./cuentr_openacc.intfb.ok

./cuflxn.intfb.ok: $(SRC)/./cuflxn.intfb.h parkind1.o yomhook.o yomcst.o yoethf.o yoephli.o yoecumf.o
	touch ./cuflxn.intfb.ok

./cuflxn_openacc.intfb.ok: $(SRC)/./cuflxn_openacc.intfb.h parkind1.o yomcst.o yoethf.o yoephli.o yoecumf.o abor1_acc_mod.o stack_mod.o
	touch ./cuflxn_openacc.intfb.ok

./cuinin.intfb.ok: $(SRC)/./cuinin.intfb.h parkind1.o yomhook.o yomcst.o yoethf.o yoecumf.o yoephli.o
	touch ./cuinin.intfb.ok

./cuinin_openacc.intfb.ok: $(SRC)/./cuinin_openacc.intfb.h parkind1.o yomcst.o yoethf.o yoecumf.o yoephli.o abor1_acc_mod.o stack_mod.o
	touch ./cuinin_openacc.intfb.ok

./cumastrn.intfb.ok: $(SRC)/./cumastrn.intfb.h model_physics_ecmwf_mod.o model_physics_simplinear_mod.o yom_ygfl.o yomchem.o parkind1.o yomhook.o yomcst.o yoethf.o spp_mod.o spp_gen_mod.o yompertpar.o
	touch ./cumastrn.intfb.ok

./cumastrn_openacc.intfb.ok: $(SRC)/./cumastrn_openacc.intfb.h model_physics_ecmwf_mod.o model_physics_simplinear_mod.o yom_ygfl.o yomchem.o parkind1.o yomcst.o yoethf.o spp_mod.o spp_gen_mod.o yompertpar.o abor1_acc_mod.o stack_mod.o
	touch ./cumastrn_openacc.intfb.ok

./satur.intfb.ok: $(SRC)/./satur.intfb.h parkind1.o yomhook.o yomcst.o yoethf.o
	touch ./satur.intfb.ok

./satur_openacc.intfb.ok: $(SRC)/./satur_openacc.intfb.h parkind1.o yomcst.o yoethf.o abor1_acc_mod.o stack_mod.o
	touch ./satur_openacc.intfb.ok

cuadjtq.func.ok: $(SRC)/cuadjtq.func.h
	touch cuadjtq.func.ok
fcttre.func.ok: $(SRC)/fcttre.func.h
	touch fcttre.func.ok
fcttrm.func.ok: $(SRC)/fcttrm.func.h
	touch fcttrm.func.ok
stack.ok: $(SRC)/stack.h
	touch stack.ok
abor1.o: $(SRC)/abor1.F90 
	$(FC) -c $(SRC)/abor1.F90

abor1_acc_mod.o: $(SRC)/abor1_acc_mod.F90 
	$(FC) -c $(SRC)/abor1_acc_mod.F90

crc64_intrinsic.o: $(SRC)/crc64_intrinsic.F90 parkind1.o
	$(FC) -c $(SRC)/crc64_intrinsic.F90

cuadjtq.o: $(SRC)/cuadjtq.F90 parkind1.o yomhook.o yomcst.o yoethf.o yoephli.o abor1.intfb.ok fcttre.func.ok cuadjtq.func.ok
	$(FC) -c $(SRC)/cuadjtq.F90

cuadjtq_openacc.o: $(SRC)/cuadjtq_openacc.F90 parkind1.o yomcst.o yoethf.o yoephli.o abor1_acc_mod.o stack_mod.o stack.ok fcttre.func.ok cuadjtq.func.ok
	$(FC) -c $(SRC)/cuadjtq_openacc.F90

cuadjtqs.o: $(SRC)/cuadjtqs.F90 parkind1.o yomhook.o yomcst.o yoethf.o fcttre.func.ok
	$(FC) -c $(SRC)/cuadjtqs.F90

cuadjtqs_openacc.o: $(SRC)/cuadjtqs_openacc.F90 parkind1.o yomcst.o yoethf.o abor1_acc_mod.o stack_mod.o stack.ok fcttre.func.ok
	$(FC) -c $(SRC)/cuadjtqs_openacc.F90

cuascn.o: $(SRC)/cuascn.F90 parkind1.o yomhook.o yomcst.o yoethf.o yoecumf.o yoephli.o yoecldp.o yom_ygfl.o spp_mod.o spp_gen_mod.o cuadjtq.intfb.ok cubasmcn.intfb.ok cuentr.intfb.ok fcttre.func.ok
	$(FC) -c $(SRC)/cuascn.F90

cuascn_openacc.o: $(SRC)/cuascn_openacc.F90 parkind1.o yomcst.o yoethf.o yoecumf.o yoephli.o yoecldp.o yom_ygfl.o spp_mod.o spp_gen_mod.o abor1_acc_mod.o stack_mod.o stack.ok cuadjtq.func.ok fcttre.func.ok
	$(FC) -c $(SRC)/cuascn_openacc.F90

cubasen.o: $(SRC)/cubasen.F90 yoephli.o parkind1.o yomhook.o yomcst.o parphy.o yoecumf.o yoecldp.o yoethf.o spp_mod.o spp_gen_mod.o cuadjtq.intfb.ok fcttre.func.ok
	$(FC) -c $(SRC)/cubasen.F90

cubasen_openacc.o: $(SRC)/cubasen_openacc.F90 yoephli.o parkind1.o yomcst.o parphy.o yoecumf.o yoecldp.o yoethf.o spp_mod.o spp_gen_mod.o abor1_acc_mod.o stack_mod.o stack.ok cuadjtq.func.ok fcttre.func.ok
	$(FC) -c $(SRC)/cubasen_openacc.F90

cubasmcn.o: $(SRC)/cubasmcn.F90 parkind1.o yomhook.o yomcst.o yoecumf.o
	$(FC) -c $(SRC)/cubasmcn.F90

cubasmcn_openacc.o: $(SRC)/cubasmcn_openacc.F90 parkind1.o yomcst.o yoecumf.o abor1_acc_mod.o stack_mod.o stack.ok
	$(FC) -c $(SRC)/cubasmcn_openacc.F90

cubidiag.o: $(SRC)/cubidiag.F90 parkind1.o yomhook.o
	$(FC) -c $(SRC)/cubidiag.F90

cubidiag_openacc.o: $(SRC)/cubidiag_openacc.F90 parkind1.o abor1_acc_mod.o stack_mod.o stack.ok
	$(FC) -c $(SRC)/cubidiag_openacc.F90

cucalln_mf.o: $(SRC)/cucalln_mf.F90 model_physics_ecmwf_mod.o model_physics_simplinear_mod.o yoerad.o yom_ygfl.o yomchem.o spp_mod.o parkind1.o yomhook.o yomcst.o yoethf.o yompertpar.o cuccdia.intfb.ok cumastrn.intfb.ok satur.intfb.ok fcttre.func.ok fcttrm.func.ok
	$(FC) -c $(SRC)/cucalln_mf.F90

cucalln_mf_openacc.o: $(SRC)/cucalln_mf_openacc.F90 model_physics_ecmwf_mod.o model_physics_simplinear_mod.o yoerad.o yom_ygfl.o yomchem.o spp_mod.o parkind1.o yomcst.o yoethf.o yompertpar.o abor1_acc_mod.o stack_mod.o stack.ok cuccdia_openacc.intfb.ok cumastrn_openacc.intfb.ok satur_openacc.intfb.ok fcttre.func.ok fcttrm.func.ok
	$(FC) -c $(SRC)/cucalln_mf_openacc.F90

cuccdia.o: $(SRC)/cuccdia.F90 parkind1.o yomhook.o yoephy.o yoerad.o yoephli.o
	$(FC) -c $(SRC)/cuccdia.F90

cuccdia_openacc.o: $(SRC)/cuccdia_openacc.F90 parkind1.o yoephy.o yoerad.o yoephli.o abor1_acc_mod.o stack_mod.o stack.ok
	$(FC) -c $(SRC)/cuccdia_openacc.F90

cuctracer.o: $(SRC)/cuctracer.F90 parkind1.o yomhook.o yomcst.o yoecumf.o yoecumf2.o yomcumfs.o cubidiag.intfb.ok
	$(FC) -c $(SRC)/cuctracer.F90

cuctracer_openacc.o: $(SRC)/cuctracer_openacc.F90 parkind1.o yomcst.o yoecumf.o yoecumf2.o yomcumfs.o abor1_acc_mod.o stack_mod.o stack.ok cubidiag_openacc.intfb.ok
	$(FC) -c $(SRC)/cuctracer_openacc.F90

cuddrafn.o: $(SRC)/cuddrafn.F90 yoephli.o parkind1.o yomhook.o yomcst.o yoethf.o yoecumf.o cuadjtq.intfb.ok
	$(FC) -c $(SRC)/cuddrafn.F90

cuddrafn_openacc.o: $(SRC)/cuddrafn_openacc.F90 yoephli.o parkind1.o yomcst.o yoethf.o yoecumf.o abor1_acc_mod.o stack_mod.o stack.ok cuadjtq.func.ok fcttre.func.ok
	$(FC) -c $(SRC)/cuddrafn_openacc.F90

cudlfsn.o: $(SRC)/cudlfsn.F90 parkind1.o yomhook.o yomcst.o yoethf.o yoecumf.o yoephli.o cuadjtq.intfb.ok fcttre.func.ok
	$(FC) -c $(SRC)/cudlfsn.F90

cudlfsn_openacc.o: $(SRC)/cudlfsn_openacc.F90 parkind1.o yomcst.o yoethf.o yoecumf.o yoephli.o abor1_acc_mod.o stack_mod.o stack.ok cuadjtq.func.ok fcttre.func.ok
	$(FC) -c $(SRC)/cudlfsn_openacc.F90

cudtdqn.o: $(SRC)/cudtdqn.F90 parkind1.o yomhook.o yomcst.o yoethf.o yoecumf.o yoephy.o yoephli.o yophnc.o cubidiag.intfb.ok fcttre.func.ok
	$(FC) -c $(SRC)/cudtdqn.F90

cudtdqn_openacc.o: $(SRC)/cudtdqn_openacc.F90 parkind1.o yomcst.o yoethf.o yoecumf.o yoephy.o yoephli.o yophnc.o abor1_acc_mod.o stack_mod.o stack.ok cubidiag_openacc.intfb.ok fcttre.func.ok
	$(FC) -c $(SRC)/cudtdqn_openacc.F90

cududv.o: $(SRC)/cududv.F90 parkind1.o yomhook.o yomcst.o yoecumf.o spp_mod.o yompertpar.o spp_gen_mod.o cubidiag.intfb.ok
	$(FC) -c $(SRC)/cududv.F90

cududv_openacc.o: $(SRC)/cududv_openacc.F90 parkind1.o yomcst.o yoecumf.o spp_mod.o yompertpar.o spp_gen_mod.o abor1_acc_mod.o stack_mod.o stack.ok cubidiag_openacc.intfb.ok
	$(FC) -c $(SRC)/cududv_openacc.F90

cuentr.o: $(SRC)/cuentr.F90 parkind1.o yomhook.o yomcst.o yoecumf.o spp_mod.o spp_gen_mod.o
	$(FC) -c $(SRC)/cuentr.F90

cuentr_openacc.o: $(SRC)/cuentr_openacc.F90 parkind1.o yomcst.o yoecumf.o spp_mod.o spp_gen_mod.o abor1_acc_mod.o stack_mod.o stack.ok
	$(FC) -c $(SRC)/cuentr_openacc.F90

cuflxn.o: $(SRC)/cuflxn.F90 parkind1.o yomhook.o yomcst.o yoethf.o yoephli.o yoecumf.o fcttre.func.ok
	$(FC) -c $(SRC)/cuflxn.F90

cuflxn_openacc.o: $(SRC)/cuflxn_openacc.F90 parkind1.o yomcst.o yoethf.o yoephli.o yoecumf.o abor1_acc_mod.o stack_mod.o stack.ok fcttre.func.ok
	$(FC) -c $(SRC)/cuflxn_openacc.F90

cuinin.o: $(SRC)/cuinin.F90 parkind1.o yomhook.o yomcst.o yoethf.o yoecumf.o yoephli.o cuadjtq.intfb.ok cuadjtqs.intfb.ok
	$(FC) -c $(SRC)/cuinin.F90

cuinin_openacc.o: $(SRC)/cuinin_openacc.F90 parkind1.o yomcst.o yoethf.o yoecumf.o yoephli.o abor1_acc_mod.o stack_mod.o stack.ok cuadjtq.func.ok fcttre.func.ok
	$(FC) -c $(SRC)/cuinin_openacc.F90

cumastrn.o: $(SRC)/cumastrn.F90 model_physics_ecmwf_mod.o model_physics_simplinear_mod.o yom_ygfl.o yomchem.o parkind1.o yomhook.o yomcst.o yoethf.o spp_mod.o spp_gen_mod.o yompertpar.o cuascn.intfb.ok cubasen.intfb.ok cuddrafn.intfb.ok cudlfsn.intfb.ok cudtdqn.intfb.ok cududv.intfb.ok cuflxn.intfb.ok cuinin.intfb.ok cuctracer.intfb.ok fcttre.func.ok
	$(FC) -c $(SRC)/cumastrn.F90

cumastrn_openacc.o: $(SRC)/cumastrn_openacc.F90 model_physics_ecmwf_mod.o model_physics_simplinear_mod.o yom_ygfl.o yomchem.o parkind1.o yomcst.o yoethf.o spp_mod.o spp_gen_mod.o yompertpar.o abor1_acc_mod.o stack_mod.o stack.ok cuascn_openacc.intfb.ok cubasen_openacc.intfb.ok cuddrafn_openacc.intfb.ok cudlfsn_openacc.intfb.ok cudtdqn_openacc.intfb.ok cududv_openacc.intfb.ok cuflxn_openacc.intfb.ok cuinin_openacc.intfb.ok cuctracer_openacc.intfb.ok fcttre.func.ok
	$(FC) -c $(SRC)/cumastrn_openacc.F90

main_cucalln_mf.o: $(SRC)/main_cucalln_mf.F90 model_physics_ecmwf_mod.o model_physics_simplinear_mod.o yoerad.o yom_ygfl.o yomchem.o spp_mod.o parkind1.o yomhook.o yomcst.o yoethf.o yompertpar.o util_model_physics_ecmwf_type_mod.o util_model_physics_simplinear_type_mod.o util_terad_mod.o util_type_gfld_mod.o util_tchem_mod.o util_tspp_config_mod.o util_tcst_mod.o util_tthf_mod.o util_tpertpar_mod.o yomdata.o xrd_getoptions.o xrd_unix_env.o stack_mod.o stack.ok cucalln_mf.intfb.ok cucalln_mf_openacc.intfb.ok
	$(FC) -c $(SRC)/main_cucalln_mf.F90

model_physics_ecmwf_mod.o: $(SRC)/model_physics_ecmwf_mod.F90 yoephy.o yoecld.o yoecldp.o yoecnd.o yoecumf.o yoe_cuconvca.o yoegwd.o yoegwwms.o yoethf.o
	$(FC) -c $(SRC)/model_physics_ecmwf_mod.F90

model_physics_simplinear_mod.o: $(SRC)/model_physics_simplinear_mod.F90 yoephli.o yomcumfs.o yoegwdwms.o yoecumf2.o yophlc.o yophnc.o yomncl.o yomsrftlad.o yomsphyhist.o
	$(FC) -c $(SRC)/model_physics_simplinear_mod.F90

par_gfl.o: $(SRC)/par_gfl.F90 parkind1.o
	$(FC) -c $(SRC)/par_gfl.F90

parkind1.o: $(SRC)/parkind1.F90 
	$(FC) -c $(SRC)/parkind1.F90

parphy.o: $(SRC)/parphy.F90 parkind1.o
	$(FC) -c $(SRC)/parphy.F90

satur.o: $(SRC)/satur.F90 parkind1.o yomhook.o yomcst.o yoethf.o fcttre.func.ok
	$(FC) -c $(SRC)/satur.F90

satur_openacc.o: $(SRC)/satur_openacc.F90 parkind1.o yomcst.o yoethf.o abor1_acc_mod.o stack_mod.o stack.ok fcttre.func.ok
	$(FC) -c $(SRC)/satur_openacc.F90

spp_def_mod.o: $(SRC)/spp_def_mod.F90 parkind1.o spp_gen_mod.o abor1.intfb.ok
	$(FC) -c $(SRC)/spp_def_mod.F90

spp_gen_mod.o: $(SRC)/spp_gen_mod.F90 parkind1.o
	$(FC) -c $(SRC)/spp_gen_mod.F90

spp_mod.o: $(SRC)/spp_mod.F90 parkind1.o yomhook.o spp_gen_mod.o spp_def_mod.o
	$(FC) -c $(SRC)/spp_mod.F90

stack_mod.o: $(SRC)/stack_mod.F90 parkind1.o
	$(FC) -c $(SRC)/stack_mod.F90

util_model_physics_ecmwf_type_mod.o: $(SRC)/util_model_physics_ecmwf_type_mod.F90 model_physics_ecmwf_mod.o util_tecldp_mod.o util_tecld_mod.o util_tecnd_mod.o util_tecuconvca_mod.o util_tecumf_mod.o util_tegwd_mod.o util_tegwwms_mod.o util_tephy_mod.o util_tthf_mod.o crc64_intrinsic.o
	$(FC) -c $(SRC)/util_model_physics_ecmwf_type_mod.F90

util_model_physics_simplinear_type_mod.o: $(SRC)/util_model_physics_simplinear_type_mod.F90 model_physics_simplinear_mod.o util_sphys_hist_type_mod.o util_tcumfs_mod.o util_tecumf2_mod.o util_tegwdwms_mod.o util_tephli_mod.o util_tncl_mod.o util_tphlc_mod.o util_tphnc_mod.o util_tsrftlad_mod.o crc64_intrinsic.o
	$(FC) -c $(SRC)/util_model_physics_simplinear_type_mod.F90

util_sphys_hist_type_mod.o: $(SRC)/util_sphys_hist_type_mod.F90 yomsphyhist.o parkind1.o crc64_intrinsic.o
	$(FC) -c $(SRC)/util_sphys_hist_type_mod.F90

util_spp_model_mod.o: $(SRC)/util_spp_model_mod.F90 spp_gen_mod.o util_spp_pert_mod.o parkind1.o crc64_intrinsic.o
	$(FC) -c $(SRC)/util_spp_model_mod.F90

util_spp_pert_mod.o: $(SRC)/util_spp_pert_mod.F90 spp_gen_mod.o parkind1.o crc64_intrinsic.o
	$(FC) -c $(SRC)/util_spp_pert_mod.F90

util_spp_pert_pointer_mod.o: $(SRC)/util_spp_pert_pointer_mod.F90 spp_def_mod.o crc64_intrinsic.o
	$(FC) -c $(SRC)/util_spp_pert_pointer_mod.F90

util_tchem_mod.o: $(SRC)/util_tchem_mod.F90 yomchem.o parkind1.o crc64_intrinsic.o
	$(FC) -c $(SRC)/util_tchem_mod.F90

util_tcst_mod.o: $(SRC)/util_tcst_mod.F90 yomcst.o parkind1.o crc64_intrinsic.o
	$(FC) -c $(SRC)/util_tcst_mod.F90

util_tcumfs_mod.o: $(SRC)/util_tcumfs_mod.F90 yomcumfs.o crc64_intrinsic.o
	$(FC) -c $(SRC)/util_tcumfs_mod.F90

util_tecld_mod.o: $(SRC)/util_tecld_mod.F90 yoecld.o parkind1.o crc64_intrinsic.o
	$(FC) -c $(SRC)/util_tecld_mod.F90

util_tecldp_mod.o: $(SRC)/util_tecldp_mod.F90 yoecldp.o parkind1.o crc64_intrinsic.o
	$(FC) -c $(SRC)/util_tecldp_mod.F90

util_tecnd_mod.o: $(SRC)/util_tecnd_mod.F90 yoecnd.o parkind1.o crc64_intrinsic.o
	$(FC) -c $(SRC)/util_tecnd_mod.F90

util_tecuconvca_mod.o: $(SRC)/util_tecuconvca_mod.F90 yoe_cuconvca.o parkind1.o crc64_intrinsic.o
	$(FC) -c $(SRC)/util_tecuconvca_mod.F90

util_tecumf2_mod.o: $(SRC)/util_tecumf2_mod.F90 yoecumf2.o parkind1.o crc64_intrinsic.o
	$(FC) -c $(SRC)/util_tecumf2_mod.F90

util_tecumf_mod.o: $(SRC)/util_tecumf_mod.F90 yoecumf.o parkind1.o crc64_intrinsic.o
	$(FC) -c $(SRC)/util_tecumf_mod.F90

util_tegwd_mod.o: $(SRC)/util_tegwd_mod.F90 yoegwd.o parkind1.o crc64_intrinsic.o
	$(FC) -c $(SRC)/util_tegwd_mod.F90

util_tegwdwms_mod.o: $(SRC)/util_tegwdwms_mod.F90 yoegwdwms.o crc64_intrinsic.o
	$(FC) -c $(SRC)/util_tegwdwms_mod.F90

util_tegwwms_mod.o: $(SRC)/util_tegwwms_mod.F90 yoegwwms.o parkind1.o crc64_intrinsic.o
	$(FC) -c $(SRC)/util_tegwwms_mod.F90

util_tephli_mod.o: $(SRC)/util_tephli_mod.F90 yoephli.o parkind1.o crc64_intrinsic.o
	$(FC) -c $(SRC)/util_tephli_mod.F90

util_tephy_mod.o: $(SRC)/util_tephy_mod.F90 yoephy.o parkind1.o crc64_intrinsic.o
	$(FC) -c $(SRC)/util_tephy_mod.F90

util_terad_mod.o: $(SRC)/util_terad_mod.F90 yoerad.o util_tspectralplanck_mod.o parkind1.o crc64_intrinsic.o
	$(FC) -c $(SRC)/util_terad_mod.F90

util_tncl_mod.o: $(SRC)/util_tncl_mod.F90 yomncl.o crc64_intrinsic.o
	$(FC) -c $(SRC)/util_tncl_mod.F90

util_tpertpar_mod.o: $(SRC)/util_tpertpar_mod.F90 yompertpar.o parkind1.o crc64_intrinsic.o
	$(FC) -c $(SRC)/util_tpertpar_mod.F90

util_tphlc_mod.o: $(SRC)/util_tphlc_mod.F90 yophlc.o parkind1.o crc64_intrinsic.o
	$(FC) -c $(SRC)/util_tphlc_mod.F90

util_tphnc_mod.o: $(SRC)/util_tphnc_mod.F90 yophnc.o crc64_intrinsic.o
	$(FC) -c $(SRC)/util_tphnc_mod.F90

util_tspectralplanck_mod.o: $(SRC)/util_tspectralplanck_mod.F90 yoe_spectral_planck.o parkind1.o crc64_intrinsic.o
	$(FC) -c $(SRC)/util_tspectralplanck_mod.F90

util_tspp_config_mod.o: $(SRC)/util_tspp_config_mod.F90 spp_mod.o util_spp_model_mod.o util_spp_pert_pointer_mod.o parkind1.o crc64_intrinsic.o
	$(FC) -c $(SRC)/util_tspp_config_mod.F90

util_tsrftlad_mod.o: $(SRC)/util_tsrftlad_mod.F90 yomsrftlad.o parkind1.o crc64_intrinsic.o
	$(FC) -c $(SRC)/util_tsrftlad_mod.F90

util_tthf_mod.o: $(SRC)/util_tthf_mod.F90 yoethf.o parkind1.o crc64_intrinsic.o
	$(FC) -c $(SRC)/util_tthf_mod.F90

util_type_aero_wvl_diag_mod.o: $(SRC)/util_type_aero_wvl_diag_mod.F90 yoe_aerodiag.o crc64_intrinsic.o
	$(FC) -c $(SRC)/util_type_aero_wvl_diag_mod.F90

util_type_gfl_comp_mod.o: $(SRC)/util_type_gfl_comp_mod.F90 yom_ygfl.o parkind1.o crc64_intrinsic.o
	$(FC) -c $(SRC)/util_type_gfl_comp_mod.F90

util_type_gfl_naml_mod.o: $(SRC)/util_type_gfl_naml_mod.F90 yom_ygfl.o parkind1.o crc64_intrinsic.o
	$(FC) -c $(SRC)/util_type_gfl_naml_mod.F90

util_type_gfld_mod.o: $(SRC)/util_type_gfld_mod.F90 yom_ygfl.o util_type_aero_wvl_diag_mod.o util_type_gfl_comp_mod.o util_type_gfl_naml_mod.o parkind1.o crc64_intrinsic.o
	$(FC) -c $(SRC)/util_type_gfld_mod.F90

xrd_getoptions.o: $(SRC)/xrd_getoptions.F90 parkind1.o xrd_unix_env.o
	$(FC) -c $(SRC)/xrd_getoptions.F90

xrd_unix_env.o: $(SRC)/xrd_unix_env.F90 parkind1.o
	$(FC) -c $(SRC)/xrd_unix_env.F90

yoe_aerodiag.o: $(SRC)/yoe_aerodiag.F90 parkind1.o
	$(FC) -c $(SRC)/yoe_aerodiag.F90

yoe_cuconvca.o: $(SRC)/yoe_cuconvca.F90 parkind1.o
	$(FC) -c $(SRC)/yoe_cuconvca.F90

yoe_spectral_planck.o: $(SRC)/yoe_spectral_planck.F90 parkind1.o yomhook.o
	$(FC) -c $(SRC)/yoe_spectral_planck.F90

yoecld.o: $(SRC)/yoecld.F90 parkind1.o
	$(FC) -c $(SRC)/yoecld.F90

yoecldp.o: $(SRC)/yoecldp.F90 parkind1.o yomhook.o
	$(FC) -c $(SRC)/yoecldp.F90

yoecnd.o: $(SRC)/yoecnd.F90 parkind1.o
	$(FC) -c $(SRC)/yoecnd.F90

yoecumf.o: $(SRC)/yoecumf.F90 parkind1.o
	$(FC) -c $(SRC)/yoecumf.F90

yoecumf2.o: $(SRC)/yoecumf2.F90 parkind1.o
	$(FC) -c $(SRC)/yoecumf2.F90

yoegwd.o: $(SRC)/yoegwd.F90 parkind1.o
	$(FC) -c $(SRC)/yoegwd.F90

yoegwdwms.o: $(SRC)/yoegwdwms.F90 parkind1.o
	$(FC) -c $(SRC)/yoegwdwms.F90

yoegwwms.o: $(SRC)/yoegwwms.F90 parkind1.o
	$(FC) -c $(SRC)/yoegwwms.F90

yoephli.o: $(SRC)/yoephli.F90 parkind1.o
	$(FC) -c $(SRC)/yoephli.F90

yoephy.o: $(SRC)/yoephy.F90 parkind1.o
	$(FC) -c $(SRC)/yoephy.F90

yoerad.o: $(SRC)/yoerad.F90 parkind1.o yoe_spectral_planck.o
	$(FC) -c $(SRC)/yoerad.F90

yoethf.o: $(SRC)/yoethf.F90 parkind1.o
	$(FC) -c $(SRC)/yoethf.F90

yom_ygfl.o: $(SRC)/yom_ygfl.F90 parkind1.o yoe_aerodiag.o par_gfl.o
	$(FC) -c $(SRC)/yom_ygfl.F90

yomchem.o: $(SRC)/yomchem.F90 parkind1.o
	$(FC) -c $(SRC)/yomchem.F90

yomcst.o: $(SRC)/yomcst.F90 parkind1.o
	$(FC) -c $(SRC)/yomcst.F90

yomcumfs.o: $(SRC)/yomcumfs.F90 parkind1.o yomhook.o
	$(FC) -c $(SRC)/yomcumfs.F90

yomdata.o: $(SRC)/yomdata.F90 parkind1.o
	$(FC) -c $(SRC)/yomdata.F90

yomhook.o: $(SRC)/yomhook.F90 parkind1.o
	$(FC) -c $(SRC)/yomhook.F90

yomncl.o: $(SRC)/yomncl.F90 parkind1.o
	$(FC) -c $(SRC)/yomncl.F90

yompertpar.o: $(SRC)/yompertpar.F90 parkind1.o
	$(FC) -c $(SRC)/yompertpar.F90

yomsphyhist.o: $(SRC)/yomsphyhist.F90 parkind1.o
	$(FC) -c $(SRC)/yomsphyhist.F90

yomsrftlad.o: $(SRC)/yomsrftlad.F90 parkind1.o
	$(FC) -c $(SRC)/yomsrftlad.F90

yophlc.o: $(SRC)/yophlc.F90 parkind1.o
	$(FC) -c $(SRC)/yophlc.F90

yophnc.o: $(SRC)/yophnc.F90 
	$(FC) -c $(SRC)/yophnc.F90

dummy.o: dummy.c
	$(CC) -c $(SRC)/dummy.c
get_time.o: get_time.c
	$(CC) -c $(SRC)/get_time.c
main_cucalln_mf.x: main_cucalln_mf.o abor1.o abor1_acc_mod.o crc64_intrinsic.o cuadjtq.o cuadjtq_openacc.o cuadjtqs.o cuadjtqs_openacc.o cuascn.o cuascn_openacc.o cubasen.o cubasen_openacc.o cubasmcn.o cubasmcn_openacc.o cubidiag.o cubidiag_openacc.o cucalln_mf.o cucalln_mf_openacc.o cuccdia.o cuccdia_openacc.o cuctracer.o cuctracer_openacc.o cuddrafn.o cuddrafn_openacc.o cudlfsn.o cudlfsn_openacc.o cudtdqn.o cudtdqn_openacc.o cududv.o cududv_openacc.o cuentr.o cuentr_openacc.o cuflxn.o cuflxn_openacc.o cuinin.o cuinin_openacc.o cumastrn.o cumastrn_openacc.o model_physics_ecmwf_mod.o model_physics_simplinear_mod.o par_gfl.o parkind1.o parphy.o satur.o satur_openacc.o spp_def_mod.o spp_gen_mod.o spp_mod.o stack_mod.o util_model_physics_ecmwf_type_mod.o util_model_physics_simplinear_type_mod.o util_sphys_hist_type_mod.o util_spp_model_mod.o util_spp_pert_mod.o util_spp_pert_pointer_mod.o util_tchem_mod.o util_tcst_mod.o util_tcumfs_mod.o util_tecld_mod.o util_tecldp_mod.o util_tecnd_mod.o util_tecuconvca_mod.o util_tecumf2_mod.o util_tecumf_mod.o util_tegwd_mod.o util_tegwdwms_mod.o util_tegwwms_mod.o util_tephli_mod.o util_tephy_mod.o util_terad_mod.o util_tncl_mod.o util_tpertpar_mod.o util_tphlc_mod.o util_tphnc_mod.o util_tspectralplanck_mod.o util_tspp_config_mod.o util_tsrftlad_mod.o util_tthf_mod.o util_type_aero_wvl_diag_mod.o util_type_gfl_comp_mod.o util_type_gfl_naml_mod.o util_type_gfld_mod.o xrd_getoptions.o xrd_unix_env.o yoe_aerodiag.o yoe_cuconvca.o yoe_spectral_planck.o yoecld.o yoecldp.o yoecnd.o yoecumf.o yoecumf2.o yoegwd.o yoegwdwms.o yoegwwms.o yoephli.o yoephy.o yoerad.o yoethf.o yom_ygfl.o yomchem.o yomcst.o yomcumfs.o yomdata.o yomhook.o yomncl.o yompertpar.o yomsphyhist.o yomsrftlad.o yophlc.o yophnc.o dummy.o get_time.o
	$(FC) -o main_cucalln_mf.x main_cucalln_mf.o abor1.o abor1_acc_mod.o crc64_intrinsic.o cuadjtq.o cuadjtq_openacc.o cuadjtqs.o cuadjtqs_openacc.o cuascn.o cuascn_openacc.o cubasen.o cubasen_openacc.o cubasmcn.o cubasmcn_openacc.o cubidiag.o cubidiag_openacc.o cucalln_mf.o cucalln_mf_openacc.o cuccdia.o cuccdia_openacc.o cuctracer.o cuctracer_openacc.o cuddrafn.o cuddrafn_openacc.o cudlfsn.o cudlfsn_openacc.o cudtdqn.o cudtdqn_openacc.o cududv.o cududv_openacc.o cuentr.o cuentr_openacc.o cuflxn.o cuflxn_openacc.o cuinin.o cuinin_openacc.o cumastrn.o cumastrn_openacc.o model_physics_ecmwf_mod.o model_physics_simplinear_mod.o par_gfl.o parkind1.o parphy.o satur.o satur_openacc.o spp_def_mod.o spp_gen_mod.o spp_mod.o stack_mod.o util_model_physics_ecmwf_type_mod.o util_model_physics_simplinear_type_mod.o util_sphys_hist_type_mod.o util_spp_model_mod.o util_spp_pert_mod.o util_spp_pert_pointer_mod.o util_tchem_mod.o util_tcst_mod.o util_tcumfs_mod.o util_tecld_mod.o util_tecldp_mod.o util_tecnd_mod.o util_tecuconvca_mod.o util_tecumf2_mod.o util_tecumf_mod.o util_tegwd_mod.o util_tegwdwms_mod.o util_tegwwms_mod.o util_tephli_mod.o util_tephy_mod.o util_terad_mod.o util_tncl_mod.o util_tpertpar_mod.o util_tphlc_mod.o util_tphnc_mod.o util_tspectralplanck_mod.o util_tspp_config_mod.o util_tsrftlad_mod.o util_tthf_mod.o util_type_aero_wvl_diag_mod.o util_type_gfl_comp_mod.o util_type_gfl_naml_mod.o util_type_gfld_mod.o xrd_getoptions.o xrd_unix_env.o yoe_aerodiag.o yoe_cuconvca.o yoe_spectral_planck.o yoecld.o yoecldp.o yoecnd.o yoecumf.o yoecumf2.o yoegwd.o yoegwdwms.o yoegwwms.o yoephli.o yoephy.o yoerad.o yoethf.o yom_ygfl.o yomchem.o yomcst.o yomcumfs.o yomdata.o yomhook.o yomncl.o yompertpar.o yomsphyhist.o yomsrftlad.o yophlc.o yophnc.o dummy.o get_time.o $(LIBS)


subclean:
	\rm -f abor1.o cuadjtq.o cuadjtq_openacc.o cuadjtqs.o cuadjtqs_openacc.o cuascn.o cuascn_openacc.o cubasen.o cubasen_openacc.o cubasmcn.o cubasmcn_openacc.o cubidiag.o cubidiag_openacc.o cucalln_mf.o cucalln_mf_openacc.o cuccdia.o cuccdia_openacc.o cuctracer.o cuctracer_openacc.o cuddrafn.o cuddrafn_openacc.o cudlfsn.o cudlfsn_openacc.o cudtdqn.o cudtdqn_openacc.o cududv.o cududv_openacc.o cuentr.o cuentr_openacc.o cuflxn.o cuflxn_openacc.o cuinin.o cuinin_openacc.o cumastrn.o cumastrn_openacc.o main_cucalln_mf.o satur.o satur_openacc.o

clean: 
	\rm -f *.o *.xml *.a *.x *.mod *.optrpt 

tidy:
	\rm -f *.xml *.optrpt
