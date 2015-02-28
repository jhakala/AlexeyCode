ifeq ($(strip $(CommonTools/RecoUtils)),)
ALL_COMMONRULES += src_CommonTools_RecoUtils_src
src_CommonTools_RecoUtils_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_CommonTools_RecoUtils_src,src/CommonTools/RecoUtils/src,LIBRARY))
CommonToolsRecoUtils := self/CommonTools/RecoUtils
CommonTools/RecoUtils := CommonToolsRecoUtils
CommonToolsRecoUtils_files := $(patsubst src/CommonTools/RecoUtils/src/%,%,$(wildcard $(foreach dir,src/CommonTools/RecoUtils/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
CommonToolsRecoUtils_BuildFile    := $(WORKINGDIR)/cache/bf/src/CommonTools/RecoUtils/BuildFile
CommonToolsRecoUtils_LOC_USE   := self DataFormats/Common DataFormats/EgammaCandidates DataFormats/L1GlobalTrigger DataFormats/RecoCandidate DataFormats/Scalers DataFormats/TrackReco DataFormats/VertexReco DataFormats/ParticleFlowReco L1Trigger/GlobalTriggerAnalyzer MagneticField/Records MagneticField/Engine HLTrigger/HLTcore RecoEgamma/EgammaTools RecoVertex/KinematicFit RecoVertex/KinematicFitPrimitives rootrflx TrackingTools/TransientTrack TrackingTools/IPTools TrackingTools/Records FWCore/Framework
CommonToolsRecoUtils_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,CommonToolsRecoUtilsCapabilities,CommonToolsRecoUtils,$(SCRAMSTORENAME_LIB)))
CommonToolsRecoUtils_PRE_INIT_FUNC += $$(eval $$(call LCGDict,CommonToolsRecoUtils,0,classes,$(LOCALTOP)/src/CommonTools/RecoUtils/src/classes.h,$(LOCALTOP)/src/CommonTools/RecoUtils/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
CommonToolsRecoUtils_EX_LIB   := CommonToolsRecoUtils
CommonToolsRecoUtils_EX_USE   := $(CommonToolsRecoUtils_LOC_USE)
CommonToolsRecoUtils_PACKAGE := self/src/CommonTools/RecoUtils/src
ALL_PRODS += CommonToolsRecoUtils
CommonToolsRecoUtils_INIT_FUNC        += $$(eval $$(call Library,CommonToolsRecoUtils,src/CommonTools/RecoUtils/src,src_CommonTools_RecoUtils_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(CommonToolsRecoUtils_files_exts),$(CommonToolsRecoUtils_files_exts),$(SRC_FILES_SUFFIXES))))
endif
