# ASAP5

## PDK 

[ASAP5 PDK](https://github.com/The-OpenROAD-Project/asap5/tree/master/asap5PDK_r0p4)

*Current Version: 0.4*

[Instructions for setting-up the PDK](asap5PDK_r0p4/README_ASAP5PDK_INSTALL_230226b.txt)

Calibre Decks are not a part of this repository. They are yet to be
released. Release will be announced on this page.

[Calibre Usage Instructions](ASAP5PDK_r0p4/Calibre_Usage_Instructions.txt)

**If you use the ASAP5 PDK and/or transistor compact models in any published work, then
we would appreciate citation for the following articles:**

[V. Vashishtha, L. T. Clark, "ASAP5: A predictive PDK for the 5 nm node," Microelectronics Journal, vol. 126, pp. 105481, Aug. 2022.] (https://doi.org/10.1016/j.mejo.2022.105481)

[V. Vashishtha and L. T. Clark, “Comparing bulk-Si FinFET and gate-all-around FETs for the 5 nm technology node,” Microelectronics J., 2020.](https://doi.org/10.1016/j.mejo.2020.104942)

## License

ASAP5 PDK and libraries have a BSD 3-Clause license. 

## Contributors

**PDK:**

Vinay Vashishtha, Prof. Lawrence T. Clark, 

**Standard Cell Library:**

We gratefully acknowledge help on the standard cell library layouts by
Bhargav Reddy Vemireddy, Sai Aishwarya Batchu, Sai Charan Rajamani, Sai
Varun Krishna Tatipamula, and Abhilash Gangadhar.

**Acknowledgements:**

This work was partially funded by DARPA under contract HR0011-18-2-0032.

## Directory Structure

### PDK
|---asap5PDK_r0p4 \
    |   Calibre_Usage_Instructions.txt \
    |   README_ASAP5PDK_INSTALL_230226a.txt \
    |    \
    |---asap5ssc6p5t_01 \
    |    \
    |---calibre \
    |   |---ruledirs					: Contains Mentor Graphics Calibre SVRF rules used \
    |   |   |         					  for design rule check (DRC), layout-vs-schematic \
    |   |   |         					  (LVS), and parasitic extraction. \
    |   |   |---drc \
    |   |   |   |---drcRules_calibre_asap5.rul 		: File containing the asap5 design rules for use \
    |   |   |    					  with Mentor Graphics Calibre DRC. \
    |   |   |---lvs \
    |   |   |   |---lvsRules_calibre_asap5.rul 		: File containing the asap5 LVS rules for use with \
    |   |   |						  Mentor Graphics Calibre LVS. \
    |   |   |---rcx \
    |   |            \
    |   |---rundirs \
    |       |---drc \
    |       |   |---runset_dir_drc/ \
    |       |       |---drcRunset_asap5 		: File created by Calibre Interactive to store the settings \
    |       |       					  specified in the DRC interface. This particular runset \
    |       |       					  points to the supplied DRC rule file.                         \
    |       |---lvs \
    |       |   |---runset_dir_lvs \
    |       |       |---lvsRunset_asap5 		: File created by Calibre Interactive to store the settings \
    |       |       	      				  specified in the LVS interface. This particular runset \
    |       |       	      				  points to the supplied LVS rule file. \
    |       |            \
    |       |---pex \
    |       |   |---runset_dir_pex \
    |       |       |---pexRunset_asap5 		: File created by Calibre Interactive to store the settings \
    |       |       	                                  specified in the PEX interface. This particular runset \
    |       |       	      				  points to the supplied parasitic extraction rule files. \
    |                    \
    |---cdslib \
    |   |---asap5_TechLib				: Soft-link to the ASAP5 technology library. \
    |   |    \
    |   |---asap5_TechLib_05				: asap5 technology library. \
    |   |   |                  				  (created using the technology file 'asap5_TechFile_v04.tf') \
    |   |   |                  				  Any user-created design library must be attached to this technology library for  \
    |   |   |                  				  designing with the asap5 PDK. It also contains asap5 transistors supplied for use \
    |   |   |                  				  during transistor-level design. Both N-type and P-type MOSFETs come in four \
    |   |   |                  				  Vt flavors, viz. regular Vt (RVT), low Vt (LVT), super-low Vt (SLVT), and \
    |   |   |                  				  SRAM Vt. The latter is a special Vt layer provided for use in SRAMs. The \
    |   |   |                  				  view 'symbol' must be used for the purpose of device instantiation. Defined \
    |   |   |                  				  as 'asap5_TechLib' in the cds.lib. \
    |   |   | \
    |   |   | \
    |   |---setup \
    |   |       cds.lib       				: Any libraries defined in this file appear in the Cadence \
    |   |               				 'Library Manager' window. Libraries are defined using the \
    |   |               				 keyword 'DEFINE', the library name, and path to that library.  \
    |   |               				 This particular file is copied to the user's local run \
    |   |               				 directory upon sourcing the setup script. It defines the \
    |   |               				 asap5 technology as well as standard cell library, and a \
    |   |               				 library 'sample'—bundled with the Cadence design \
    |   |               				 suite—containing logic gate symbols. It also includes another \
    |   |               				 cds.lib bundled with Cadence design suite, which defines the \
    |   |               				 following libraries from Cadence: 'cdsDefTechLib', \
    |   |               				 'analogLib', 'functional', 'rfLib', 'rfExamples', 'ahdlLib', \
    |   |               				 'basic', and 'US_8ths'. \
    |	| \
    |   |---cdsenv      				: Cadence environment variable file that allows for the \
    |   |             					  configuring of various Cadence environment related \
    |   |             					  settings. This particular cdsenv file also sets the x and y \
    |   |             					  snap spacing values, that specify the smallest incremental \
    |   |             					  amount by which the cursor moves in Cadence Virtuoso Layout \
    |   |             					  Editor, to 1 nm. \
    |	| \
    |   |---cdsinit					: Cadence initialization file containing SKILL code for \
    |   |              				          additional customization. Among other things, this particular \
    |   |              					  cdsinit file contains SKILL code that adds Calibre Interactive \
    |   |                 				  to the Virtuoso Layout Editor tool menu. \
    |	| \
    |   |---display.drf       				: asap5 PDK display resource file that specifies the manner, \
    |   |                   				  such as color and pattern, in which the PDK layers are \
    |   |                   				  displayed in Virtuoso. \
    |	| \
    |   |---setup_asap5.csh				: C Shell script to copy all the necessary files and \
    |   |                      				  directories, such the Calibre directories and SVRF rule files, \
    |   |                      				  HSpice models, cds.lib, .cdsinit, .cdsenv, and .cshrc file, \
    |   |                      				  required to use the PDK, into the user's local run directory. \
    |	| \
    |   |---set_pdk_path.csh				: C Shell script to specify PDK path and set metal grid offsets \
    |           					  in Calibre. \
    |            \
    |---docs						: Contains documents pertaining to the asap5 PDK. \
    |       asap5_pdk_mej_paper.pdf			  ASAP5 PDK publication in Elsevier Microelectronics Journal. \
    |        \
    |---models						: Contains Compact transistor models that will be \
    |                					  used in asap5 PDK. \
    |        \
        |---hspice \
	    | \
            |   asap5_ff.pm 				: Compact model for the asap5 transistors for simulation at the \
	    |               				  FF corner. \
	    | \
            |   asap5_fs.pm 				: Compact model for the asap5 transistors for simulation at the \
	    |               				  FS corner. \
	    | \
            |   asap5_sf.pm 				: Compact model for the asap5 transistors for simulation at the \
	    |               				  SF corner. \
	    | \
            |   asap5_ss.pm 				: Compact model for the asap5 transistors for simulation at the \
	    |               				  SS corner. \
	    | \
            |   asap5_tt.pm 				: Compact model for the asap5 transistors for simulation at the \
	    |               				  TT corner. \
            |    \
            |---allvt_cgp44_210623a \
                |---nwfet				: Contains individual compact models by transistor Vt and device type \
