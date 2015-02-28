ifeq ($(strip $(CATopJetTagger)),)
CATopJetTagger_files := $(patsubst src/TopQuarkAnalysis/TopPairBSM/plugins/%,%,$(foreach file,CATopJetTagger.cc,$(eval xfile:=$(wildcard src/TopQuarkAnalysis/TopPairBSM/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopQuarkAnalysis/TopPairBSM/plugins/$(file). Please fix src/TopQuarkAnalysis/TopPairBSM/plugins/BuildFile.))))
CATopJetTagger_files_exts := $(sort $(patsubst .%,%,$(suffix $(CATopJetTagger_files))))
CATopJetTagger := self/src/TopQuarkAnalysis/TopPairBSM/plugins
CATopJetTagger_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopPairBSM/plugins/BuildFile
CATopJetTagger_LOC_USE   := self AnalysisDataFormats/TopObjects DataFormats/Candidate DataFormats/Common DataFormats/PatCandidates DataFormats/BeamSpot DataFormats/Math FWCore/Framework FWCore/ParameterSet TopQuarkAnalysis/TopTools rootcore root TopQuarkAnalysis/TopPairBSM
CATopJetTagger_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,CATopJetTagger,CATopJetTagger,$(SCRAMSTORENAME_LIB)))
CATopJetTagger_PACKAGE := self/src/TopQuarkAnalysis/TopPairBSM/plugins
ALL_PRODS += CATopJetTagger
CATopJetTagger_INIT_FUNC        += $$(eval $$(call Library,CATopJetTagger,src/TopQuarkAnalysis/TopPairBSM/plugins,src_TopQuarkAnalysis_TopPairBSM_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(CATopJetTagger_files_exts),$(CATopJetTagger_files_exts),$(SRC_FILES_SUFFIXES))))
else
$(eval $(call MultipleWarningMsg,CATopJetTagger,src/TopQuarkAnalysis/TopPairBSM/plugins))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_TopPairBSM_plugins
src_TopQuarkAnalysis_TopPairBSM_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopPairBSM_plugins,src/TopQuarkAnalysis/TopPairBSM/plugins,PLUGINS))
