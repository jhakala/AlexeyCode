ifeq ($(strip $(AnalysisCodeTLBSM/BHAnalyzerTLBSM)),)
ALL_COMMONRULES += src_AnalysisCodeTLBSM_BHAnalyzerTLBSM_src
src_AnalysisCodeTLBSM_BHAnalyzerTLBSM_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_AnalysisCodeTLBSM_BHAnalyzerTLBSM_src,src/AnalysisCodeTLBSM/BHAnalyzerTLBSM/src,LIBRARY))
AnalysisCodeTLBSMBHAnalyzerTLBSM := self/AnalysisCodeTLBSM/BHAnalyzerTLBSM
AnalysisCodeTLBSM/BHAnalyzerTLBSM := AnalysisCodeTLBSMBHAnalyzerTLBSM
AnalysisCodeTLBSMBHAnalyzerTLBSM_files := $(patsubst src/AnalysisCodeTLBSM/BHAnalyzerTLBSM/src/%,%,$(wildcard $(foreach dir,src/AnalysisCodeTLBSM/BHAnalyzerTLBSM/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
AnalysisCodeTLBSMBHAnalyzerTLBSM_BuildFile    := $(WORKINGDIR)/cache/bf/src/AnalysisCodeTLBSM/BHAnalyzerTLBSM/BuildFile
AnalysisCodeTLBSMBHAnalyzerTLBSM_LOC_USE   := self FWCore/Framework FWCore/PluginManager FWCore/ParameterSet FWCore/MessageLogger FWCore/MessageService FWCore/Utilities DataFormats/Common DataFormats/PatCandidates PhysicsTools/PatAlgos PhysicsTools/PatUtils CommonTools/UtilAlgos root Geometry/CaloGeometry Geometry/CaloTopology RecoEcal/EgammaCoreTools EventFilter/HcalRawToDigi
AnalysisCodeTLBSMBHAnalyzerTLBSM_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,AnalysisCodeTLBSMBHAnalyzerTLBSM,AnalysisCodeTLBSMBHAnalyzerTLBSM,$(SCRAMSTORENAME_LIB)))
AnalysisCodeTLBSMBHAnalyzerTLBSM_PACKAGE := self/src/AnalysisCodeTLBSM/BHAnalyzerTLBSM/src
ALL_PRODS += AnalysisCodeTLBSMBHAnalyzerTLBSM
AnalysisCodeTLBSMBHAnalyzerTLBSM_INIT_FUNC        += $$(eval $$(call Library,AnalysisCodeTLBSMBHAnalyzerTLBSM,src/AnalysisCodeTLBSM/BHAnalyzerTLBSM/src,src_AnalysisCodeTLBSM_BHAnalyzerTLBSM_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(AnalysisCodeTLBSMBHAnalyzerTLBSM_files_exts),$(AnalysisCodeTLBSMBHAnalyzerTLBSM_files_exts),$(SRC_FILES_SUFFIXES))))
endif
