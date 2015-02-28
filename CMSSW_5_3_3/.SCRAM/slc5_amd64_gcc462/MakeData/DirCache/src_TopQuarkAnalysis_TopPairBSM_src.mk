ifeq ($(strip $(TopQuarkAnalysis/TopPairBSM)),)
ALL_COMMONRULES += src_TopQuarkAnalysis_TopPairBSM_src
src_TopQuarkAnalysis_TopPairBSM_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopPairBSM_src,src/TopQuarkAnalysis/TopPairBSM/src,LIBRARY))
TopQuarkAnalysisTopPairBSM := self/TopQuarkAnalysis/TopPairBSM
TopQuarkAnalysis/TopPairBSM := TopQuarkAnalysisTopPairBSM
TopQuarkAnalysisTopPairBSM_files := $(patsubst src/TopQuarkAnalysis/TopPairBSM/src/%,%,$(wildcard $(foreach dir,src/TopQuarkAnalysis/TopPairBSM/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
TopQuarkAnalysisTopPairBSM_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopPairBSM/BuildFile
TopQuarkAnalysisTopPairBSM_LOC_USE   := self fastjet ktjet DataFormats/JetReco DataFormats/Candidate DataFormats/Common DataFormats/PatCandidates FWCore/Framework FWCore/ParameterSet AnalysisDataFormats/TopObjects TopQuarkAnalysis/TopTools PhysicsTools/HepMCCandAlgos rootcore root
TopQuarkAnalysisTopPairBSM_EX_LIB   := TopQuarkAnalysisTopPairBSM
TopQuarkAnalysisTopPairBSM_EX_USE   := $(TopQuarkAnalysisTopPairBSM_LOC_USE)
TopQuarkAnalysisTopPairBSM_PACKAGE := self/src/TopQuarkAnalysis/TopPairBSM/src
ALL_PRODS += TopQuarkAnalysisTopPairBSM
TopQuarkAnalysisTopPairBSM_INIT_FUNC        += $$(eval $$(call Library,TopQuarkAnalysisTopPairBSM,src/TopQuarkAnalysis/TopPairBSM/src,src_TopQuarkAnalysis_TopPairBSM_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(TopQuarkAnalysisTopPairBSM_files_exts),$(TopQuarkAnalysisTopPairBSM_files_exts),$(SRC_FILES_SUFFIXES))))
endif
