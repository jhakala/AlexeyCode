ifeq ($(strip $(DPGAnalysis/SiStripTools)),)
ALL_COMMONRULES += src_DPGAnalysis_SiStripTools_src
src_DPGAnalysis_SiStripTools_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_DPGAnalysis_SiStripTools_src,src/DPGAnalysis/SiStripTools/src,LIBRARY))
DPGAnalysisSiStripTools := self/DPGAnalysis/SiStripTools
DPGAnalysis/SiStripTools := DPGAnalysisSiStripTools
DPGAnalysisSiStripTools_files := $(patsubst src/DPGAnalysis/SiStripTools/src/%,%,$(wildcard $(foreach dir,src/DPGAnalysis/SiStripTools/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
DPGAnalysisSiStripTools_BuildFile    := $(WORKINGDIR)/cache/bf/src/DPGAnalysis/SiStripTools/BuildFile
DPGAnalysisSiStripTools_LOC_USE   := self root rootrflx FWCore/MessageLogger FWCore/Utilities FWCore/ServiceRegistry FWCore/Framework FWCore/ParameterSet CommonTools/UtilAlgos DataFormats/Luminosity DataFormats/Provenance DataFormats/SiStripDigi DataFormats/SiStripCluster DataFormats/SiPixelCluster DataFormats/Scalers DataFormats/Common DataFormats/DetId DataFormats/SiStripDetId DataFormats/TrackReco DataFormats/TrackerCommon CondFormats/DataRecord CondFormats/SiStripObjects CalibFormats/SiStripObjects CalibTracker/Records SimDataFormats/PileupSummaryInfo
DPGAnalysisSiStripTools_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,DPGAnalysisSiStripToolsCapabilities,DPGAnalysisSiStripTools,$(SCRAMSTORENAME_LIB)))
DPGAnalysisSiStripTools_PRE_INIT_FUNC += $$(eval $$(call LCGDict,DPGAnalysisSiStripTools,0,classes,$(LOCALTOP)/src/DPGAnalysis/SiStripTools/src/classes.h,$(LOCALTOP)/src/DPGAnalysis/SiStripTools/src/classes_def.xml,$(SCRAMSTORENAME_LIB), --fail_on_warnings,Capabilities))
DPGAnalysisSiStripTools_EX_LIB   := DPGAnalysisSiStripTools
DPGAnalysisSiStripTools_EX_USE   := $(DPGAnalysisSiStripTools_LOC_USE)
DPGAnalysisSiStripTools_PACKAGE := self/src/DPGAnalysis/SiStripTools/src
ALL_PRODS += DPGAnalysisSiStripTools
DPGAnalysisSiStripTools_INIT_FUNC        += $$(eval $$(call Library,DPGAnalysisSiStripTools,src/DPGAnalysis/SiStripTools/src,src_DPGAnalysis_SiStripTools_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(DPGAnalysisSiStripTools_files_exts),$(DPGAnalysisSiStripTools_files_exts),$(SRC_FILES_SUFFIXES))))
endif
