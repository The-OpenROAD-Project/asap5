# BSD 3-Clause License
# 
# Copyright 2023 Lawrence T. Clark, Vinay Vashishtha, or Arizona State
# University
# 
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
# 
# 1. Redistributions of source code must retain the above copyright notice,
# this list of conditions and the following disclaimer.
# 
# 2. Redistributions in binary form must reproduce the above copyright
# notice, this list of conditions and the following disclaimer in the
# documentation and/or other materials provided with the distribution.
# 
# 3. Neither the name of the copyright holder nor the names of its
# contributors may be used to endorse or promote products derived from this
# software without specific prior written permission.
# 
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
# LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
# CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.

# ###########################################################################


# This will copy the csh file that sets the environmental variable $PDK_DIR
if !( -f ${PWD}/set_pdk_path.csh) then
  scp -r ${PDK_DIR}/cdslib/setup/set_pdk_path.csh ${PWD}/set_pdk_path.csh
endif

# This will create a soft link to the cdsinit file containing the code which,
# among other things, will include the Calibre toolbox in Virtuoso.
if !(-f ${PWD}/.cdsinit) then
  ln -s ${PDK_DIR}/cdslib/setup/cdsinit ${PWD}/.cdsinit
endif

# This will copy the cds.lib file that includes the following Cadence
# libraries: US_8ths, ahdlLib, analogLib, basic, cdsDefTechLib,
# functional, rfExamples, rfLib, and sample
# The cds.lib file also contains the ASAP5 technology library.
if !( -f ${PWD}/cds.lib) then
  scp -r ${PDK_DIR}/cdslib/setup/cds.lib ${PWD}/cds.lib
endif

# This will create a soft link in the user's local PDK run
# directory to the display resource file present in the ASAP5 PDK bundle.
if !( -f ${PWD}/display.drf) then
  ln -s ${PDK_DIR}/cdslib/setup/display.drf ${PWD}/display.drf
endif

# Create a softlink to the Calibre usage instructions
if !( -f ${PWD}/Calibre_Usage_Instructions.txt) then
  ln -s ${PDK_DIR}/Calibre_Usage_Instructions.txt ${PWD}/Calibre_Usage_Instructions.txt
endif

# Create a softlink to the LICENSE
if !( -f ${PWD}/LICENSE) then
  ln -s ${PDK_DIR}/LICENSE ${PWD}/LICENSE
endif

# Copy the ASAP5 MEJ paper
if !( -f ${PWD}/asap5_pdk_mej_paper.pdf) then
  scp -r ${PDK_DIR}/docs/asap5_pdk_mej_paper.pdf ${PWD}/asap5_pdk_mej_paper.pdf
endif

# Copy a script to kill locks
if !( -f ${PWD}/.remove_locks.sh) then
  scp -r ${PDK_DIR}/.remove_locks.sh ${PWD}/.remove_locks.sh
endif

# Create drc, lvs, and pex directories
if !( -f ${PWD}/drc) then
  mkdir ${PWD}/drc
endif

if !( -f ${PWD}/lvs) then
  mkdir ${PWD}/lvs
endif

if !( -f ${PWD}/pex) then
  mkdir ${PWD}/pex
endif
