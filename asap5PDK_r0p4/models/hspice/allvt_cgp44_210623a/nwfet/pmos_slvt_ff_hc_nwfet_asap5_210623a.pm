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

***************************************************************************
** ASAP5
** Hspice modelcard
** 210623a
** NW (geomod = 3)
** PMOS
** SLVT
** FF
** Lg = 16 nm, Leff = 14 nm, spacer = 5 nm, RSD length = 16 nm, CGP = 44 nm, finp = 24 nm, VDD = 0.7 V
.model pmos_slvt pmos level = 72 
************************************************************
*                         general                          *
************************************************************
+version = 107             bulkmod = 1               igcmod  = 1               igbmod  = 0             
+gidlmod = 1               iimod   = 0               geomod  = 3               rdsmod  = 0             
+rgatemod= 0               rgeomod = 0               shmod   = 0               nqsmod  = 0             
+coremod = 0               cgeomod = 0               capmod  = 0               tnom    = 25            
+eot     = 7.5e-010          eotbox  = 1.4e-007        eotacc  = 3e-010          d    = 8.50e-009      
+toxp    = 2.1e-009        nbody   = 1e+022          phig    = 4.430       epsrox  = 3.9           
+epsrsub = 11.9            easub   = 4.05            ni0sub  = 1.1e+016        bg0sub  = 1.17          
+nc0sub  = 2.86e+025       nsd     = 2e+026          ngate   = 0               nseg    = 5             
+l       = 1.4e-08	   xl      = -0.70E-009	     lint    = -2e-009         dlc     = 0             
+dlbin   = 0               hfin    = 32e-09	     deltaw  = 0               deltawcv= 0             
+sdterm  = 0               epsrsp  = 3.9	     lsp    = 7e-009
+toxg    = 1.85e-009   
************************************************************
*                            dc                            *
************************************************************
+cit     = 0               cdsc    = 0.009       cdscd   = 0.009          dvt0    = 0.075          
+dvt1    = 0.029       dvt1ss  = 0.37
+dvtp0    = 0.062     dvtp1    = 0.0     
+phin    = 0.0            eta0    = 8.356e-06       dsub    = 0.00228          
+k1rsce  = 0               lpe0    = 0               dvtshift= 0.0               qmfactor= 0.0           
+etaqm   = 0.54            qm0     = 0.001           pqm     = 0.66            u0      = 0.0414        
+etamob  = 0.0     up      = 1e-9            ua      = 0.0            eu      = 0.0          
+ud      = 0               ucs     = 1               rdswmin = 0               rdsw    = 57.475           
+wr      = 1               rswmin  = 0.25            rdwmin  = 0               rshs    = 0             
+rshd    = 0               vsat    = 73000       deltavsat= 0.6935 ksativ  = 2             
+mexp    = 6.8       ptwg    = 20              pclm    = 0.0       pclmg   = 0             
+pdibl1  = 0               pdibl2  = 0               drout   = 0.0      pvag    = 0             
+fpitch  = 2.4e-008        rth0    = 0.225           cth0    = 1.243e-006      wth0    = 2.6e-007      
+lcdscd  = 0               lcdscdr = 0            lrdsw   = 1.3             lvsat   = 0             
+lrsd    = 0               a1      = 0.3               a2      = 0.1 
+k0      = 0.0032               k0si    = 1               k1si    = 1.5
* +thetasce = 1.2    
************************************************************
*                         leakage                          *
************************************************************
+aigc    = 0.014           bigc    = 0.005           cigc    = 0.25            dlcigs  = 1e-009        
+dlcigd  = 1e-009          aigs    = 0.0115          aigd    = 0.0115          bigs    = 0.00332       
+bigd    = 0.00332         cigs    = 0.07            cigd    = 0.07            poxedge = 1.1           
+agidl   = 6.37e-014        agisl   = 6.37e-014        bgidl   = 10000000        bgisl   = 1.7e8      
+egidl   = 0.25            egisl   = 0.25          
************************************************************
*                            rf                            *
************************************************************
************************************************************
*                         junction                         *
************************************************************
************************************************************
*                       capacitance                        *
************************************************************
+cfs     = 0               cfd     = 0               cgso    = 1.088e-010        cgdo    = 1.088e-010      
+cgsl    = 0               cgdl    = 0               ckappas = 0.6             ckappad = 0.6           
+cgbo    = 0               cgbl    = 0             
************************************************************
*                       temperature                        *
************************************************************
+tbgasub = 0.000473        tbgbsub = 636             kt1     = 0               kt1l    = 0             
+ute     = -0.7            utl     = 0               ua1     = 0.001032        ud1     = 0             
+ucste   = -0.004775       at      = 0.001           ptwgt   = 0.004           tmexp   = 0             
+prt     = 0               tgidl   = -0.007          igt     = 2.5           
************************************************************
*                          noise                           *
************************************************************
**
