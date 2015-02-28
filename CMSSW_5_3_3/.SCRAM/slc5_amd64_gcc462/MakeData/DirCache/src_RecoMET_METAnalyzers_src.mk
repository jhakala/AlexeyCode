ifeq ($(strip $(RecoMET/METAnalyzers)),)
ALL_COMMONRULES += src_RecoMET_METAnalyzers_src
src_RecoMET_METAnalyzers_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_RecoMET_METAnalyzers_src,src/RecoMET/METAnalyzers/src,LIBRARY))
RecoMETMETAnalyzers := self/RecoMET/METAnalyzers
RecoMET/METAnalyzers := RecoMETMETAnalyzers
RecoMETMETAnalyzers_files := $(patsubst src/RecoMET/METAnalyzers/src/%,%,$(wildcard $(foreach dir,src/RecoMET/METAnalyzers/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
RecoMETMETAnalyzers_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoMET/METAnalyzers/BuildFile
RecoMETMETAnalyzers_LOC_USE   := self DataFormats/METReco DataFormats/L1GlobalTrigger DataFormats/L1GlobalMuonTrigger TrackingTools/TrackAssociator FWCore/Framework root
RecoMETMETAnalyzers_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoMETMETAnalyzers,RecoMETMETAnalyzers,$(SCRAMSTORENAME_LIB)))
RecoMETMETAnalyzers_PACKAGE := self/src/RecoMET/METAnalyzers/src
ALL_PRODS += RecoMETMETAnalyzers
RecoMETMETAnalyzers_INIT_FUNC        += $$(eval $$(call Library,RecoMETMETAnalyzers,src/RecoMET/METAnalyzers/src,src_RecoMET_METAnalyzers_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(RecoMETMETAnalyzers_files_exts),$(RecoMETMETAnalyzers_files_exts),$(SRC_FILES_SUFFIXES))))
endif
