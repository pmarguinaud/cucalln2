#!/bin/bash

set -x
set -e

. $(dirname $0)/prolog.sh

for f in \
  arpifs/phys_radi/recmwf.F90                                            \
  arpifs/phys_dmn/apl_arpege_init.F90                                    \
  arpifs/phys_dmn/apl_arpege_init_surfex.F90                             \
  arpifs/phys_dmn/apl_arpege_oceanic_fluxes.F90                          \
  arpifs/phys_dmn/apl_wind_gust.F90                                      \
  arpifs/phys_dmn/mf_phys_mocon.F90                                      \
  arpifs/phys_dmn/apl_arpege_shallow_convection_and_turbulence.F90       \
  arpifs/phys_dmn/apl_arpege_albedo_computation.F90                      \
  arpifs/phys_dmn/apl_arpege_aerosols_for_radiation.F90                  \
  arpifs/phys_dmn/apl_arpege_cloudiness.F90                              \
  arpifs/phys_dmn/apl_arpege_radiation.F90                               \
  arpifs/phys_dmn/apl_arpege_soil_hydro.F90                              \
  arpifs/phys_dmn/apl_arpege_deep_convection.F90                         \
  arpifs/phys_dmn/apl_arpege_surface.F90                                 \
  arpifs/phys_dmn/apl_arpege_precipitation.F90                           \
  arpifs/phys_dmn/apl_arpege_hydro_budget.F90                            \
  arpifs/phys_dmn/apl_arpege_dprecips.F90                                \
  arpifs/phys_dmn/apl_arpege_atmosphere_update.F90                       \
  arpifs/adiab/cputqy_aplpar_expl.F90                                    \
  arpifs/adiab/acctnd0.F90                                               \
  arpifs/adiab/cputqy0.F90                                               \
  arpifs/phys_dmn/mf_phys_transfer.F90                                   \
  arpifs/phys_dmn/apl_arpege_surface_update.F90                          \
  arpifs/phys_dmn/apl_arpege.F90                                         \
  arpifs/phys_dmn/mf_phys_prep.F90                                       \
  arpifs/phys_dmn/mf_phys_init.F90                                       \
  arpifs/phys_dmn/mf_phys.F90                                            \
  arpifs/phys_dmn/mf_phys_save_phsurf_part2.F90                          \
  arpifs/phys_dmn/mf_phys_save_phsurf_part1.F90                          \
  arpifs/phys_dmn/mf_phys_fpl_part2.F90                                  \
  arpifs/phys_dmn/mf_phys_fpl_part1.F90                                  \
  arpifs/phys_dmn/arp_shallow_mf.F90                                     \
  arpifs/phys_dmn/acvppkf.F90                                            \
  arpifs/phys_dmn/apl_arpege_mwave.F90                                   \
  arpifs/control/scan2m_ts.F90                                           \
  arpifs/adiab/ctvtot_expl.F90  
do
# pointerParallel.pl --types-fieldapi-dir types-fieldapi --post-parallel synchost --only-if-newer --version src/local/$f 
  dir=$(dirname $f)
  pointerParallel.pl --gpumemstat --stack84 --use-acpy --types-fieldapi-dir types-fieldapi --post-parallel synchost,nullify --version --dir src/local/$dir $(resolve --user $f)
done

grep _parallel src/local/arpifs/phys_dmn/apl_arpege_parallel.F90
