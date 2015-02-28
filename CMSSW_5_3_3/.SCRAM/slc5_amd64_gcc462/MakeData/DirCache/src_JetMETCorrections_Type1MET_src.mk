ifeq ($(strip $(JetMETCorrections/Type1MET)),)
ALL_COMMONRULES += src_JetMETCorrections_Type1MET_src
src_JetMETCorrections_Type1MET_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_JetMETCorrections_Type1MET_src,src/JetMETCorrections/Type1MET/src,LIBRARY))
JetMETCorrectionsType1MET := self/JetMETCorrections/Type1MET
JetMETCorrections/Type1MET := JetMETCorrectionsType1MET
JetMETCorrectionsType1MET_files := $(patsubst src/JetMETCorrections/Type1MET/src/%,%,$(wildcard $(foreach dir,src/JetMETCorrections/Type1MET/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
JetMETCorrectionsType1MET_BuildFile    := $(WORKINGDIR)/cache/bf/src/JetMETCorrections/Type1MET/BuildFile
JetMETCorrectionsType1MET_LOC_USE   := self FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities CondFormats/EgammaObjects DataFormats/Candidate DataFormats/JetReco DataFormats/ParticleFlowCandidate DataFormats/Math DataFormats/METReco DataFormats/MuonReco DataFormats/TauReco DataFormats/VertexReco JetMETCorrections/Objects root
JetMETCorrectionsType1MET_EX_LIB   := JetMETCorrectionsType1MET
JetMETCorrectionsType1MET_EX_USE   := $(JetMETCorrectionsType1MET_LOC_USE)
JetMETCorrectionsType1MET_PACKAGE := self/src/JetMETCorrections/Type1MET/src
ALL_PRODS += JetMETCorrectionsType1MET
JetMETCorrectionsType1MET_INIT_FUNC        += $$(eval $$(call Library,JetMETCorrectionsType1MET,src/JetMETCorrections/Type1MET/src,src_JetMETCorrections_Type1MET_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(JetMETCorrectionsType1MET_files_exts),$(JetMETCorrectionsType1MET_files_exts),$(SRC_FILES_SUFFIXES))))
endif
