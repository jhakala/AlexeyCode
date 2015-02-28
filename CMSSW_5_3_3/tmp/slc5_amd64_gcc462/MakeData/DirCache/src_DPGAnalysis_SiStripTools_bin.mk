ifeq ($(strip $(DPGAnalysisSiStripToolsMacros)),)
DPGAnalysisSiStripToolsMacros_files := $(patsubst src/DPGAnalysis/SiStripTools/bin/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/DPGAnalysis/SiStripTools/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/DPGAnalysis/SiStripTools/bin/$(file). Please fix src/DPGAnalysis/SiStripTools/bin/BuildFile.))))
DPGAnalysisSiStripToolsMacros_files_exts := $(sort $(patsubst .%,%,$(suffix $(DPGAnalysisSiStripToolsMacros_files))))
DPGAnalysisSiStripToolsMacros := self/src/DPGAnalysis/SiStripTools/bin
DPGAnalysisSiStripToolsMacros_BuildFile    := $(WORKINGDIR)/cache/bf/src/DPGAnalysis/SiStripTools/bin/BuildFile
DPGAnalysisSiStripToolsMacros_LOC_USE   := self root rootcintex rootgraphics
DPGAnalysisSiStripToolsMacros_PRE_INIT_FUNC += $$(eval $$(call RootDict,DPGAnalysisSiStripToolsMacros,src/DPGAnalysis/SiStripTools/bin, DPGAnalysisSiStripToolsMacrosLinkDef.h))
DPGAnalysisSiStripToolsMacros_PACKAGE := self/src/DPGAnalysis/SiStripTools/bin
ALL_PRODS += DPGAnalysisSiStripToolsMacros
DPGAnalysisSiStripToolsMacros_INIT_FUNC        += $$(eval $$(call Library,DPGAnalysisSiStripToolsMacros,src/DPGAnalysis/SiStripTools/bin,src_DPGAnalysis_SiStripTools_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(DPGAnalysisSiStripToolsMacros_files_exts),$(DPGAnalysisSiStripToolsMacros_files_exts),$(SRC_FILES_SUFFIXES))))
else
$(eval $(call MultipleWarningMsg,DPGAnalysisSiStripToolsMacros,src/DPGAnalysis/SiStripTools/bin))
endif
ALL_COMMONRULES += src_DPGAnalysis_SiStripTools_bin
src_DPGAnalysis_SiStripTools_bin_INIT_FUNC += $$(eval $$(call CommonProductRules,src_DPGAnalysis_SiStripTools_bin,src/DPGAnalysis/SiStripTools/bin,BINARY))
