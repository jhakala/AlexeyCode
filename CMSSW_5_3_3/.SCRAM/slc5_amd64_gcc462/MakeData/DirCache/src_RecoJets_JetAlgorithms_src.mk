ifeq ($(strip $(RecoJets/JetAlgorithms)),)
ALL_COMMONRULES += src_RecoJets_JetAlgorithms_src
src_RecoJets_JetAlgorithms_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_RecoJets_JetAlgorithms_src,src/RecoJets/JetAlgorithms/src,LIBRARY))
RecoJetsJetAlgorithms := self/RecoJets/JetAlgorithms
RecoJets/JetAlgorithms := RecoJetsJetAlgorithms
RecoJetsJetAlgorithms_files := $(patsubst src/RecoJets/JetAlgorithms/src/%,%,$(wildcard $(foreach dir,src/RecoJets/JetAlgorithms/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
RecoJetsJetAlgorithms_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoJets/JetAlgorithms/BuildFile
RecoJetsJetAlgorithms_LOC_USE   := self fastjet ktjet DataFormats/JetReco DataFormats/Candidate FWCore/Framework SimDataFormats/Vertex SimDataFormats/Track DataFormats/HepMCCandidate
RecoJetsJetAlgorithms_EX_LIB   := RecoJetsJetAlgorithms
RecoJetsJetAlgorithms_EX_USE   := $(RecoJetsJetAlgorithms_LOC_USE)
RecoJetsJetAlgorithms_PACKAGE := self/src/RecoJets/JetAlgorithms/src
ALL_PRODS += RecoJetsJetAlgorithms
RecoJetsJetAlgorithms_INIT_FUNC        += $$(eval $$(call Library,RecoJetsJetAlgorithms,src/RecoJets/JetAlgorithms/src,src_RecoJets_JetAlgorithms_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(RecoJetsJetAlgorithms_files_exts),$(RecoJetsJetAlgorithms_files_exts),$(SRC_FILES_SUFFIXES))))
endif
