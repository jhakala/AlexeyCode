ifeq ($(strip $(CommonTools/RecoAlgos)),)
ALL_COMMONRULES += src_CommonTools_RecoAlgos_src
src_CommonTools_RecoAlgos_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_CommonTools_RecoAlgos_src,src/CommonTools/RecoAlgos/src,LIBRARY))
CommonToolsRecoAlgos := self/CommonTools/RecoAlgos
CommonTools/RecoAlgos := CommonToolsRecoAlgos
CommonToolsRecoAlgos_files := $(patsubst src/CommonTools/RecoAlgos/src/%,%,$(wildcard $(foreach dir,src/CommonTools/RecoAlgos/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
CommonToolsRecoAlgos_BuildFile    := $(WORKINGDIR)/cache/bf/src/CommonTools/RecoAlgos/BuildFile
CommonToolsRecoAlgos_LOC_USE   := self SimGeneral/HepPDTRecord DataFormats/RecoCandidate FWCore/Framework FWCore/ParameterSet DataFormats/TrackReco DataFormats/MuonReco DataFormats/TrackingRecHit DataFormats/SiStripCluster DataFormats/SiPixelCluster DataFormats/TrackerRecHit2D DataFormats/METReco
CommonToolsRecoAlgos_EX_LIB   := CommonToolsRecoAlgos
CommonToolsRecoAlgos_EX_USE   := $(CommonToolsRecoAlgos_LOC_USE)
CommonToolsRecoAlgos_PACKAGE := self/src/CommonTools/RecoAlgos/src
ALL_PRODS += CommonToolsRecoAlgos
CommonToolsRecoAlgos_INIT_FUNC        += $$(eval $$(call Library,CommonToolsRecoAlgos,src/CommonTools/RecoAlgos/src,src_CommonTools_RecoAlgos_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(CommonToolsRecoAlgos_files_exts),$(CommonToolsRecoAlgos_files_exts),$(SRC_FILES_SUFFIXES))))
endif
