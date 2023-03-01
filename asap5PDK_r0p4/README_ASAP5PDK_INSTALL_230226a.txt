* BSD 3-Clause License
* 
* Copyright 2023 Lawrence T. Clark, Vinay Vashishtha, or Arizona State
* University
* 
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions are met:
* 
* 1. Redistributions of source code must retain the above copyright notice,
* this list of conditions and the following disclaimer.
* 
* 2. Redistributions in binary form must reproduce the above copyright
* notice, this list of conditions and the following disclaimer in the
* documentation and/or other materials provided with the distribution.
* 
* 3. Neither the name of the copyright holder nor the names of its
* contributors may be used to endorse or promote products derived from this
* software without specific prior written permission.
* 
* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
* AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
* IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
* ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
* LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
* CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
* SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
* INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
* CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
* ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
* POSSIBILITY OF SUCH DAMAGE.

*--------------------------------------------------------------------------
* ASAP5 PDK
*--------------------------------------------------------------------------

* Readme File Author : Vinay Vashishtha
* Last Modified On   : February 26, 2023
* Description	     : This file describes the PDK directory structure and
* 		       the steps required to install the ASAP5 PDK. 
*--------------------------------------------------------------------------

*--------------------------
* PDK Usage Instructions
*--------------------------

* Instructions to the administrator/course instructor for setting up the
* PDK 
*--------------------------------------------------------------------------

1. Untar the PDK archive 'asap5PDK_r0p4.tar.bz2' (where 0p1 is the PDK
   version number) by using the following command:

   tar -xvjf asap5PDK_r0p4.tar.bz2 

2. Copy the untarred PDK 'asap5PDK_r0p4' to an install area.

3. Change the environment variable value $PDK_DIR in the following files by
   replacing the string 'PDKDirectory' with the absolute path to the PDK
   directory (including the PDK directory name):

	./cdslib/setup/set_pdk_path.csh


* Instructions to the end-user for setting up a local PDK run directory
*--------------------------------------------------------------------------

   NOTE: Ask your course instructor/administrator for the path where the
   asap5 PDK is located. This path must replace any occurrence
   of the string 'PDKDirectory' so as to become the value for the
   environmental variable 'PDK_DIR' that you will need to use below for setting
   up the local PDK run directory.

   NOTE: Once the local PDK run directory has been setup, a user will only
   need to repeat steps 4. and 5. to start Virtuoso.

1. Create a local directory, from whence you intend to run the PDK, under
   your home directory. This can be accomplished by using the following
   command for instance: 

   cd ; mkdir asap5_rundir


2. Set the environmental variable PDK_DIR using the following command, so
   that it points to the asap5 PDK directory:

   setenv PDK_DIR PDKDirectory


3. Go to the run directory created in the above step. Then use the
   following command : 

   source $PDK_DIR/cdslib/setup/setup_asap5.csh 


   NOTE: Source the aforementioned script just once when first setting up
   the local directory. You will not need to source this again when
   starting Virtuoso. If you do, then your old 'cds.lib' file will be
   replaced with a new one and all the user-defined libraries will be
   removed--which you will then need to define again. 

   Sourcing this script will copy all the necessary files and directories,
   such the Calibre directories and SVRF rule files, HSpice models, cds.lib,
   .cdsinit, .cdsenv, and set_pdk_path.csh file, required to use the PDK, into your
   run directory.

4. Ensure that you are in the PDK run directory created in step 1.
   Also, ensure that you have sourced any startup scripts required for the
   various Cadence, Mentor Graphics, and Synopsys tools.
   Then type the following command.

   source set_pdk_path.csh

   Note that the above file also contains the environmental variables to
   specify the metal grids offsets from either X or Y axis, depending on the
   metal routing direction. The default offset value is 0 nm. To offset a
   particular grid by 'p' nm, specify the variable value as p*10. Thus, for an
   offset of 24 nm, the corresponding variable value is 240.

5. Start Virtuoso by typing:

   virtuoso &

*--------------------------------------------------------------------------
   NOTES 
*--------------------------------------------------------------------------

1. Well and substrate (p_sub) pins may be used as well/substrate tap
   substitutes for convenience when executing layout versus schematic (LVS)
   check at standard cell level. This requires connecting the pins 'VDD' and
   'VSS' by name through the use of LVS options. However, instead of
   employing these pins, physical substrate and well taps must be used at
   stipulated distances for latchup prevention when executing LVS at upper
   levels of a design hierarchy.
2. The Calibre parasitic extraction deck and runset provided with the PDK
   are meant for use with Calibre xACT 3D. 
