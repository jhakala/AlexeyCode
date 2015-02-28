ifeq ($(strip $(CommonToolsRecoAlgos_plugins)),)
CommonToolsRecoAlgos_plugins_files := $(patsubst src/CommonTools/RecoAlgos/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/CommonTools/RecoAlgos/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/CommonTools/RecoAlgos/plugins/$(file). Please fix src/CommonTools/RecoAlgos/plugins/BuildFile.))))
CommonToolsRecoAlgos_plugins_files_exts := $(sort $(patsubst .%,%,$(suffix $(CommonToolsRecoAlgos_plugins_files))))
CommonToolsRecoAlgos_plugins := self/src/CommonTools/RecoAlgos/plugins
CommonToolsRecoAlgos_plugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/CommonTools/RecoAlgos/plugins/BuildFile
CommonToolsRecoAlgos_plugins_LOC_USE   := self MagneticField/Engine FWCore/Framework FWCore/ParameterSet DataFormats/RecoCandidate DataFormats/EgammaCandidates DataFormats/EgammaReco DataFormats/MuonReco DataFormats/JetReco DataFormats/METReco DataFormats/HcalRecHit SimDataFormats/TrackingAnalysis TrackingTools/PatternTools CommonTools/Utils CommonTools/RecoAlgos MagneticField/Records Geometry/Records Geometry/TrackerGeometryBuilder
CommonToolsRecoAlgos_plugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,CommonToolsRecoAlgos_plugins,CommonToolsRecoAlgos_plugins,$(SCRAMSTORENAME_LIB)))
CommonToolsRecoAlgos_plugins_PACKAGE := self/src/CommonTools/RecoAlgos/plugins
ALL_PRODS += CommonToolsRecoAlgos_plugins
CommonToolsRecoAlgos_plugins_INIT_FUNC        += $$(eval $$(call Library,CommonToolsRecoAlgos_plugins,src/CommonTools/RecoAlgos/plugins,src_CommonTools_RecoAlgos_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(CommonToolsRecoAlgos_plugins_files_exts),$(CommonToolsRecoAlgos_plugins_files_exts),$(SRC_FILES_SUFFIXES))))
else
$(eval $(call MultipleWarningMsg,CommonToolsRecoAlgos_plugins,src/CommonTools/RecoAlgos/plugins))
endif
ALL_COMMONRULES += src_CommonTools_RecoAlgos_plugins
src_CommonTools_RecoAlgos_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_CommonTools_RecoAlgos_plugins,src/CommonTools/RecoAlgos/plugins,PLUGINS))
