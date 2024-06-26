#!/usr/bin/env bash
# Change if ternary_matmul repo was cloned elsewhere
opae_proj_dir="${HOME}/ternary_matmul"
# Setup OPAE
source /data/intel_fpga/devcloudLoginToolSetup.sh
# Select S10 synthesis tooling
tools_setup -t S10DS
afu_synth_setup -s ${opae_proj_dir}/afu/rtl/filelist.txt -f  ${opae_proj_dir}/afu/build_synth
cd ${opae_proj_dir}/afu/build_synth
$OPAE_PLATFORM_ROOT/bin/run.sh
