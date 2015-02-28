ifeq ($(strip $(CommonTools/ParticleFlow)),)
ALL_COMMONRULES += src_CommonTools_ParticleFlow_src
src_CommonTools_ParticleFlow_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_CommonTools_ParticleFlow_src,src/CommonTools/ParticleFlow/src,LIBRARY))
CommonToolsParticleFlow := self/CommonTools/ParticleFlow
CommonTools/ParticleFlow := CommonToolsParticleFlow
CommonToolsParticleFlow_files := $(patsubst src/CommonTools/ParticleFlow/src/%,%,$(wildcard $(foreach dir,src/CommonTools/ParticleFlow/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
CommonToolsParticleFlow_BuildFile    := $(WORKINGDIR)/cache/bf/src/CommonTools/ParticleFlow/BuildFile
CommonToolsParticleFlow_LOC_USE   := self DataFormats/Common DataFormats/ParticleFlowCandidate DataFormats/EgammaCandidates DataFormats/METReco DataFormats/JetReco DataFormats/PatCandidates rootmath FWCore/ParameterSet
CommonToolsParticleFlow_EX_LIB   := CommonToolsParticleFlow
CommonToolsParticleFlow_EX_USE   := $(CommonToolsParticleFlow_LOC_USE)
CommonToolsParticleFlow_PACKAGE := self/src/CommonTools/ParticleFlow/src
ALL_PRODS += CommonToolsParticleFlow
CommonToolsParticleFlow_INIT_FUNC        += $$(eval $$(call Library,CommonToolsParticleFlow,src/CommonTools/ParticleFlow/src,src_CommonTools_ParticleFlow_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(CommonToolsParticleFlow_files_exts),$(CommonToolsParticleFlow_files_exts),$(SRC_FILES_SUFFIXES))))
endif
