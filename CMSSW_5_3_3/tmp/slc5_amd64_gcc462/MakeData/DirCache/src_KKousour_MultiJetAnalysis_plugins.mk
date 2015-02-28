ifeq ($(strip $(KKousourMultiJetAnalysisPlugins)),)
KKousourMultiJetAnalysisPlugins_files := $(patsubst src/KKousour/MultiJetAnalysis/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/KKousour/MultiJetAnalysis/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/KKousour/MultiJetAnalysis/plugins/$(file). Please fix src/KKousour/MultiJetAnalysis/plugins/BuildFile.))))
KKousourMultiJetAnalysisPlugins_files_exts := $(sort $(patsubst .%,%,$(suffix $(KKousourMultiJetAnalysisPlugins_files))))
KKousourMultiJetAnalysisPlugins := self/src/KKousour/MultiJetAnalysis/plugins
KKousourMultiJetAnalysisPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/KKousour/MultiJetAnalysis/plugins/BuildFile
KKousourMultiJetAnalysisPlugins_LOC_USE   := self rootcore rootrflx RecoMET/METAlgorithms JetMETCorrections/Algorithms RecoJets/JetAlgorithms DataFormats/JetReco DataFormats/VertexReco DataFormats/Candidate DataFormats/Common DataFormats/HepMCCandidate DataFormats/TrackCandidate DataFormats/HLTReco PhysicsTools/UtilAlgos JetMETCorrections/Objects FWCore/Framework FWCore/PluginManager FWCore/ServiceRegistry clhep root HLTrigger/HLTcore L1Trigger/GlobalTriggerAnalyzer CondFormats/L1TObjects CondFormats/DataRecord
KKousourMultiJetAnalysisPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,KKousourMultiJetAnalysisPlugins,KKousourMultiJetAnalysisPlugins,$(SCRAMSTORENAME_LIB)))
KKousourMultiJetAnalysisPlugins_PACKAGE := self/src/KKousour/MultiJetAnalysis/plugins
ALL_PRODS += KKousourMultiJetAnalysisPlugins
KKousourMultiJetAnalysisPlugins_INIT_FUNC        += $$(eval $$(call Library,KKousourMultiJetAnalysisPlugins,src/KKousour/MultiJetAnalysis/plugins,src_KKousour_MultiJetAnalysis_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(KKousourMultiJetAnalysisPlugins_files_exts),$(KKousourMultiJetAnalysisPlugins_files_exts),$(SRC_FILES_SUFFIXES))))
else
$(eval $(call MultipleWarningMsg,KKousourMultiJetAnalysisPlugins,src/KKousour/MultiJetAnalysis/plugins))
endif
ALL_COMMONRULES += src_KKousour_MultiJetAnalysis_plugins
src_KKousour_MultiJetAnalysis_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_KKousour_MultiJetAnalysis_plugins,src/KKousour/MultiJetAnalysis/plugins,PLUGINS))
