BSD 3-Clause License

Copyright 2023 Lawrence T. Clark, Vinay Vashishtha, or Arizona State
University

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice,
this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright
notice, this list of conditions and the following disclaimer in the
documentation and/or other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its
contributors may be used to endorse or promote products derived from this
software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
POSSIBILITY OF SUCH DAMAGE.

# Calibre Usage Instructions

The Calibre tool environment is available through the Virtuoso toolbar. The
DRC, LVS, and PEX runsets have been supplied with the PDK. 

User is advised to create directories named drc, lvs, and pex in their
local PDK run directory to which they may direct the files generated when
running Calibre DRC, LVS, and PEX, respectively, in order to help reduce
cluttering.

## Rule Files

Rule files specific to DRC, LVS, and PEX are required to run the respective
tools and may be found at:

**For DRC:**

   $PDK_DIR/calibre/ruledirs/drc/drcRules_calibre_asap5.rul 

**For LVS:**

   $PDK_DIR/calibre/ruledirs/lvs/lvsRules_calibre_asap5.rul 

**For PEX/xACT:**

   $PDK_DIR/calibre/ruledirs/rcx/rcxControl_calibre_asap5.rul 

Specify the above path in the 'DRC/LVS/PEX Rules File' field in the 'Rules'
tab for the corresponding tools. Within the same tab, specify paths to the
drc, lvs, and pex run directories, that were created earlier, in the
'DRC/LVS/PEX Run Directory' field. 

## Runsets

Settings from a particular DRC/LVS/PEX run may be saved as runsets for
later use. Sample runsets are also provided below. However, users are advised
to create their own according to their need. 

**Sample DRC runset:**

   $PDK_DIR/calibre/rundirs/drc/runset_dir_drc/drcRunset_asap5

**Sample LVS runset:**

   $PDK_DIR/calibre/rundirs/lvs/runset_dir_lvs/lvsRunset_asap5

**Sample xACT runset:**

   $PDK_DIR/calibre/rundirs/pex/runset_dir_pex/xactRunset_asap5

User will need to load the runset the very first time during the
start-up. On subsequent invocation, the user will be presented with a
runset used previously. 
